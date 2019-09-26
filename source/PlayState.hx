package;

import djFlixel.CTRL;
import djFlixel.FLS;
import djFlixel.fx.BoxFader;
import djFlixel.gui.Align;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.effects.FlxFlicker;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.addons.text.FlxTypeText;
import flixel.math.FlxPoint;
import flixel.text.FlxText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;
import haxe.Json;
import ink.FlxStory;
import ink.runtime.Choice;
import openfl.Assets;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.addons.editors.pex.FlxPexParser;
import flixel.effects.particles.FlxEmitter;
import flixel.system.FlxSound;
import io.newgrounds.NG;
using flixel.util.FlxStringUtil;
using StringTools;

class PlayState extends FlxState
{
	var P:Dynamic;
	private var autoText:TypeTextTwo;
	private var continueCursor:FlxSprite;
	private var inkStory:FlxStory;
	private var highLight:FlxSprite;
	private var curSelected:Int = 0;
	private var grpChoices:FlxTypedGroup<FlxText>;
	private var grpChoicesBuffer:FlxTypedGroup<FlxText>;
	private var grpChoiceBGs:FlxTypedGroup<FlxSprite>;
	private var grpActors:FlxTypedGroup<Actor>;
	private var boxFade:BoxFader;
	private var WINDOWSIZE:FlxPoint = new FlxPoint(1920, 1080);
	private var prefix:String = "fulp";
	
	private var bg:FlxSprite;

	private var choicesOffsets:Float = 36;
	private var choiceMultiplier:Float = 1.5;

	private var curName:FlxText;

	private var blackBG:FlxSprite;
	private var initBlackY:Float = 0; // gets set later

	private var dialogueClean:String = "";

	private var choiceStroke:FlxTextFormat = new FlxTextFormat(FlxColor.RED, null, null, FlxColor.BLACK);

	private var emitter:FlxEmitter;
	
