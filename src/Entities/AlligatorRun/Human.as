package Entities.AlligatorRun 
{
	import org.flixel.*;
	/**
	 * ...
	 * @author Slymodi
	 */
	public class Human extends FlxSprite
	{
		[Embed(source = "../../../assets/Person.png")]public const IMG:Class;
		protected var s:FlxPoint = new FlxPoint(5, 5);
		
		public function Human() 
		{
			super(200, 300);
			loadGraphic(IMG, true, false, 16, 16);
			addAnimation("run", [0, 1, 2], 3, true);
			play("run");
			scale = s;
		}
		public override function update():void {
			if (FlxG.keys.justReleased("SPACE")) {
				x += 5;
			}
			super.update();
		}
	}

}