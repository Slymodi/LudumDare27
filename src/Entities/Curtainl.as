package Entities 
{
	import org.flixel.FlxSprite;
	
	/**
	 * ...
	 * @author Slymodi
	 */
	public class Curtainl extends FlxSprite 
	{
		
		public function Curtainl() 
		{
			super( -399, 0)
			makeGraphic(400, 600, 0xff000000);		
		}
		public override function update():void {
			//x+=3;
			super.update();
		}
		public function cx():void {
			x += 3;
		}
	}
}