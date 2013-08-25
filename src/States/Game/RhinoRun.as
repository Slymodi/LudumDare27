package States.Game 
{
	import Entities.Rhinojump.Rhino;
	import Entities.Rhinojump.RRBG;
	import flash.geom.Point;
	import org.flixel.FlxState;
	
	/**
	 * ...
	 * @author Slymodi
	 */
	public class RhinoRun extends FlxState 
	{
		protected var bg:RRBG = new RRBG();
		protected var Rh:Rhino = new Rhino();
		protected var vel:Point = new Point(0, 0);
		protected var acc:Point = new Point(0, 9.8);
		public function RhinoRun(Score:int = 0, difficulty:int = 0 ) 
		{
			super();
			add(bg);
			add(Rh);
		}
		public override function update():void {
			
			super.update();
		}
	}

}