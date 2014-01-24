void setup() {
  size(200, 200);
}

void draw() {
  background(0);
  textSize(32);
  //text(hello, 10, 30); 
  fill(0, 102, 153);
  line(width/2, height/2, mouseX, mouseY);
}
