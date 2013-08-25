package Entities.Collect 
{
	import org.flixel.*;
	/**
	 * ...
	 * @author Slymodi
	 */
	public class BJelly extends FlxSprite
	{
		protected var s:FlxPoint = new FlxPoint(5, 5);
		[Embed(source = "../../../assets/Jellyfish.png")]public const IMG:Class;
		
		public function BJelly() 
		{
			super(FlxG.random() * 800, 600);
			loadGraphic(IMG, true, false, 16, 16, false);
			addAnimation("normal", [0, 1, 2], 3);
			play("normal");
			scale = s;
		}
		public override function update():void {
			y -=.5;
			x+=Math.cos(y/5)*5
			super.update();
		}
	}

}