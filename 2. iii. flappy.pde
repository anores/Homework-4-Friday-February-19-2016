float[] values;
int index;

void setup() {
  size(600, 250);
  background(0);

  values = new float[width/3];
  index = 0;
}

float maybeRandomHeight() {
  if (random(10) < 1) {
    return random(height/3, 2*height/3);
  } else {
    return 0;
  }
}

void draw() {
  background(255);
  
    int m = millis();


  values[index] = maybeRandomHeight();
  index = index + 1;
  if (index >= values.length) {
    index = 0;
  }

  for (int i = 0; i < values.length; ++i) {
    int realIndex = index + i;
    if (realIndex >= values.length) {
      realIndex -= values.length;
    }
    line(i*3, height-values[realIndex], i*3, height);
    
    //println(realIndex);
  }
}

// a. The highest value for variable realIndex is 199
//    The lowest value for variable realIndex is 0
//b. In 10 seconds, variable index reset to 0, __________
