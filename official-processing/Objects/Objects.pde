class Car {
  color c;
  float xpos;
  float ypos;
  float xspeed;
  
  Car (color tempC, float tempXpos, float tempYpos, float tempXspeed) {
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
  }
  
  void display() {
    rectMode(CENTER);
    fill(c);
    rect(xpos,ypos,20,10);
  }
  
  void drive() {
    xpos = xpos + xspeed;
    if (xpos > width) {
      xpos = 0;
    }
  }
}

Car myCar1, myCar2;

void setup() {
  myCar1 = new Car(color(255,0,0),10,20,2);
  myCar2 = new Car(color(0,255,127),20,40,3);
}

void draw() {
  background(255);
  myCar1.drive();
  myCar2.drive();
  myCar1.display();
  myCar2.display();
}
