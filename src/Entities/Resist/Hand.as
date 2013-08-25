package Entities.Resist 
{
	import org.flixel.FlxPoint;
	import org.flixel.FlxSprite;
	
	/**
	 * ...
	 * @author Slymodi
	 */
	public class Hand extends FlxSprite 
	{
		protected var s:FlxPoint = new FlxPoint(5,5);
		[Embed(source="../../../assets/Resist.png")]public const IMG:Class
		public function Hand() 
		{
			super(400-(5*32),300);
			loadGraphic(IMG, true, false, 32, 32, false);
			addAnimation("idle", [1], 1, true);
			scale = s;
			play("idle")
		}
		public override function update():void {
			super.update();
		}
		public function setX(X:Number):void {
			x = X;
		}
	}

}