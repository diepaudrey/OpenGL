#version 300 es
precision mediump float; 

in vec3 vPosition_vs;
in vec3 vNormal_vs;
in vec2 vTexCoords;


out vec4 fFragColor;

void main(){

    fFragColor = vec4(vNormal_vs, 1.0f);

}