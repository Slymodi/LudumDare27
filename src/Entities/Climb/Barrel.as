package Entities.Climb 
{
	import org.flixel.*;
	/**
	 * ...
	 * @author Slymodi
	 */
	public class Barrel extends FlxSprite
	{
		[Embed(source = "../../../assets/Barrels.png")]public const IMG:Class;
		public var s:FlxPoint = new FlxPoint(3, 3)
		public var speed:Number;
		public function Barrel(x:int,sp:Number) 
		{
			super(x, -100);
			speed = sp;
			loadGraphic(IMG, true, false, 32, 32, false);
			addAnimation("normal", [0, 1], 2, true);
			scale = s;
		}
		public override function update():void {
			y+=speed;
			super.update();
		}
	}

}