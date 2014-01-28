

uniform mat4 transform;
uniform mat3 normalMatrix;
uniform vec3 lightNormal;

uniform vec3 colorin;
uniform int time;

attribute vec4 vertex;
attribute vec4 color;
attribute vec3 normal;

varying vec4 vertColor;
varying vec3 vertNormal;
varying vec3 vertLightDir;

void main() {
  float x = sin(time/1000.0f + vertex.x/20.0f) * 100; 
  float y = sin(time/1000.0f + vertex.y/20.0f) * 100;
  gl_Position = transform * vertex + vec4(x, y, 0, 0); 
  vertColor = vec4(colorin.x, colorin.y, colorin.z, 1.0);//color;
  vertNormal = normalize(normalMatrix * normal);
  vertLightDir = -lightNormal;
}