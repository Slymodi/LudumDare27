package Entities.Climb 
{
	import org.flixel.*;
	/**
	 * ...
	 * @author Slymodi
	 */
	public class Ladder extends FlxSprite
	{
		[Embed(source = "../../../assets/Ladder.png")]public const IMG:Class;
		protected const s:FlxPoint = new FlxPoint(2,2);
		public function Ladder() 
		{
			super(0, 0);
			loadGraphic(IMG);
			scale = s;
		}
		public override function update():void {
			y += 0.5;
			super.update();
		}
	}

}