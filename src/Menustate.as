package  
{
	import Entities.Cursor;
	import Entities.Title;
	import org.flixel.*;
	import org.flixel.FlxText;
	import org.flixel.FlxButton;
	import States.Game.Kill;
	import States.Play;
	import States.Credits;
	/**
	 * ...
	 * @author Slymodi
	 */
	public class Menustate extends FlxState
	{
		[Embed(source="../assets/Title.mp3")]public const TH:Class
		public var play:FlxButton;
		public var credit:FlxButton;
		public var titletheme:FlxSound = new FlxSound();
		protected function SwitchtoP():void {
			titletheme.stop();
			FlxG.switchState(new Play());
		}
		
		protected function SwitchtoC():void { 
			titletheme.stop();
			FlxG.switchState(new Credits());
		}
		public function Menustate() 
		{
			titletheme.loadEmbedded(TH, false,true);
			FlxG.bgColor = 0xff000000;
			//c = new Cursor();
			//add(new FlxText(0, 0, 1000, "Hello LD27"));
			play = new FlxButton(200, 400, "Play", SwitchtoP);
			credit = new FlxButton(500, 400, "credit", SwitchtoC);
			add(new Title());
			add(play);
			//add(c)
			add(credit);
			
			titletheme.play(true);
			
		}
		public override function update():void { credit.update(); play.update(); super.update(); }
	}

}