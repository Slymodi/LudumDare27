package States.Game 
{
	import Entities.Rhinojump.Rhino;
	import Entities.Rhinojump.RRBG;
<<<<<<< HEAD
	import org.flixel.*;
=======
	import flash.geom.Point;
	import org.flixel.FlxState;
>>>>>>> origin/master
	
	/**
	 * ...
	 * @author Slymodi
	 */
	public class RhinoRun extends FlxState 
	{
		protected var bg:RRBG = new RRBG();
		protected var Rh:Rhino = new Rhino();
<<<<<<< HEAD

		protected var b:FlxGroup = new FlxGroup();
		protected var S:int, D:int, H:int;
		
		
		public function RhinoRun(Score:int = 0, difficulty:int = 0,Hearts:int ) 
		{
			super();
			S = Score;
			D = difficulty;
			H = Hearts;
=======
		protected var vel:Point = new Point(0, 0);
		protected var acc:Point = new Point(0, 9.8);
		public function RhinoRun(Score:int = 0, difficulty:int = 0 ) 
		{
			super();
>>>>>>> origin/master
			add(bg);
			add(Rh);
		}
		public override function update():void {
<<<<<<< HEAD
			FlxG.collide(b, Rh);
=======
			
>>>>>>> origin/master
			super.update();
		}
	}

}