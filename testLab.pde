//Test lab variables
boolean testLabEnabled = true;
Minim minim;
AudioPlayer audioInput;
BeatDetect beat;
AudioPlayer audio;
float currY = 0;
float currX = 0;
float newY = 0;
float newX = 0;
float lastChange = 0;

void testLabSetup(){
  //minim = new Minim(this);
  //audio = minim.loadFile("earthbound.mp3");
  
  //beatSphere = new BeatSphere();
  
  //audio.play();
  //micInput = minim.getLineIn(Minim.STEREO, 512, 44100f, 16);
  //audioInput = minim.loadFile("samo.mp3");
  //audioInput.play();
  
  //beat = new BeatDetect();
  
  //fill(204);
}

void testLabDraw(){
  
  float dirY = 0;//(mouseY / float(height) - 0.5) * 2;
  float dirX = 0;//(mouseX / float(width) - 0.5) * 2;
  
  int now = millis();
  
  //beat.detect(audio.mix);
  
  /*
  if(beat.isOnset()) {
    sphere(250); 
  } else {
     
  }
  */
  
  
  
  /*
  if(beat.isOnset())//now - lastChange > 5000) //onBeat
  {
    lastChange = now;
    newY = (random(2) - 1);
    newX = (random(2) - 1); 
  }
  */
  
  //currY += (newY - currY) * 0.1;
  //currX += (newX - currX) * 0.1;
 
   
  //sphere(120 + (audio.mix.get(0) * 50));
  
  //sphere(lerp(120, 120 + (audioInput.left.get(0) * 50), 10));
  
  
  /*for(int i = 0; i < micInput.bufferSize() - 1; i++)
  {
    line(i, 50 + micInput.left.get(i)*50, i+1, 50 + micInput.left.get(i+1)*50);
    line(i, 150 + micInput.right.get(i)*50, i+1, 150 + micInput.right.get(i+1)*50);
  }*/
}
