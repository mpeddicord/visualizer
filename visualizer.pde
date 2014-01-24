import ddf.minim.*;
import ddf.minim.analysis.*;

Minim minim;
//AudioInput micInput;
AudioPlayer audioInput;
BeatDetect beat;

PShader toon;
 
void setup() {
  minim = new Minim(this); 
  //    MIC INPUT
  //micInput = minim.getLineIn(Minim.STEREO, 1024, 44100f, 16);
  
  audioInput = minim.loadFile("samo.mp3");
  audioInput.play();
  
  beat = new BeatDetect();
  
  frameRate(30);
  
  size(640, 360, P3D);
  noStroke();
  fill(204);
  
  toon = loadShader("frag.glsl", "vert.glsl");
  toon.set("fraction", 0.5);
}

void draw() {
  background(0);
  stroke(255); 
  
  toon.set("colorin", random(1), random(1), random(1));
  shader(toon);
  
  float dirY = (mouseY / float(height) - 0.5) * 2;
  float dirX = (mouseX / float(width) - 0.5) * 2;
  
  directionalLight(204, 204, 204, -dirX, -dirY, -1);
  
  translate(width/2, height/2);
  
  //sphere(lerp(120, 120 + (audioInput.left.get(0) * 50), 10));
  
  beat.detect(audioInput.mix);
  if(beat.isOnset()) {
    sphere(250); 
  } else {
    sphere(120); 
  }
  
  
  
  /*for(int i = 0; i < micInput.bufferSize() - 1; i++)
  {
    line(i, 50 + micInput.left.get(i)*50, i+1, 50 + micInput.left.get(i+1)*50);
    line(i, 150 + micInput.right.get(i)*50, i+1, 150 + micInput.right.get(i+1)*50);
  }*/
}
