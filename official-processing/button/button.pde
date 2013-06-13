class Button {
  int xpos, ypos;
  int w, h;
  color buttonColor;
  color textColor;
  boolean isOver;
  String t;
  
  Button (int tempXpos, int tempYpos, String tempText) {
    xpos = tempXpos;
    ypos = tempYpos;
    w = 40;
    h = 30;
    buttonColor = color(200, 200, 200);
    textColor = color(50, 50, 50);
    t = tempText;
  }
  
  void display() {
    fill(buttonColor);
    rectMode(CENTER);
    rect(xpos, ypos, w, h);
    fill(textColor);
    textAlign(CENTER);
    text(t, xpos, ypos);
  }
}

Button btn1, btn2;

void setup() {
  size(800, 600);
  background(255);
  btn1 = new Button(30,30,"Abtn");
  btn2 = new Button(80,30,"Bbtn");
}

void draw() {
  btn1.display();
  btn2.display();
}
