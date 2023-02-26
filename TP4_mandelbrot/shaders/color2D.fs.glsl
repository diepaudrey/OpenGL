#version 300 es
precision mediump float;

in vec3 vFragColor;
in vec2 vFragPosition;

out vec4 fFragColor;

void main() {
    fFragColor = vec4(vFragColor,1.0);
}
