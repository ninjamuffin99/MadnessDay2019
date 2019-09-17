import flixel.FlxSprite;

class Actor extends FlxSprite
{
    public var name:String = "";
    public var tweenMoves:Bool = false;
    public var displayName:String = "";

    public function new (?X:Float = 0, ?Y:Float = 0)
    {
        super(X, Y);
    }
}