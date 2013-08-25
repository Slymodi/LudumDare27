package Entities 
{
	import org.flixel.FlxPoint;
	import org.flixel.FlxSprite;
	
	/**
	 * ...
	 * @author Slymodi
	 */
	public class Title extends FlxSprite 
	{
		[Embed(source = "../../assets/Title.png")]public const IMG:Class;
		protected var  s:FlxPoint = new FlxPoint(800/128,800/128);
		public function Title() 
		{
			super(350,200);
			loadGraphic(IMG);
			scale = s;
		}
		public override function update():void{
		super.update()
		}
		}

}