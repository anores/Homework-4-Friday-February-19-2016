final int GRID_SIZE = 10;
final float GRID_PADDING = 50;

void setup() {   //only runs ONCE
  size(500, 500);
  mouseX = mouseY = 250;  // Makes mouse start at the SAME PLACE
}

//Float DOESN'T necesarily have to be in an ARRAY
//floats contain all intergers 

//PEMDAS
float gridToCoordinates(int input) {
  return GRID_PADDING+input*(500 - 2*GRID_PADDING)/(GRID_SIZE-1);
  //          50     +input*(500 - 100)  /   (9)
  //          50     +input*(400)/(9)
  //
}

void draw() { //repeats over and over 
  background(0);

  noStroke();
  fill(255);
  // for (start;stop;step)
  for (int i = 0; i < GRID_SIZE; ++i) { //i++ same as ++i
    for (int j = 0; j < GRID_SIZE; ++j) {
      float distance = sqrt(pow(mouseX-gridToCoordinates(i), 2) + pow(mouseY-gridToCoordinates(j), 2));
      //sqrt calculates the square root of a number
      float ellipseSize = min(66, 1000.0/distance);
      //min fucntion will alwyas choose the smallest number
      ellipse(gridToCoordinates(i), gridToCoordinates(j), ellipseSize, ellipseSize);
    }
  }
}

//DE-BUG LOG
//changed:
//float ellipseSize = min(100, 1000.0/distance);
//TO
//float ellipseSize = min(66, 1000.0/distance);
//I guessed that it was 66 because the distance from the center of the circle (when it was the maximum)
//is 100.  The other cirles around are around 1/3 of the size of the circle, so I changed the biggest circle
//that changes size to around 2/3 of the size of the smaller circles
