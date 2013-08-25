package States 
{
	import Entities.Hearts;
	import Entities.Resist.Fist;
	import org.flixel.*;
	import States.Game.Climb;
	import States.Game.Collect;
	import States.Game.Kill;
	import States.Game.Resist;
	import States.Game.RhinoRun;
	/**
	 * ...
	 * @author Slymodi
	 */
	public class Play extends FlxState
	{
		
		/* stupid offensive crocodile humanitarian run
		 * Rhino cliff rhino 2 legged 
		 * dead soft monkey snail fly
		 * 
		 * 
		 * 
		 */
		protected var Counter:Number = 3;
		private var S:int;
		protected var d:int = 0;
		protected var heart:Hearts;
		protected var hval:int;
		
		public function Play(Score:int = 0,difficulty:int=1,hearts:int=3) 
		{
			S = Score;
			d = difficulty;
			hval = hearts;
			heart = new Hearts(hval);
			super();

			FlxG.bgColor = FlxG.random() * 0x00FFFFFF + 0xFF000000;
			trace("Play");
			var t1:FlxText = new FlxText(0, 0, FlxG.width, "Get ready for the next round");
			t1.setFormat(null, 16,0xffffff,"center");
			add(t1);
			var t2:FlxText = new FlxText(0, 16, FlxG.width, "Score: "+Score);
			t2.setFormat(null, 16,0xffffff,"center");
			add(t2);
			add(heart);
		}
		public override function update():void {
			if (hval == 0) {
				trace("BAMAMAM");
				FlxG.switchState(new EndGame(S));
			}
			var chance:int = int(FlxG.random() * 5); 
			if (Counter<=0){
			FlxG.switchState(new Climb(S,20,hval));
			}
			Counter -= FlxG.elapsed;
			super.update();
		}
	}

}