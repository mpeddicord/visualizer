import ddf.minim.*;

Minim minim;
AudioInput micInput;
PShader toon;
 
void setup() {
  minim = new Minim(this);
  micInput = minim.getLineIn();
  
  size(640, 360, P3D);
  noStroke();
  fill(204);
  toon = loadShader("frag.glsl", "vert.glsl");
  toon.set("fraction", 0.5);
}

void draw() {
  toon.set("colorin", random(1), random(1), random(1));
  shader(toon);
  background(0);
  stroke(255); 
  float dirY = (mouseY / float(height) - 0.5) * 2;
  float dirX = (mouseX / float(width) - 0.5) * 2;
  directionalLight(204, 204, 204, -dirX, -dirY, -1);
  translate(width/2, height/2);
  sphere(120 + (micInput.mix.get(0) * 50));
  
  /*for(int i = 0; i < micInput.bufferSize() - 1; i++)
  {
    line(i, 50 + micInput.left.get(i)*50, i+1, 50 + micInput.left.get(i+1)*50);
    line(i, 150 + micInput.right.get(i)*50, i+1, 150 + micInput.right.get(i+1)*50);
  }*/
}
