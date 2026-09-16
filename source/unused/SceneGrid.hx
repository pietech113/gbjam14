import openfl.filters.ColorMatrixFilter;

class SceneGrid {
    public var tileSize:Int = 32;
    public var width:Int;
    public var height:Int;
    public var contents: Array<Array<MapCell>>;

    public function new() {
        this.width = Math.floor(160*3/tileSize);
        this.height = Math.floor(144*3/tileSize);
        this.contents =  new Array<Array<MapCell>>();

        var i = 0;
        for(h in 0...this.height) {
            for(w in 0...width) {
                contents[h][w] = new MapCell("assets/images/grass1.png");
            }
        }
    }
}