	override public function create():Void
	{
		FlxG.save.bind("File");
		P = FLS.JSON.playstate;
		
		bg = new FlxSprite(0, 0).makeGraphic(1, 1, FlxColor.TRANSPARENT);
		add(bg);

		var ng:NGio = new NGio(APIStuff.APIKEY, APIStuff.ENCKEY);
		
		//var overlay:FlxSprite = new FlxSprite().loadGraphic(AssetPaths.placeholderBG__png);
		//add(overlay);

		grpActors = new FlxTypedGroup<Actor>();
		add(grpActors);
		
		boxFade = new BoxFader(0, 0, WINDOWSIZE.x, WINDOWSIZE.y);
		boxFade.setColor(FlxColor.BLACK);
		add(boxFade);
		
		inkStory = new FlxStory(AssetPaths.daStory__json);
		inkStory.Continue();
		trace(inkStory.canContinue);
		trace(inkStory.path.componentsString);
		trace(inkStory.currentText);

		var textboxTexture = FlxAtlasFrames.fromSpriteSheetPacker(AssetPaths.dialogueBox__png, AssetPaths.dialogueBox__txt);

		var textY:Float = FlxG.height * 0.74;
		
		blackBG = new FlxSprite(5, textY - 60);
		blackBG.frames = textboxTexture;
		blackBG.setGraphicSize(Std.int(FlxG.width - 30));
		blackBG.updateHitbox();
		blackBG.alpha = 0.99;
		blackBG.animation.add("noname", [0]);
		blackBG.animation.add("name", [1]);
		blackBG.animation.play("name");
		initBlackY = blackBG.y;
		add(blackBG);

		emitter = new FlxEmitter(0, FlxG.height);
		FlxPexParser.parse(AssetPaths.particle__pex, AssetPaths.texture__png, emitter, 1);
		emitter.start(false, 0.2);
		//add(emitter);

		var fakeBold = new FlxTextFormat(FlxColor.BLACK, false, false, FlxColor.BLACK);
		var textFormat = new FlxTextFormat(FlxColor.WHITE, false, false, FlxColor.WHITE);

		curName = new FlxText(60, blackBG.y - 16, 190, "Test", 52);
		curName.autoSize = false;
		curName.alignment = CENTER;
		curName.font = "assets/data/blackpool_gothic_nbp.ttf";
		curName.setBorderStyle(OUTLINE, FlxColor.BLACK, 0.5);
		curName.addFormat(fakeBold);
		add(curName);

		setBox();
		
		autoText = new TypeTextTwo(30, textY, Std.int(blackBG.width - 30), dialogueClean, 42);
		autoText.font = "assets/data/blackpool_gothic_nbp.ttf";
		// autoText.setBorderStyle(OUTLINE, FlxColor.WHITE, 0.3);
		autoText.addFormat(textFormat);
		autoText.setTypingVariation(0.3);
		autoText.start(0.03, true, false);
		add(autoText);

		var shit = ["a", "asharp", "b", "c", "csharp", "f", "fsharp", "g", "gsharp"];
		var goodArray:Array<FlxSound> = [];
		for (i in 0...shit.length)
		{
			
			goodArray.push(FlxG.sound.load('assets/sounds/' + shit[i] + ".mp3", 1));
		}

		autoText.sounds = goodArray;
		autoText.finishSounds = true;
		
		
		continueCursor = new FlxSprite(0, 0).loadGraphic(AssetPaths.blinkie__png);
		continueCursor.setGraphicSize(Std.int(continueCursor.width * 0.2));
		continueCursor.updateHitbox();
		Align.screen(continueCursor, "center", "bottom", 20);
		add(continueCursor);
		
		highLight = new FlxSprite();
		
		highLight.alpha = 0.5;
		highLight.makeGraphic(Std.int(FlxG.width * 0.7), Std.int(40), FlxColor.RED);
		highLight.screenCenter(X);
		add(highLight);
		
		FlxTween.tween(highLight, {alpha: 0.7}, 0.28, {type:FlxTweenType.PINGPONG, ease:FlxEase.quadInOut, loopDelay:0.05});
		
		grpChoiceBGs = new FlxTypedGroup<FlxSprite>();
		add(grpChoiceBGs);

		grpChoices = new FlxTypedGroup<FlxText>();
		add(grpChoices);

		grpChoicesBuffer = new FlxTypedGroup<FlxText>();
		add(grpChoicesBuffer);
		
		super.create();
	}
	override public function update(elapsed:Float):Void
	{
		FlxG.watch.addMouse();

		if (FlxG.keys.justPressed.I)
			save();
		if (FlxG.keys.justPressed.K)
			load();

		if (FlxG.keys.justPressed.O)
			FlxG.switchState(new ink.ScriptViewer());
		
		FlxG.watch.addQuick("story can continue", inkStory.canContinue);
		FlxG.watch.addQuick("Text length: ", autoText.text.length);
		FlxG.watch.addQuick("Is Finished", autoText.isFinished);
		FlxG.watch.addQuick("Is Paused", autoText.paused);

		//DEBUG THIS SHIT FOR VOICE ACTING???
		/* 
		if (FlxG.keys.justPressed.Y && inkStory.canContinue)
			trace(inkStory.state.currentPath);
 		*/

		if (FlxG.keys.justPressed.Y && inkStory.canContinue)
			trace(inkStory.state.storySeed);

		var justSelected:Bool = false;
		
		grpChoiceBGs.forEach(function(bg:FlxSprite){grpChoiceBGs.remove(bg, true); });
		
		
		if (inkStory.currentChoices.length > 0)
		{
			if (curSelected < 0)
				curSelected = inkStory.currentChoices.length - 1;
			if (curSelected >= inkStory.currentChoices.length)
				curSelected = 0;

			if (autoText.isFinished)
			{
				highLight.visible = true;
				
				if (grpChoices.length == 0)
				{
					for (i in 0...inkStory.currentChoices.length)
					{
						var choice:Choice = inkStory.currentChoices[i];
						
						var choiceTxt:FlxText = new FlxText(0, (choicesOffsets * (i * choiceMultiplier)) + choicesOffsets, 0, choice.text, Std.int(choicesOffsets - 2));
						choiceTxt.font = AssetPaths.impact__ttf;
						choiceTxt.alpha = 0;
						choiceTxt.y -= 10;
						choiceTxt.ID = i;
						choiceTxt.setBorderStyle(OUTLINE, FlxColor.BLACK, 1);
						choiceTxt.addFormat(choiceStroke);
						FlxTween.tween(choiceTxt, {alpha: 1}, 0.4, {ease:FlxEase.quadOut, startDelay: 0.15 * i});
						FlxTween.tween(choiceTxt, {y: choiceTxt.y + 10}, 0.4, {ease: FlxEase.quartOut, startDelay: 0.15 * i});
						
						// var choiceBG:FlxSprite = new FlxSprite(choiceTxt.x, choiceTxt.y - 2).makeGraphic(Std.int(choiceTxt.fieldWidth), choiceTxt.size + 4, FlxColor.BLACK);
						// choiceBG.alpha = 0;
						// choiceBG.screenCenter(X);
						// grpChoiceBGs.add(choiceBG);

						grpChoices.add(choiceTxt);
						choiceTxt.screenCenter(X);
						
					}
				}
				else
				{
					 
					grpChoices.forEach(function(choiceTxt:FlxText)
					{
						if (FlxG.onMobile)
						{
							for (touch in FlxG.touches.list)
							{
								if (touch.overlaps(choiceTxt) && touch.justPressed)
								{
									if (curSelected == choiceTxt.ID)
									{
										inkStory.ChooseChoiceIndex(curSelected);
										inkStory.Continue();
										setBox();
										autoText.resetText(dialogueClean);
										autoText.start(null, true);
										
										justSelected = true;
										FlxG.sound.play(AssetPaths.select__mp3, 0.3);
									}
									else
									{
										FlxG.sound.play(AssetPaths.gunUp__mp3);
										curSelected = choiceTxt.ID;
									}
										
								}
							}
							
							
						}

					});
				}
				
				
				
				if (FlxG.keys.justPressed.SPACE)
				{
					trace('tried to choose option');
					inkStory.ChooseChoiceIndex(curSelected);
					inkStory.Continue();
					FlxG.sound.play(AssetPaths.select__mp3, 0.3);
					setBox();
					autoText.resetText(dialogueClean);
					autoText.start(null, true);
					
					justSelected = true;
				}
			}
			else
				highLight.visible = false;
			
			highLight.y = (choicesOffsets * curSelected * choiceMultiplier) + choicesOffsets + 3;

		
			if (CTRL.justPressed(CTRL.UP))
			{
				curSelected -= 1;
				FlxG.sound.play(AssetPaths.gunUp__mp3);
			}
			if (CTRL.justPressed(CTRL.DOWN))
			{
				FlxG.sound.play(AssetPaths.gunDown__mp3);
				curSelected += 1;
			}
			
		}
		else
		{
			highLight.visible = false;
		}
		
		if (inkStory.currentChoices.length == 0 && grpChoices.length > 0)
		{
			grpChoicesBuffer.forEach(function(txt:FlxText){grpChoicesBuffer.remove(txt, true);});
			while(grpChoices.members.length > 0)
			{
				trace("deleted a thing");
				grpChoicesBuffer.add(grpChoices.members[0]);
				grpChoices.remove(grpChoices.members[0], true);
			}
		}

		if (justSelected)
		{
			trace("just selected " + curSelected + " " + grpChoicesBuffer.length);
			for (i in 0...grpChoicesBuffer.members.length)
			{
				trace('tween ' + i + " " + grpChoicesBuffer.members[i].text);

				grpChoicesBuffer.members[i].alpha = 1;

				var tweenLength:Float = 0.4;
				if (grpChoicesBuffer.members[i].ID == curSelected)
					tweenLength += 1.6;
				
				FlxTween.tween(grpChoicesBuffer.members[i], {alpha: 0, y: grpChoicesBuffer.members[i].y + 2}, tweenLength, {ease:FlxEase.quartOut, onComplete: function(tween:FlxTween){grpChoicesBuffer.remove(grpChoicesBuffer.members[i], true);}});

			}
		}
		

		
		if (inkStory.canContinue && autoText.isFinished)
		{
			FlxFlicker.flicker(continueCursor, 0, 0.27, false, false);
		}
		else
		{
			continueCursor.visible = false;
		}
		
		var tryAdvText:Bool = false;
		
		if (FlxG.keys.justPressed.SPACE)
			tryAdvText = true;
		
		if (FlxG.onMobile)
		{
			
			for (touch in FlxG.touches.list)
			{
				if (touch.justPressed && touch.y >= autoText.y)
				{
					tryAdvText = true;
				}
			}
		}
		
		if (tryAdvText && !justSelected)
		{
			
			advText();
		}
		
		#if debug
		//FLS.debug_keys();// F12 key reloads dynamic assets
		#end

		if (blackBG.animation.curAnim.name == "name")
		{
			blackBG.y = initBlackY - 26;
			autoText.y = initBlackY + 50;
		}
		else
		{
			blackBG.y = initBlackY;
			autoText.y = blackBG.y + 25;
		}

		super.update(elapsed);
	}

