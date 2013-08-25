package Entities.Climb 
{
	import org.flixel.*;
	/**
	 * ...
	 * @author Slymodi
	 */
	public class Robot extends FlxSprite
	{
		[Embed(source = "../../../assets/Robot.png")]public const IMG:Class;
		protected var s:FlxPoint = new FlxPoint(5,5);
		public function Robot() 
		{
			super(400, 300);
			
			loadGraphic(IMG, true, false, 32, 32, false);
			addAnimation("normal", [0, 1], 1, true);
			addAnimation("leftdodge", [3], 1, true);
			addAnimation("rightdodge", [2], 1, true);
			play("normal");
			scale = s;
		}
		public override function update():void {
			if (FlxG.keys.pressed("A")) {
				play("leftdodge");
				x=350
			} else if (FlxG.keys.pressed("D")) {
				play("rightdodge");
				x=450
			} else {
				play("normal");
				x = 390;
			}
			super.update();
		}
	}

}