class BeatSphere { 
  PVector _pos;
  PShader _shader;
  float _radius;

  BeatSphere () {
    _pos = new PVector(0,0,0);
    _shader = null;
    _radius = 10;
    init(); 
  }
  
  BeatSphere (PVector pos, float radius, PShader shader) {  
    _pos = pos;
    _radius = radius;
    _shader = shader;
    init();
  }
  
  void init(){
    
  }
  
  void setPos(float x, float y, float z){
     _pos.x = x;
     _pos.y = y;
     _pos.z = z; 
  }
  
  float getRadius(){
    return _radius;
  }
  
  void setRadius(float radius){
    _radius = radius; 
  }
  
  void update() {
    _shader.set("fraction", 0.5);
    
    PVector magic = new PVector(random(1), random(1), random(1));
    
    magic.normalize();
    
    float r = magic.x;
    float g = magic.y;
    float b = magic.z;
    
    _shader.set("colorin", r, g, b);
    _shader.set("time", millis());  
    
    //_pos.x = sin(millis()/ 1000.0f) * 50;
  }
  
  void draw() {
    shader(_shader);
    
    pushMatrix();
    translate(_pos.x, _pos.y, _pos.z);
    sphere(_radius);
    popMatrix();
  }
} 
