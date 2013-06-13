PFont f;                          // STEP 2 Declare PFont variable
  
void setup() {
  size(200,200);
  f = createFont("Arial",16,true); // STEP 3 Create Font
}

void draw() {
  background(255);
  textFont(f,16);                 // STEP 4 Specify font to be used
  fill(0);                        // STEP 5 Specify font color 
  text("Hello Strings!",10,100);  // STEP 6 Display Text
  noFill();
  stroke(120);
  rect(10,100,30,30);
}
