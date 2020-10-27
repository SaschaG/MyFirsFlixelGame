package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxColor;

class PlayState extends FlxState
{	
	var text:FlxText;
	override public function create()
	{
		super.create();
		text = new FlxText(0,0,FlxG.width,"Hello World!");
		text.setFormat(null,64,FlxColor.RED,FlxTextAlign.CENTER);
		add(text);

	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
		text.y++;
		if(text.y > FlxG.height)
			text.y = -64;
	}
}
