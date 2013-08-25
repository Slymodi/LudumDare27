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
<<<<<<< HEAD
		protected var s:FlxPoint = new FlxPoint(3, 3);
		protected var vel:Point = new Point(0, 0);
		protected var acc:Point = new Point(0, 9.8);
		
=======
		protected var s:FlxPoint = new FlxPoint(3,3);
>>>>>>> origin/master
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
<<<<<<< HEAD
				if (acc.y=0){
				acc.y = -150;
				}
			} else {
				play("running");
			}
			
=======
			} else {
				play("running");
			}
>>>>>>> origin/master
			super.update();
		}
	}

}