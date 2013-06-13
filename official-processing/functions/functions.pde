void setup() {
  size(800, 700);
  background(51);
  noStroke();
  noLoop();
}

void draw() {
  drawCircle(width*0.25, height*0.2, 200, 4);
  drawCircle(width*0.5, height*0.4, 300, 10);
  drawCircle(width*0.75, height*0.3, 120, 6);
  
  drawSquare(width*0.25, height*0.7, 100, 4);
  drawSquare(width*0.5, height*0.8, 150, 10);
  drawSquare(width*0.75, height*0.7, 120, 6);
}

void drawCircle(float xloc, float yloc, int size, int num) {
  float grayvalues = 255/num;
  float steps = size/num;
  for (int i = 0; i < num; i++) {
    fill(i*grayvalues);
    ellipse(xloc, yloc, size - i*steps, size - i*steps);
  }
}

void drawSquare(float xloc, float yloc, int size, int num) {
  float grayvalues = 255/num;
  float steps = size/num;
  for(int i = 0; i < num; i++) {
    fill((num-i)*grayvalues);
    rectMode(CENTER);
    rect(xloc, yloc, size - i*steps, size - i*steps);
  }
}
