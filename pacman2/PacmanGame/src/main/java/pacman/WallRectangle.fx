package pacman;

import javafx.scene.CustomNode;
import javafx.scene.Node;
import javafx.scene.paint.Color;
import javafx.scene.shape.Rectangle;
import pacman.MazeData;

/**
* @author Henry Zhang
*/

public class WallRectangle extends CustomNode {

public var x1: Number;
public var y1: Number;
public var x2: Number;
public var y2: Number;

public override function create(): Node {
 Rectangle {
    x: MazeData.calcGridX(x1)
    y: MazeData.calcGridY(y1)
    width: MazeData.calcGridX(x2) - MazeData.calcGridX(x1)
    height: MazeData.calcGridY(y2) - MazeData.calcGridY(y1)
    strokeWidth: MazeData.GRID_STROKE
    stroke: Color.BLUE
    arcWidth: 12
    arcHeight: 12
  }
}
}