package ink;

import ink.runtime.Story;
import openfl.Assets;

/**
 * ...
 * @author 
 */
class FlxStory extends Story 
{	
	/**
	   @param	jsonString	Actually you'd want the string to the asset
	**/
	public function new(jsonString:String)
	{
		
		jsonString = Assets.getText(jsonString);
		// incase string is fucky
		while (jsonString.charAt(0) != "{")
		{
			trace("BUSTED CHAR: " + jsonString.charAt(0));
			jsonString = jsonString.substr(1);
		}
		
		super(jsonString);
		
	}
}