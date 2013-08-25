package Entities.Collect 
{
	import org.flixel.*;
	/**
	 * ...
	 * @author Slymodi
	 */
	public class Mantaray extends FlxSprite
	{
		[Embed(source = "../../../assets/MantaRay.png")] public const PL:Class
		protected var s:FlxPoint = new FlxPoint(5,5);
		public function Mantaray() 
		{
			super(0, 0)
			loadGraphic(PL, true, false, 32, 32, false);
			addAnimation("normal", [0, 1, 2, 1], 4, true);
			play("normal");
			scale = s;
		}
		public override function update():void {
			x = FlxG.mouse.x;
			y = FlxG.mouse.y;
			super.update();
		}	
	}
}