package Entities 
{
	import org.flixel.FlxPoint;
	import org.flixel.*;
	import org.flixel.plugin.photonstorm.FlxCollision;
	/**
	 * ...
	 * @author Slymodi
	 */
	
	public class Kill_enemy extends FlxSprite 
	{
		[Embed(source = "../../assets/Kill_sprite.png")]public static const Spr:Class;
		public var isHit:Boolean;
		public var life:int =2;
		protected var scalef:FlxPoint = new FlxPoint(5, 5);
		protected var hitcounter:Number = 0;
		public function Kill_enemy(x:int,y:int) 
		{
			trace("made");
			isHit = false;
			super(x, y, Spr);
			scale = scalef;
			loadGraphic(Spr, true, false, 16, 16, false);
			addAnimation("idle", [0, 1], 2, true);
			addAnimation("hit", [2, 3, 2, 3, 2, 3, 2, 3, 2, 3], 8, true);
			play("idle");
		}
		public override function update():void {
			if (hitcounter<=0) {
				play("idle");
			}
			if (hitcounter>0) {
				hitcounter -= FlxG.elapsed;
			}
			super.update();
		}
		public function hit():void {
			if (hitcounter<=0){
			play("hit");
			life--;
			hitcounter=1
			}
		}
	}

}