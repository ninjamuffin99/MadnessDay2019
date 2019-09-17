package ink;
import flixel.FlxState;
import ink.FlxStory;
import flixel.text.FlxText;
import flixel.FlxG;

class ScriptViewer extends FlxState
{

    private var txt:FlxText;
    override public function create():Void
    {
        var inkStory:FlxStory = new FlxStory(AssetPaths.daStory__json);
        var sb:StringBuf = new StringBuf();

        while(inkStory.canContinue)
        {
            sb.add(inkStory.state.currentPath + " \t\t\t " + inkStory.Continue());

            if (!inkStory.canContinue && inkStory.currentChoices.length > 0)
            {
                var theChoice = FlxG.random.int(0, inkStory.currentChoices.length - 1);
                sb.add("CHOICE: '" + inkStory.currentChoices[theChoice].text + "'\n");
                inkStory.ChooseChoiceIndex(theChoice);
                sb.add(inkStory.state.currentPath + " \t\t\t " + inkStory.Continue());
            }
                

        }

        txt = new FlxText(0, 0, FlxG.width, sb.toString(), 30);
        add(txt);

        super.create();
    }

    override public function update(elapsed:Float):Void
    {
       
        super.update(elapsed);

        if (FlxG.keys.pressed.UP)
            txt.y += 8;
        if (FlxG.keys.pressed.DOWN)
            txt.y -= 8;
    }
}