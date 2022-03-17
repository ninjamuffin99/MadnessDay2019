package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import lime.app.Application;
#if sys
import sys.FileSystem;
#end
#if MODS_ALLOWED
import polymod.Polymod.Framework;
import polymod.Polymod.PolymodError;
#end

class MenuState extends FlxState
{
	#if MODS_ALLOWED
	var modList = FileSystem.readDirectory('mods');
	var newList:Array<String> = [];

	for (file in modList)
	{
		if (FileSystem.isDirectory('mods/$file'))
		{
			newList.push(file);
		}
	}
	var errors = (error:PolymodError) ->
	{
		trace(error.severity + ": " + error.code + " - " + error.message + " - ORIGIN: " + error.origin);
	};

	var modMetadata = polymod.Polymod.init({
		modRoot: "mods/",
		dirs: newList,
		errorCallback: errors,
		framework: OPENFL,
		ignoredFiles: polymod.Polymod.getDefaultIgnoreList(),
		frameworkParams: {
			assetLibraryPaths: [
				"data" => "data",
				"images" => "images",
				"music" => "music",
				"sounds" => "sounds",
				"fonts" => "fonts"
			]
		}
	});
	#end

	override public function create():Void
	{
		FlxG.camera.fade(FlxColor.BLACK, 5, true);

		var titleScreen:FlxSprite = new FlxSprite().loadGraphic(Paths.image('titleScreen'));
		titleScreen.setGraphicSize(Std.int(FlxG.width));
		titleScreen.updateHitbox();
		titleScreen.antialiasing = true;
		add(titleScreen);

		var metadata = Application.current.meta;
		var curVer:FlxText = new FlxText(5, FlxG.height - 20, 0, metadata.get('version'), 16);
		add(curVer);

		FlxG.sound.playMusic(Paths.music('title'), 0.7);

		super.create();
	}

	private var isFading:Bool = false;

	override public function update(elapsed:Float):Void
	{
		/* 
			if (FlxG.onMobile)
			{
				for (touch in FlxG.touches.list)
				{
					if (touch.justPressed)
					{
						isFading = true;
						FlxG.sound.play(Paths.sound('titleSelect'), 0.9);
						FlxG.sound.music.volume *= 0.5;
						FlxG.sound.music.fadeOut(1);
						FlxG.camera.fade(FlxColor.WHITE, 1, false, function(){FlxG.switchState(new PlayState());}, true);
					}
				}
				
				
			}
		 */

		if ((FlxG.keys.justPressed.ENTER || FlxG.keys.justPressed.SPACE) && !isFading)
		{
			isFading = true;
			FlxG.sound.play(Paths.sound('titleSelect'), 0.9);
			FlxG.sound.music.volume *= 0.5;
			FlxG.sound.music.fadeOut(1);
			FlxG.camera.fade(FlxColor.WHITE, 1, false, function()
			{
				FlxG.switchState(new PlayState());
			}, true);
		}

		super.update(elapsed);
	}
}
