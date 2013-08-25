package Entities.Resist 
{
	import org.flixel.*;
	/**
	 * ...
	 * @author Slymodi
	 */
	public class Fist extends FlxSprite
	{
		protected var s:FlxPoint = new FlxPoint(5,5);
		[Embed(source = "../../../assets/Resist.png")] public const IMG:Class;
		public function Fist() 
		{
			super(400, 300);
			loadGraphic(IMG, true, false, 32, 32);
			addAnimation("idle", [0], 1, true);
			play("idle");
			scale = s;
		}
		public override function update():void {
			
			super.update();
		}
		public function setX(X:Number):void {
			x = X;
		}
	}

}