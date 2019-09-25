package;

import flixel.FlxState;
import flixel.FlxSprite;
import flixel.FlxG;
import flixel.util.FlxColor;

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

        FlxG.sound.playMusic(AssetPaths.title__mp3, 0.7);

        super.create();
    }

    private var isFading:Bool = false;

    override public function update(elapsed:Float):Void
    {
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