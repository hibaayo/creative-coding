//25 study drinks: duration in minutes
int[] durations = {
  45, 30, 15, 60, 50,
  20, 40, 35, 10, 55,
  25, 15, 30, 50, 45,
  20, 60, 10, 35, 15,
  40, 50, 15, 30, 45
};

// drink types: 1 = green tea (orange), 2 = matcha (Green), 3 = water (Blue)
int[] types = {
  1, 2, 3, 1, 2,
  3, 2, 1, 3, 1,
  2, 3, 2, 1, 2,
  3, 1, 3, 2, 3,
  1, 1, 3, 2, 2
};

void setup() {
  size(600, 600);
}

void draw() {
  background(30);
 
  fill(255);
  textSize(20);
  text("Dear Data: 25 Study Drinks", 50, 45);
 
  // drawing 25 circles in a 5x5 grid
  for (int i = 0; i < 25; i++) {
    int col = i % 5;
    int row = i / 5;
   
    float x = 100 + col * 100;
    float y = 120 + row * 100;
   
    // picking color by drink type
    if (types[i] == 1) fill(220, 130, 70);      // Green Tea = Orange
    else if (types[i] == 2) fill(110, 190, 130); // Match = Green
    else fill(90, 170, 230);                     // Water = Blue
   
    // Call our method that returns a value for the circle size
    float circleSize = getCircleSize(durations[i]);
   
    noStroke();
    circle(x, y, circleSize);
   
    // draw number underneath
    fill(200);
    textSize(12);
    text("#" + (i + 1), x - 8, y + 40);
  }
}

//  method that returns a value
float getCircleSize(int minutes) {
  return minutes * 1.1;
}
