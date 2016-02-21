size(400, 400);
background(255);

float line = 0;


for (int x = 0; x <= width; x += 10) {
  for (int y = 0; y <= height; y += 10) {
    float dx = 7*(1-2.0*x/width);
    float dy = 7*(1-2.0*y/height);
    line(x, y, x+dx, y+dy);
  }
    //println("line");
    //println(height);
    //println(width);

}

//line is getting called 41 times
// 400 lines are horizontal
// 400 lines are vertical
