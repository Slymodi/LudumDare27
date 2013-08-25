package Entities.AlligatorRun 
{
	import org.flixel.FlxPoint;
	import org.flixel.FlxSprite;
	
	/**
	 * ...
	 * @author Slymodi
	 */
	public class Alligator extends FlxSprite 
	{
		[Embed(source = "../../../assets/Alligator.png")]public const IMG:Class
		protected var s:FlxPoint = new FlxPoint(3,3)
		public function Alligator() 
		{
			super(50,300);
			loadGraphic(IMG, true, false, 32, 32);
			addAnimation("run", [0, 1], 2, true);
			play("run");
			scale = s;
		}
		public override function update():void {
			super.update();
		}
	}

}