package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.input.FlxKeyManager;
import flixel.input.keyboard.FlxKeyList;
import flixel.input.keyboard.FlxKeyboard;
import flixel.input.mouse.FlxMouseEventManager;
import flixel.tweens.FlxTween;

class PlayState extends FlxState
{	
	var sprite:FlxSprite;
	var scaleFactor = 0.1;
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
		
		if(FlxG.mouse.overlaps(sprite)){
			if(FlxG.mouse.pressed){
				sprite.setPosition(FlxG.mouse.getPosition().x - sprite.width /2, FlxG.mouse.getPosition().y - sprite.height / 2);
			}
		}
		if(FlxG.mouse.justReleasedRight){
			sprite.x = FlxG.width/2 -sprite.width/2;
			sprite.y = FlxG.height/2 -sprite.height/2;
			sprite.scale.set(1,1);
		}
		if(FlxG.mouse.wheel !=0){
			sprite.scale.add(FlxG.mouse.wheel * scaleFactor, FlxG.mouse.wheel * scaleFactor);
		}
	}
}
