package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxColor;

class PlayState extends FlxState
{	
	var sprite:FlxSprite;
	override public function create()
	{
		super.create();

		sprite = new FlxSprite();
		sprite.makeGraphic(300,300,FlxColor.WHITE);
		for(x in 0 ... 300){
			for(y in 0 ... 300){
				if(x%2 == 1 && y%2 == 1) 
					sprite.pixels.setPixel(x,y,0x0000ff);
				if(x < 5 || y < 5 || x > 295 || y > 295 )                 
					sprite.pixels.setPixel(x,y,0xffffff);          
				             
			}
		}
		 add(sprite);     


	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
		sprite.x +=100 * elapsed;
	}
}
