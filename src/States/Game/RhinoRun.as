package States.Game 
{
	import Entities.Rhinojump.Rhino;
	import Entities.Rhinojump.RRBG;
	import org.flixel.*;
	
	/**
	 * ...
	 * @author Slymodi
	 */
	public class RhinoRun extends FlxState 
	{
		protected var bg:RRBG = new RRBG();
		protected var Rh:Rhino = new Rhino();

		protected var b:FlxGroup = new FlxGroup();
		protected var S:int, D:int, H:int;
		
		
		public function RhinoRun(Score:int = 0, difficulty:int = 0,Hearts:int ) 
		{
			super();
			S = Score;
			D = difficulty;
			H = Hearts;
			add(bg);
			add(Rh);
		}
		public override function update():void {
			FlxG.collide(b, Rh);
			super.update();
		}
	}

}