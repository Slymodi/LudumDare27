package Entities 
{
	import org.flixel.*;
	/**
	 * ...
	 * @author Slymodi
	 */
	public class Hearts extends FlxSprite
	{
		protected var s:FlxPoint = new FlxPoint(5, 5);
		[Embed(source = "../../assets/Lives.png")]public const IMG:Class;
		
		public function Hearts(lives:int=3) 
		{
			super(370, 200);
			loadGraphic(IMG,true,false,48,16,false);
			scale = s;
			addAnimation("3",[0],1,true);
			addAnimation("2",[1],1);
			addAnimation("1",[2],1)
			addAnimation("0",[3],1)
			if (lives==3) {
				play("3");
			} else if (lives==2) {
				play("2");
			} else if (lives==1) {
				play("1");
			} else {
				play("0");
			}
		}
		public override function update():void {
			
			super.update();
		}
		
	}

}