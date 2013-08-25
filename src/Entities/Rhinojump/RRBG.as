package Entities.Rhinojump 
{
	import org.flixel.*;
	/**
	 * ...
	 * @author Slymodi
	 */
	public class RRBG extends FlxSprite
	{
		[Embed(source="../../../assets/RhinoRunBG.png")] public const IMG:Class
		public function RRBG() 
		{
			super(0,0,IMG)
		}
		public override function update():void {
			super.update();
		}
	}

}