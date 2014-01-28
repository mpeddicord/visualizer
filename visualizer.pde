import ddf.minim.*;
import ddf.minim.analysis.*;

BeatSphere beatSphere1;
BeatSphere beatSphere2;
BeatSphere beatSphere3;

BeatSphere[] beatSpheres;
int balls = 100;
 
void setup() {
  size(640, 360, P3D);
  noStroke();
  frameRate(30);

  if(testLabEnabled) testLabSetup();
    
  beatSpheres = new BeatSphere[balls];
  for(int i = 0; i < balls; i++)
  {
    beatSpheres[i] = new BeatSphere(new PVector(0,0,30), 15, loadShader("frag.glsl", "vert.glsl"));
  }
  
  /*
  beatSphere1 = new BeatSphere(new PVector(0,0,30), 15, loadShader("frag.glsl", "vert.glsl"));
  beatSphere2 = new BeatSphere(new PVector(0,0,30), 15, loadShader("frag.glsl", "vert.glsl"));
  beatSphere3 = new BeatSphere(new PVector(0,0,30), 15, loadShader("frag.glsl", "vert.glsl"));
  */  
}

void draw() {
  background(122);  
  translate(width/2, height/2);
  
  float dirY = (mouseY / float(height) - 0.5) * 2;
  float dirX = (mouseX / float(width) - 0.5) * 2;
  
  directionalLight(255, 255, 255, dirX, dirY, -1);
  
  float now = millis();
  float thirdCircle = 2*PI/3;
  float spacing = 100;
  float timeMult = 0.001;
  now *= timeMult;
  /*
  beatSphere1.setPos(cos(now + thirdCircle) * spacing, sin(now + thirdCircle) * spacing, 0);
  beatSphere2.setPos(cos(now + thirdCircle * 2) * spacing, sin(now + thirdCircle * 2) * spacing, 0);
  beatSphere3.setPos(cos(now + thirdCircle * 3) * spacing, sin(now + thirdCircle * 3) * spacing, 0);
  */
  float ciclePart = 2*PI/ balls;
  for(int i = 0; i < balls; i++)
  {
    beatSpheres[i].setPos(cos(now + ciclePart * i) * spacing, sin(now + ciclePart * i) * spacing, 0);
    beatSpheres[i].update();
    beatSpheres[i].draw();
  }
  /*
  beatSphere1.update();
  beatSphere1.draw();
  beatSphere2.update();
  beatSphere2.draw();
  beatSphere3.update();
  beatSphere3.draw();
  */
  
  
  if(testLabEnabled) testLabDraw();
}

