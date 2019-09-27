package;

import flixel.FlxState;
import flixel.FlxSprite;
import flixel.FlxG;
import flixel.util.FlxColor;
import flixel.text.FlxText;

class MenuState extends FlxState
{
    override public function create():Void
    {
        FlxG.camera.fade(FlxColor.BLACK, 5, true);

        var titleScreen:FlxSprite = new FlxSprite().loadGraphic(AssetPaths.titleScreen__png);
        titleScreen.setGraphicSize(Std.int(FlxG.width));
        titleScreen.updateHitbox();
        titleScreen.antialiasing = true;
        add(titleScreen);

        var curVer:FlxText = new FlxText(5, FlxG.height - 20, 0, "v0.1.3", 16);
        add(curVer);

        FlxG.sound.playMusic(AssetPaths.title__mp3, 0.7);

        super.create();
    }

    private var isFading:Bool = false;

    override public function update(elapsed:Float):Void
    {
        if (FlxG.onMobile)
		{
			for (touch in FlxG.touches.list)
			{
				if (touch.justPressed)
				{
					isFading = true;
                    FlxG.sound.play(AssetPaths.titleSelect__mp3, 0.9);
                    FlxG.sound.music.volume *= 0.5;
                    FlxG.sound.music.fadeOut(1);
                    FlxG.camera.fade(FlxColor.WHITE, 1, false, function(){FlxG.switchState(new PlayState());}, true);
				}
			}
			
			
		}

        if ((FlxG.keys.justPressed.ENTER || FlxG.keys.justPressed.SPACE) && !isFading)
        {
            isFading = true;
            FlxG.sound.play(AssetPaths.titleSelect__mp3, 0.9);
            FlxG.sound.music.volume *= 0.5;
            FlxG.sound.music.fadeOut(1);
            FlxG.camera.fade(FlxColor.WHITE, 1, false, function(){FlxG.switchState(new PlayState());}, true);
        }

        super.update(elapsed);
    }

}