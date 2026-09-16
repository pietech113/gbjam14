class MapCell {
    var sprite: flixel.FlxSprite;

    public function new(spritePath:String) {
        this.sprite = new flixel.FlxSprite(0, 0, spritePath);
    }
}