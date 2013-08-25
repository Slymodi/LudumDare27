package States 
{
	import org.flixel.*;
	/**
	 * ...
	 * @author Slymodi
	 */
	public class EndGame extends FlxState
	{
		protected var T1:FlxText;
		protected var T2:FlxText;
		protected var B1:FlxButton;
		public function EndGame(Score:int) 
		{
		super();
		FlxG.mouse.show();
		T1 = new FlxText(0, 0, FlxG.width, "GAME OVER");
		T1.setFormat(null, 16, 0xffffff, "center");
		T2 = new FlxText(0, 16, FlxG.width, "Final Score: " + Score);
		T2.setFormat(null, 16, 0xffffff, "center");
		add(T1);
		add(T2);
		B1 = new FlxButton(360,400, "Play Again", goback);
		add(B1);
		}
		
		public override function update():void {
			
			super.update();
		}
		public function goback():void {
			
			FlxG.switchState(new Menustate());
		}
	}

}