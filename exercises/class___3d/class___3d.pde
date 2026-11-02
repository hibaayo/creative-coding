int angle;

void setup() {
  size(500, 500, P3D);
}

void draw() {
  background(255,255,255);
  stroke (255, 0, 0);
  strokeWeight(5.0);
  
  pushMatrix();
  translate(160,160,-160);
  rotateX(radians(angle));
  scale(0.2,4,2);
  box(60, 60, 60);
  popMatrix();
  
  pushMatrix();
  translate(160,160,-160);
  sphere(80);
  popMatrix();
  
  angle = angle + 1;
  drawAxes() ;
  
}
