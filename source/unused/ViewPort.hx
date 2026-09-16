import flixel.FlxState;

class ViewPort {
    public var sceneGrid:SceneGrid;
    public var x:Int;
    public var y:Int;

    public function new(sceneGrid) {
        this.sceneGrid = sceneGrid;
        this.x = Std.int(sceneGrid.width / 3 + 1);
        this.y = Std.int(sceneGrid.height / 3 + 1);
    }

    public function setSceneGrid(sceneGrid:SceneGrid) {
        this.sceneGrid = sceneGrid; 
    }

    public function drawScene(state:FlxState) {
        for(h in (x...sceneGrid.height)) {
            for (w in (0...sceneGrid.width)) {
                state.add(this.sceneGrid.contents[h][w]);
            }
        }
    }
}