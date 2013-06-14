class Button {
  int xpos, ypos;
  int w, h;
  color buttonColor, buttonColorIn, buttonColorOut;
  color textColor;
  String t;
  
  Button (int tempXpos, int tempYpos, String tempText) {
    xpos = tempXpos;
    ypos = tempYpos;
    w = 60;
    h = 35;
    buttonColorOut = color(200, 200, 200);
    buttonColorIn = color(230, 230, 230);
    buttonColor = buttonColorOut;
    textColor = color(50, 50, 50);
    t = tempText;
  }
  
  void display() {
    fill(buttonColor);
    rect(xpos, ypos, w, h);
    fill(textColor);
    text(t, xpos+0.2*w, ypos+0.6*h);
  }
  
  boolean isOver() {
    if (mouseX >= xpos && mouseX <= xpos+w && mouseY >= ypos && mouseY <= ypos+h) {
      buttonColor = buttonColorIn;
      return true;
    } else {
      buttonColor = buttonColorOut;
      return false;   
    }
  }
  
  boolean isPressed() {
    if (isOver() && mousePressed) {
      return true;
    } else {
      return false;
    }
  }
}

Button btn1, btn2, btnExit;

void setup() {
  size(960, 600);
  background(255);
  btn1 = new Button(50,30,"Abtn");
  btn2 = new Button(120,30,"Bbtn");
  btnExit = new Button(190,30,"Exit");
}


void draw() {
  btn1.display();
  btn2.display();
  btnExit.display();
  if(btn1.isOver() && mousePressed) {
    text("btn1.press",100,100);
  }
  if(btnExit.isPressed()) {
    exit();
  }
}