	private function setBox():Void
	{
		dialogueClean = inkStory.currentText.trim();

		if (dialogueClean.startsWith(":"))
		{
			curName.alpha = 1;
			blackBG.animation.play("name");

			var splitName:Array<String> = dialogueClean.trim().split(":");
			trace(splitName);
			curName.text = splitName[1];

			dialogueClean = dialogueClean.trim().substr(splitName[1].length + 2).trim();
		}
		else
		{
			curName.alpha = 0;
			blackBG.animation.play("noname");
		}
			
	}

	private function advText():Void
	{
		trace('tried to advance text');

		if (!autoText.isFinished)
		{
			trace("tried to skip...");
			autoText.skip();
		}
		else
		{
			if (inkStory.canContinue)
			{
				trace("story can continue");
				inkStory.Continue();
				
				fulpCheck();
				
				if (!inkStory.currentText.trim().startsWith(prefix))
				{
					setBox();
					autoText.resetText(dialogueClean);
					autoText.start(null, true);
				}
				
			}
			else if (inkStory.currentChoices.length == 0)
			{
				autoText.resetText("TO BE CONTINUED LOL THE END");
				autoText.start(null, true);
			}
		}
	}

	// COMMAND SHIT
	private var curArg:String = "";
	
	private function fulpCheck():Void
	{
		trace("FULP COMMAND");
		// DUNNO WHY, THIS SHIT NEEDS TO BE HERE
		var message:String = inkStory.currentText.trim();
		
		while (message.toLowerCase().startsWith(prefix))
		{
			var args:Array<String> = message.substr(prefix.length).split(" ");
			var command = args.shift().toLowerCase().trim();
			FlxG.log.add(command);
			trace(args);
			var tmr:Float = 0.1;

			if (args[0] != null)
				curArg = args[0].toLowerCase().trim();
			
			switch (command) 
			{
				case "unlock":
					if (NGio.isLoggedIn)
					{
						var hornyMedal = NG.core.medals.get(Std.parseInt(args[0].trim()));
						if (!hornyMedal.unlocked)
							hornyMedal.sendUnlock();
					}
				case "log":
					FlxG.log.add(args.slice(0).join(" ").trim());
				case "fadein":
					boxFade.setColor(FlxColor.BLACK);
					boxFade.fadeOff(null, {steps: 6, time: 1});
					FlxG.log.add("fading in");
				case "fadeout":
					boxFade.fadeColor(FlxColor.BLACK);
					tmr = 1;
					FlxG.log.add("Fading out");
				case "setbg":
					bg.loadGraphic("assets/images/bgs/" + args[0].trim());
					trace("Tried to load the -" + args[0] + "- background" );
					bg.setGraphicSize(0, FlxG.height);
					bg.updateHitbox();
				case "hide":
					actorCheck(function(act:Actor)
					{
						act.visible = false;
						changeActorPos(act, args[1], args[2]);
						trace("TRIED TO HIDE: " + act.name);
					});
				case "actor":
					actorCheck(function(act:Actor)
					{
						act.visible = true;
						if (act.tweenMoves)
						{
							var curX:Float = act.x;
							var curY:Float = act.y;
							if (args[1] != null)
								curX = Std.parseFloat(args[1]);
							if (args[2] != null)
								curY = Std.parseFloat(args[2]);
							FlxTween.tween(act, {x: curX, y:curY}, 1.6, {ease:FlxEase.elasticInOut});
						}
						else
						{
							changeActorPos(act, args[1], args[2]);
						}
						
					});
				case "tweenon":
					actorCheck(function(act:Actor)
					{
						act.tweenMoves = true;
						changeActorPos(act, args[1], args[2]);
						
					});
				case "tweenoff":
					actorCheck(function(act:Actor)
					{
						act.tweenMoves = false;
					});
				case "wait":
					if (args[0] != null)
						tmr = Std.parseFloat(args[0]);
				case "hideall":
					grpActors.forEach(function(act:Actor){act.visible = false;});
				default:
					FlxG.log.add("Busted command somewhere....");
					
			}
			
			if (inkStory.canContinue)
			{
				inkStory.Continue();
			}
			else
				break;
			message = inkStory.currentText.trim();
			/* 
			// make this better lol
			new FlxTimer().start(tmr, function(tim:FlxTimer)
			{
				if (inkStory.canContinue)
				{
					trace("CONTINUED: " + command);
					inkStory.Continue();
					fulpCheck();
				}
			});
			 */
		}
	}

	private function changeActorPos(act:Actor, ?X:String, ?Y:String):Void
	{
		if (X != null)
			act.x = Std.parseFloat(X);
		if (Y != null)
			act.y = Std.parseFloat(Y);

	}

	private function actorCheck(ifTrue:Actor->Void):Void
	{
		var actorFound:Bool = false;
		grpActors.forEach(function(act:Actor)
		{
			if (curArg == act.name)
			{
				ifTrue(act);
				actorFound = true;
			}
		});

		if (!actorFound)
		{
			var newActor:Actor = new Actor();
			newActor.loadGraphic("assets/images/actors/" + curArg + ".png");
			newActor.name = curArg;
			newActor.visible = false;
			grpActors.add(newActor);

			ifTrue(newActor);
		}

	}

	public function save():Void
	{
		FlxG.save.data.story = inkStory.state.ToJson();
		
		FlxG.save.flush();
	}

	public function load():Void
	{
		inkStory.state.LoadJson(FlxG.save.data.story);
	}
}
