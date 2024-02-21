package pacman;

import javafx.scene.CustomNode;
import javafx.scene.Group;
import javafx.scene.Node;
import javafx.scene.paint.Color;
import javafx.scene.shape.Line;
import javafx.scene.shape.Rectangle;
import pacman.MazeData;

/**
* @author Henry Zhang
*/

public class Maze extends CustomNode {

var group : Group =
Group {
 content: [
   Rectangle {
      x:0
      y:0
      width: MazeData.calcGridX(MazeData.GRID_SIZE + 2)
      height: MazeData.calcGridY(MazeData.GRID_SIZE + 3)
      fill: Color.BLACK
    },

   WallRectangle{ x1:0 y1:0 x2:MazeData.GRID_SIZE y2:MazeData.GRID_SIZE },

   WallRectangle { x1:14 y1:-0.5 x2:15 y2:4 },

   WallRectangle { x1:2 y1:2 x2:5 y2:4 },
   WallRectangle { x1:7 y1:2 x2:12 y2:4 },
   WallRectangle { x1:17 y1:2 x2:22 y2:4 },
   WallRectangle { x1:24 y1:2 x2:27 y2:4 },
   WallRectangle { x1:2 y1:6 x2:5 y2:7 },

   WallRectangle { x1:14 y1:6.2 x2:15 y2:10 },
   WallRectangle { x1:10 y1:6 x2:19 y2:7 },

   WallRectangle { x1:7.5 y1:9 x2:12 y2:10 },
   WallRectangle { x1:7 y1:6 x2:8 y2:13 },
   WallBlackLine { x1:8 y1:9 x2:8 y2:10 },

   WallRectangle { x1:17 y1:9 x2:21.5 y2:10 },
   WallRectangle { x1:21 y1:6 x2:22 y2:13 },

   WallRectangle { x1:24 y1:6 x2:27 y2:7 },

   WallRectangle { x1:-1 y1:9 x2:5 y2:13 },
   WallRectangle { x1:24 y1:9 x2:MazeData.GRID_SIZE + 1 y2:13 },

   //cage and the gate
   WallRectangle { x1:10 y1:12 x2:19 y2:17 },
   WallRectangle { x1:10.5 y1:12.5 x2:18.5 y2:16.5 },
   Rectangle {
      x: MazeData.calcGridX(13)
      width: MazeData.GRID_GAP * 3
      y: MazeData.calcGridY(12)
      height: MazeData.GRID_GAP / 2
      stroke: Color.GREY
      fill: Color.GREY
    },

   WallRectangle { x1:7.5 y1:19 x2:12 y2:20 },
   WallRectangle { x1:7 y1:15 x2:8 y2:23 },

   WallRectangle { x1:17 y1:19 x2:21.5 y2:20 },
   WallRectangle { x1:21 y1:15 x2:22 y2:23 },

   WallRectangle { x1:14 y1:19 x2:15 y2:27 },
   WallRectangle { x1:10 y1:22 x2:19 y2:23 },

   WallRectangle { x1:2 y1:25 x2:5 y2:27 },
   WallRectangle { x1:17 y1:25 x2:22 y2:27 },

   WallRectangle { x1:7 y1:25 x2:12 y2:27 },
   WallRectangle { x1:24 y1:25 x2:27 y2:27 },

   WallRectangle { x1:-1 y1:15 x2:5 y2:17 },
   WallRectangle { x1:4 y1:19 x2:5 y2:23 },
   WallRectangle { x1:2 y1:19 x2:4.5 y2:20 },
   WallRectangle { x1:-1 y1:22 x2:2 y2:23 },

   WallRectangle { x1:24 y1:15 x2:MazeData.GRID_SIZE + 1 y2:17 },
   WallRectangle { x1:24 y1:19 x2:25 y2:23 },
   WallRectangle { x1:24.5 y1:19 x2:27 y2:20 },
   WallRectangle { x1:27 y1:22 x2:MazeData.GRID_SIZE + 1 y2:23 },

   WallBlackRectangle { x1:-2 y1:8 x2:0 y2:MazeData.GRID_SIZE },
   WallBlackRectangle {
       x1:MazeData.GRID_SIZE
       y1:8
       x2:MazeData.GRID_SIZE + 2
       y2:MazeData.GRID_SIZE
    },

   Rectangle {
      x: MazeData.calcGridX(-0.5)
      y: MazeData.calcGridY(-0.5)
      width: (MazeData.GRID_SIZE + 1) * MazeData.GRID_GAP
      height: (MazeData.GRID_SIZE + 1) * MazeData.GRID_GAP
      strokeWidth: MazeData.GRID_STROKE
      stroke: Color.BLUE
      fill: null
      arcWidth: 12
      arcHeight: 12
    },
   Line {
      startX: MazeData.calcGridX(-0.5)
      endX: MazeData.calcGridX(-0.5)
      startY: MazeData.calcGridY(13)
      endY: MazeData.calcGridY(15)
      stroke: Color.BLACK
      strokeWidth: MazeData.GRID_STROKE + 1
    },
   Line {
      startX: MazeData.calcGridX(MazeData.GRID_SIZE + 0.5)
      endX: MazeData.calcGridX(MazeData.GRID_SIZE + 0.5)
      startY: MazeData.calcGridY(13)
      endY: MazeData.calcGridY(15)
      stroke: Color.BLACK
      strokeWidth: MazeData.GRID_STROKE + 1
    },
   Line {
      startX: MazeData.calcGridX(-0.5)
      endX: MazeData.calcGridX(0)
      startY: MazeData.calcGridY(13)
      endY: MazeData.calcGridY(13)
      stroke: Color.BLUE
      strokeWidth: MazeData.GRID_STROKE
    },
   Line {
      startX: MazeData.calcGridX(-0.5)
      endX: MazeData.calcGridX(0)
      startY: MazeData.calcGridY(15)
      endY: MazeData.calcGridY(15)
      stroke: Color.BLUE
      strokeWidth: MazeData.GRID_STROKE
    },
   Line {
      startX: MazeData.calcGridX(MazeData.GRID_SIZE + 0.5)
      endX: MazeData.calcGridX(MazeData.GRID_SIZE)
      startY: MazeData.calcGridY(13)
      endY: MazeData.calcGridY(13)
      stroke: Color.BLUE
      strokeWidth: MazeData.GRID_STROKE
    },
   Line {
      startX: MazeData.calcGridX(MazeData.GRID_SIZE + 0.5)
      endX: MazeData.calcGridX(MazeData.GRID_SIZE)
      startY: MazeData.calcGridY(15)
      endY: MazeData.calcGridY(15)
      stroke: Color.BLUE
      strokeWidth: MazeData.GRID_STROKE
    },

 ]
}; // end Group

public override function create(): Node {
    return group;
} // end create()

}