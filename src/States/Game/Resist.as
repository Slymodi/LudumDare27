package States.Game 
{
	import Entities.Countdown;
	import Entities.Curtainl;
	import Entities.Curtainr;
	import Entities.Resist.Fist;
	import Entities.Resist.Hand;
	import org.flixel.*;
	import States.EndGame;
	import States.Play;
	
	/**
	 * ...
	 * @author Slymodi
	 */
	public class Resist extends FlxState 
	{
		protected var H:Hand = new Hand();
		protected var F:Fist = new Fist();
		protected var scoreVal:int,l:int;
		protected var d:Number;
		protected var center:Number = 300;
		protected var counter:Number = 10;
		protected var isdone:Boolean = false;
		protected var cr:Curtainr = new Curtainr();
		protected var cl:Curtainl = new Curtainl();
		protected var isWon:Boolean = true;
		protected var cdt:Countdown = new Countdown();
		
		public function Resist(Score:int =0,difficulty:Number=1,lives:int=3) 
		{
			super();
			l = lives;
			var T:FlxText = new FlxText(0, 0, FlxG.width, "Hit Space to resist!");
			T.setFormat(null, 16, 0xffffff, "center");
			add(T);
			d = difficulty;
			scoreVal = Score;
			add(H);
			add(F);
			add(cl);
			add(cr);
			add(cdt);
		}
		public override function update():void {
			if (!isdone) {
			cdt.setnum(int(counter));
			H.update();
			F.update();
			if (FlxG.keys.justReleased("SPACE")) {
				center += d*7;
			}
			center -= d;
			H.setX(center - 32 * 5);
			F.setX(center);
			counter -= FlxG.elapsed;
			if (center <=0) {
				isdone = true;
				isWon = false;
			}
			if (counter<=0) {
				isdone = true;
			}
			} else {
				cr.cx();
				cl.cx();
				if (cl.x>=0) {
					if (isWon) {
						FlxG.switchState(new Play(scoreVal,d,l));
					}else {
						FlxG.switchState(new Play(scoreVal,d,l-1));
					}
				}
			}
			//super.update();
		}
	}

}