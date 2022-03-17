package;

class Paths
{
	private static var SOUNDEXT:String = "mp3";

	public static inline function text(target:String):String
	{
		return 'assets/data/$target.txt';
	}

	public static inline function image(target:String):String
	{
		return 'assets/images/$target.png';
	}

	public static inline function sound(target:String):String
	{
		return 'assets/sounds/$target.$SOUNDEXT';
	}

	public static inline function music(target:String):String
	{
		return 'assets/music/$target.$SOUNDEXT';
	}

	public static inline function font(target:String):String
	{
		return 'assets/fonts/$target.ttf';
	}

	public static inline function json(target:String):String
	{
		return 'assets/data/$target.json';
	}

	public static inline function particle(target:String):String
	{
		return 'assets/data/particle/$target.pex';
	}
}
