package pacman;

import javafx.scene.Scene;
import javafx.stage.Stage;

/**
* @author Henry Zhang
*/

Stage{
title: "PACMAN"
width: MazeData.calcGridX(MazeData.GRID_SIZE + 2)
height: MazeData.calcGridY(MazeData.GRID_SIZE + 5)
scene: Scene{
         content: [ Maze {}
         ]
        }
}