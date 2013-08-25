package States.Game 
{
	import Entities.Collect.BJelly;
	import Entities.Countdown;
	import Entities.Cursor;
	import Entities.Curtainl;
	import Entities.Curtainr;
	import Entities.Kill_enemy;
	import flash.utils.Endian;
	import org.flixel.*;
	import org.flixel.system.FlxAnim;
	import org.flixel.plugin.photonstorm.FlxCollision;
	import States.EndGame;
	import States.Play;
	/**
	 * ...
	 * @author Slymodi
	 */
	
	public class Kill extends FlxState
	{
		
		protected var g:FlxGroup;
		protected var C:Cursor = new Cursor()
		private var Scoreval:int;
		protected var diff:Number = 0;
		protected var count:Number = 10;
		protected var t:FlxText;
		protected var cr:Curtainr = new Curtainr();
		protected var cl:Curtainl = new Curtainl();
		protected var isdone:Boolean = false;
		protected var isWon:Boolean = false;
		protected var cdt:Countdown = new Countdown();
		
		public function Kill(Score:int=0,diffuculty:Number =1) 
		{
			super();
			t = new FlxText(0, 0, FlxG.width, "Kill the Ninjas!");
			t.setFormat(null, 16, 0xffffff, "center");
			add(t);
			diff = diffuculty;
			var d:int = int(diffuculty);
			Scoreval = Score;
			FlxG.mouse.hide();
			trace("Kill");
			g = new FlxGroup(0);
			for (var i:int = 0; i <  d;i++ ) {
			g.add(new Kill_enemy(FlxG.random() * FlxG.width, FlxG.random() * FlxG.height));
			}
			add(g);
			add(C);
			add(cl);
			add(cr)
			add(cdt);
		}
		public override function update():void {
			cdt.setnum(int(count));
			super.update();
			if (!isdone) {
			//C.update();
			count -= FlxG.elapsed;
			for (var x:int = 0; x < g.length; x++ ) {
				//g.members[x].update();
				if (FlxCollision.pixelPerfectCheck(g.members[x],C ,0)&& FlxG.mouse.pressed()) {
					g.members[x].hit();
				}
				if (g.members[x].life <= 0) {
					g.remove(g.members[x], true);
				}
			}
			if (g.members.length == 0) {
				isdone = true;
				isWon = true;
			}
			if (count<=0&&g.length>=1) {
				isdone = true;
			}
			
			} else {
				cr.cx();
				cl.cx();
				if (cl.x>=0) {
					if (isWon) {
						FlxG.switchState(new Play(Scoreval + 5,diff*5-4));
					} else {
						FlxG.switchState(new EndGame(Scoreval));
					}
				}
			}
		}
	}

}