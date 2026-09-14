package;

import flixel.text.FlxText.FlxTextAlign;
import flixel.FlxState;
import flixel.FlxG;

class MenuState extends FlxState
{
	var gameTitle = "Game Title Here";

	override public function create()
	{
		super.create();

		var text = new flixel.text.FlxText(0, 20, 0, gameTitle, 8);
		//text.screenCenter();
		text.alignment = FlxTextAlign.CENTER;
		add(text);

		//var sprite2 = new flixel.FlxSprite(0, 0, "assets/images/playerFront.png");
		//sprite2.screenCenter();
		//add(sprite2);

		//var button = new flixel.ui.FlxButton(0, 0, "Start Game", function() {
		//	FlxG.switchState(PlayState.new);
		//});
		//button.screenCenter();
		//add(button);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
