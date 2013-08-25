package States 
{
	/**
	 * ...
	 * @author Slymodi
	 */
	import org.flixel.*;
	public class Credits extends FlxState
	{
<<<<<<< HEAD
		public function goback():void {
			FlxG.switchState(new Menustate());
		}
		public function Credits() 
		{
			super();
			add(new FlxButton(0, 500, "go back", goback));
			var T:FlxText = new FlxText(0, 0, FlxG.width, "10 Second Scramble");
			T.setFormat(null, 16, 0xffFFFF, "center");
			add(T);
			var T1:FlxText = new FlxText(0, 16, FlxG.width, "By Slymodi");
			T1.setFormat(null, 16, 0xffFFFF, "center");
			add(T1);
			var T2:FlxText = new FlxText(0, 48, FlxG.width, "Flixel");
			T2.setFormat(null, 16, 0xffFFFF, "center");
			add(T2);
			var T3:FlxText = new FlxText(0, 64, FlxG.width, "By Adam Atomic!");
			T3.setFormat(null, 16, 0xffFFFF, "center");
			add(T3);
			var T5:FlxText = new FlxText(0, 128, FlxG.width, "Aester Egg!!(aester because easter is too mainstream)");
			T5.setFormat(null, 16, 0xffFFFF, "center");
			add(T5);
			var T6:FlxText = new FlxText(0, 80, FlxG.width, "Music Made with Sunvox,Graphics made with Paint.net");
			T6.setFormat(null, 16, 0xffFFFF, "center");
			add(T6);
=======
		
		public function Credits() 
		{
			super();
			
>>>>>>> origin/master
		}
		
	}

}