package States.Game 
{
	import Entities.Collect.GJelly;
	import Entities.Collect.RJelly;
	import Entities.Collect.BJelly;
	import Entities.Collect.Mantaray;
	import Entities.Countdown;
	import Entities.Curtainl;
	import Entities.Curtainr;
	import org.flixel.*;
	import org.flixel.plugin.photonstorm.FlxCollision;
	import States.EndGame;
	import States.Play;
	/**
	 * ...
	 * @author Slymodi
	 */
	//what am I doing with my life
	public class Collect extends FlxState 
	{
		protected var PL:Mantaray = new Mantaray();
		protected var SC:Number = 0
		protected var d:Number = 0;
		protected var coll:int;
		protected var GB:FlxGroup = new FlxGroup();
		protected var GR:FlxGroup = new FlxGroup();
		protected var GG:FlxGroup = new FlxGroup();
		protected var isDone:Boolean = false, isWon:Boolean = false;
		protected var cr:Curtainr = new Curtainr();
		protected var cl:Curtainl = new Curtainl();
		protected var count:Number = 10;
		protected var cdt:Countdown = new Countdown();
		
		public function Collect(Score:int,diff:Number) 
		{
			FlxG.mouse.hide();
			super();
			add(PL);
			SC = Score;
			d = diff;
			var T:FlxText = new FlxText(0, 0, FlxG.width, "Collect the blue and gold jellyfish! Beware the red ones!");
			T.setFormat(null, 16, 0xffffff, "center");
			add(T);
			add(GG);
			add(GB);
			add(GR);
			
			add(cr);
			add(cl);
			add(cdt);
		}
		public override function update():void {
			if (!isDone) {
				if (count <=0){isDone=true}
				count -= FlxG.elapsed;
				cdt.setnum(int(count));
			var Chance:int = int(FlxG.random() * 500);
			if (Chance >= 485) {
				GB.add(new BJelly());
			} else if (Chance >= 475){
				GR.add(new RJelly());
			} else if (Chance >=474) {
				GG.add(new GJelly());
			}
			PL.update();
			for (var i:int = 0; i < GG.length;i++ ) {
				GG.members[i].update();
				if (FlxCollision.pixelPerfectCheck(GG.members[i],PL)) {
					GG.remove(GG.members[i], true);
					coll += 5;
				}
			}
			for ( i = 0; i < GB.length;i++ ) {
				GB.members[i].update();
				if (FlxCollision.pixelPerfectCheck(GB.members[i],PL)) {
					GB.remove(GB.members[i], true);
					coll += 1;
				}
			}
			for ( i = 0; i < GR.length;i++ ) {
				GR.members[i].update();
				if (FlxCollision.pixelPerfectCheck(GR.members[i],PL)) {
					GR.remove(GR.members[i], true);
					coll -= 3;
				}
			}
			if (coll>=5+d) {
				isWon = true;
				isDone = true;
			}
			super.update();
			} else {
				cr.cx();
				cl.cx();
				if (cl.x>=0){
					if (isWon) {
					FlxG.switchState(new Play(SC+5,int(d+1)));
					} else {
					FlxG.switchState(new EndGame(SC));
				}
				}
			}
		}
	}

}