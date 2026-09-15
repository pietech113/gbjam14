package;

import openfl.ui.Keyboard;
import flixel.text.FlxText.FlxTextAlign;
import flixel.FlxState;
import flixel.FlxG;

class MenuState extends FlxState
{
	var gameTitle = "Game Title Here";
	//var colorPalette = new ColorPalette();

	override public function create()
	{
		super.create();

		var titleText = new flixel.text.FlxText(0, 20, 0, gameTitle, 10);
		//text.screenCenter();
		Utils.SetColor(titleText, ColorPalette.Primary);
		titleText.alignment = FlxTextAlign.CENTER;
		add(titleText);

		var startText = new flixel.text.FlxText(0, 0, 0, "Press Start (Space)", 8);
		startText.screenCenter();
		Utils.SetColor(startText, ColorPalette.Light);
		add(startText);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);

		// listen for keyboard input and then switch state
		if (FlxG.keys.pressed.SPACE)
		{
			FlxG.switchState(PlayState.new);
		}
	}
}
