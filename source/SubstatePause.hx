package;
import flixel.FlxSubState;
import flixel.text.FlxText;
import flixel.FlxG;
import flixel.tweens.FlxEase;
import flixel.FlxSprite;
import flixel.tweens.FlxTween;
import flixel.util.FlxColor;

class SubstatePause extends FlxSubState
{
    public function new ()
    {
        super();

        var bg:FlxSprite = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);
		bg.alpha = 0;
		bg.scrollFactor.set();
		add(bg);
		FlxTween.tween(bg, {alpha:0.5}, 0.2, {ease:FlxEase.quadOut});

        var pauseText:FlxText = new FlxText(0, 0, 0, "PAUSE", 46);
        pauseText.screenCenter();
        add(pauseText);
    }

    override public function update(elapsed:Float):Void
    {
        if (FlxG.keys.justPressed.ENTER)
        {
            close();
        }

        super.update(elapsed);
    }

}