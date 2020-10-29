package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.input.FlxKeyManager;
import flixel.input.keyboard.FlxKeyList;
import flixel.input.keyboard.FlxKeyboard;
import flixel.tweens.FlxTween;

class PlayState extends FlxState
{	
	var sprite:FlxSprite;
	override public function create()
	{
		super.create();

		sprite = new FlxSprite();
		sprite.loadGraphic(AssetPaths.Battleship_1x3_top__png);
		sprite.x = FlxG.width/2 -sprite.width/2;
		sprite.y = FlxG.height/2 -sprite.height/2;
		add(sprite);     

		

	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
		if(FlxG.keys.pressed.LEFT){
			sprite.x-= 120 * elapsed;
		}
		if(FlxG.keys.pressed.RIGHT){
			sprite.x+= 120 * elapsed;
		}
		if(FlxG.keys.pressed.UP){
			sprite.y-= 120*elapsed;
		}
		if(FlxG.keys.pressed.DOWN){
			sprite.y+= 120 * elapsed;
		}

		if(FlxG.keys.anyJustPressed([ ESCAPE, SPACE])){
			sprite.x = FlxG.width/2 -sprite.width/2;
			sprite.y = FlxG.height/2 -sprite.height/2;
		}
	}
}
