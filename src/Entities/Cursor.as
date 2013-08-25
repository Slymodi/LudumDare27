package Entities 
{
	import org.flixel.*;
	/**
	 * ...
	 * @author Slymodi
	 */
	public class Cursor extends FlxSprite
	{
		[Embed(source = "../../assets/Cursor.png")]public const cr:Class;
		public var sp:FlxPoint = new FlxPoint(5, 5);
		public function Cursor() 
		{
			super(0, 0, cr);
			loadGraphic(cr, true, false, 15, 15, false);
			addAnimation("idle", [0], 1, true);
			addAnimation("pressed", [1], 1, true);
			play("idle");
			offset.x = sp.x * 7.5;
			offset.y = sp.y * 7.5;
			scale = sp;
			centerOffsets(true);
		}
		public override function update():void {
			if (FlxG.mouse.pressed()) {
				play("pressed");
			} else {
				play("idle");
			}
			x = FlxG.mouse.x;
			y = FlxG.mouse.y;
			super.update();
		}
	}

}