#version 300 es
precision mediump float;

in vec3 vFragColor;


out vec3 fFragColor;

void main() {

    float grey = dot(vFragColor.rgb, vec3(0.3,0.3,0.3));

    fFragColor = vec3(grey);
}
