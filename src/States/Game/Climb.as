package States.Game 
{
	import adobe.utils.CustomActions;
	import Entities.Climb.Barrel;
	import Entities.Climb.ClimbBG;
	import Entities.Climb.Ladder;
	import Entities.Climb.Robot;
	import Entities.Countdown;
	import Entities.Curtainl;
	import Entities.Curtainr;
	import org.flixel.*;
	import org.flixel.plugin.photonstorm.FlxCollision
	import States.Play;
	
	/**
	 * ...
	 * @author Slymodi
	 */
	public class Climb extends FlxState 
	{
		protected var counter:Number = 10;
		protected var cdt:Countdown = new Countdown();
		protected var Barr:FlxGroup = new FlxGroup();
		protected var isDone:Boolean = false, isWon:Boolean = false;
		protected var PL:Robot = new Robot();
		protected var cr:Curtainr = new Curtainr(), cl:Curtainl = new Curtainl();
		protected var l:int,score:int,d:int;
<<<<<<< HEAD
		[Embed(source = "../../../assets/Play.mp3")] public const SF:Class;
		protected var wtheme:FlxSound = new FlxSound();
=======
>>>>>>> origin/master
		
		public function Climb(Score:int =0,difficulty:int =0,lives:int=3) 
		{
			super();
			score = Score;
			d = difficulty;
			l = lives;
<<<<<<< HEAD
			wtheme.loadEmbedded(SF);
=======
>>>>>>> origin/master
			var chance:int = int(FlxG.random() * 6);
			add(new ClimbBG());
			add(new Ladder())
			add(PL)
			if (chance==0) {
				Barr.add(new Barrel(400,difficulty/5));
			} else if (chance==1) {
				Barr.add(new Barrel(400,difficulty/5));
			} else if (chance==2) {
				Barr.add(new Barrel(400,difficulty/5));
			}else if (chance==3) {
				Barr.add(new Barrel(300,difficulty/5));
				Barr.add(new Barrel(500,difficulty/5));
			}else if (chance==4) {
				Barr.add(new Barrel(400,difficulty/5));
				Barr.add(new Barrel(300,difficulty/5));
			} else {
				Barr.add(new Barrel(400,difficulty/5));
				Barr.add(new Barrel(500,difficulty/5));
			}
			add(Barr);
			add(cdt)
<<<<<<< HEAD
			var T:FlxText = new FlxText(0, 0, FlxG.width, "Avoid barrels with A and D");
			T.setFormat(null, 16, 0xffFFFF, "center");
			add(T);
			add(cl)
			add(cr)
			wtheme.play();
=======
			add(cl)
			add(cr)
>>>>>>> origin/master
		}
		public override function update():void {
			if (!isDone){
			counter -= FlxG.elapsed;
			cdt.setnum(int(counter));
			Barr.update();
			if (counter<=0) {
				isDone = true;
				isWon = true;
			}
			for (var i:int = 0; i < Barr.length;i++ ) {
			if (FlxCollision.pixelPerfectCheck(Barr.members[i],PL)) {
				isDone = true;
			}
			}
			super.update();
			} else {
				cr.cx();
				cl.cx();
<<<<<<< HEAD
				if (cl.x >= 0) {
					wtheme.stop();
=======
				if (cl.x>=0) {
>>>>>>> origin/master
					if (isWon) {
						FlxG.switchState(new Play(score+5,d+1,l));
					} else {
						FlxG.switchState(new Play(score,d+1,l-1));
					}
				}
			}
		}
	}

}