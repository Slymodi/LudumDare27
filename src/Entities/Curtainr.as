package Entities 
{
	import org.flixel.*;
	/**
	 * ...
	 * @author Slymodi
	 */
		public class Curtainr extends FlxSprite 
	{
		
		public function Curtainr() 
		{
			super(800, 0);
			makeGraphic(400, 600, 0xff000000);
			}
		public override function update():void {
			//x-=3;
			super.update();
		}
		public function cx():void {
			x -= 3;
		}
	}
}