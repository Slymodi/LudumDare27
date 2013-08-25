package Entities.Climb 
{
	import org.flixel.*;
	
	/**
	 * ...
	 * @author Slymodi
	 */
	public class ClimbBG extends FlxSprite 
	{
	[Embed(source = "../../../assets/ClimbBG.png")]public const IMG:Class;	
	public var s:FlxPoint = new FlxPoint(4,4);
		public function ClimbBG() 
		{
			super(400);
			loadGraphic(IMG);
			scale = s;
		}
		public override function update():void {
			y += 0.1;
			super.update();
		}
	}

}