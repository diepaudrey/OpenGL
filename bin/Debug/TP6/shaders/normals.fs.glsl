#version 300 es
precision mediump float; 

in vec3 vPosition_vs;
in vec4 vNormal_vs;
in vec2 vTexCoords;


out vec3 fFragColor;

void main(){
    //fFragColor = normalize(vec3(vNormal_vs));
    fFragColor = vec3(0.5f,0.2f,0.8f);

}