class Walker {
  float x;
  float y;
  // constructor of the object Walker
  // initialize the walker's start position
  Walker() {
    x = width/2;
    y = height/2;
  }
  // display walker's current position
  void display() {
    stroke(0);
    point(x,y);
  }
  // random 0,1,2,3 up, down, left, right totoally 4 steps
  void step4() {
    int choice = int(random(4));
    if (choice == 0) { 
      x+=1; 
    } else if (choice == 1) { 
      x-=1; 
    } else if (choice == 2) {
      y+=1; 
    } else { 
      y-=1; 
    }
  }
  // random 8 steps, 8 directions, -1, 0, 1, 3*3-1=8
  void step8() {
    int stepx = int(random(3))-1;
    int stepy = int(random(3))-1;
    x += stepx;
    y += stepy;
  }
  // randow float steps x, y
  void stepf() {
    float stepx = random(-1, 1);
    float stepy = random(-1, 1);
    x += stepx;
    y += stepy;
  } 
}

Walker w;

void setup() {
  size(640, 360);
  w = new Walker();
  background(255);
}

void draw() {
  w.stepf();
  w.display();
}
