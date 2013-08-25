package Entities 
{
	import org.flixel.*;
	import org.flixel.FlxText;
	
	/**
	 * ...
	 * @author Slymodi
	 */
	public class Countdown extends FlxText 
	{
		
		public function Countdown() 
		{
			super(800 - 16, 0, FlxG.width, ""+10, true);
			
		}
		public function setnum(val:int):void {
			text = "" + val;
		}
		override public function update():void 
		{
			super.update();
		}
	}

}