package 
{
	import org.flixel.*;
	import flash.display.Sprite;
	import flash.events.Event;
	import Preloader;
	[SWF(width = "800", height = "600", backgroundColor = "#000000")]
	//[Frame(factoryClass="Preloader")]
	/**
	 * ...
	 * @author Slymodi
	 */
	public class Main extends FlxGame 
	{
		
		public function Main():void 
		{
		super(800, 600, Menustate);
		FlxG.mouse.show();
		}
		
	}
	
}