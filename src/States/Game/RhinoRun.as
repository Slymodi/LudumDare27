package States.Game 
{
	import Entities.Rhinojump.Rhino;
	import Entities.Rhinojump.RRBG;
	import org.flixel.FlxState;
	
	/**
	 * ...
	 * @author Slymodi
	 */
	public class RhinoRun extends FlxState 
	{
		protected var bg:RRBG = new RRBG();
		protected var Rh:Rhino = new Rhino();
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