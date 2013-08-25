package States.Game 
{
	import Entities.AlligatorRun.Alligator;
	import Entities.AlligatorRun.Human;
	import Entities.Countdown;
	import Entities.Curtainl;
	import Entities.Curtainr;
	import org.flixel.*;
	import States.Play;
	import org.flixel.plugin.photonstorm.FlxCollision;
	
	/**
	 * ...
	 * @author Slymodi
	 */
	public class AlligatorRun extends FlxState 
	{
		protected var human:Human = new Human(), A:Alligator = new Alligator();
		protected var S:int, D:int, H:int;
		protected var isDone:Boolean = false, isWon:Boolean = false;
		protected var cr:Curtainr = new Curtainr(), cl:Curtainl = new Curtainl();
		protected var counter:Number = 10;
		protected var cdt:Countdown = new Countdown();
		[Embed(source = "../../../assets/Play.mp3")] public const SF:Class;
		protected var wtheme:FlxSound = new FlxSound();
		public function AlligatorRun(Score:int,Diff:int,Hearts:int) 
		{
			S = Score;
			D = Diff;
			H = Hearts;
			
			super();
			add(human);
			add(A);
			add(cdt);wtheme.loadEmbedded(SF);
			var T:FlxText = new FlxText(0, 0, FlxG.width, "press Space to avoid the Alligator");
			T.setFormat(null, 16, 0xffFFFF, "center");
			add(T);
			add(cl)
			add(cr)
			wtheme.play();
		}
		public override function update():void {
			if (!isDone) {
				human.x -= D/10;
				counter -= FlxG.elapsed;
				cdt.setnum(int(counter));
				if (counter<=0) {
					isWon = true;
					isDone = true;
				}
				if (FlxCollision.pixelPerfectCheck(A,human)) {
					isDone = true;
				}
			super.update();
		} else {
			cr.cx();
			cl.cx();
			if (cl.x >= 0) {
				wtheme.stop();
				if (isWon) {
					FlxG.switchState(new Play(S+5,D+1,H));
				} else {
					FlxG.switchState(new Play(S,D+1,H-1));
				}
			}
		}
	}

}
}