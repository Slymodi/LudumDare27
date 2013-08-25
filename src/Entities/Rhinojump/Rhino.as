package Entities.Rhinojump 
{
	import org.flixel.*;
	/**
	 * ...
	 * @author Slymodi
	 */
	public class Rhino extends FlxSprite
	{
		[Embed(source = "../../../assets/Rhino.png")] public const IMG:Class;
		protected var s:FlxPoint = new FlxPoint(3,3);
		public function Rhino() 
		{
			super(200,200);
			loadGraphic(IMG, true, false, 32, 32, false);
			addAnimation("running", [0, 1,0,4], 8, true);
			addAnimation("jump", [2, 3], 4, true);
			play("running");
			scale = s;
		}
		public override function update():void {
			if (FlxG.keys.justReleased("SPACE")) {
				play("jump");
			} else {
				play("running");
			}
			super.update();
		}
	}

}