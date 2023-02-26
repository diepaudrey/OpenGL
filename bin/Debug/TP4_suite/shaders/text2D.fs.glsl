#version 300 es
precision mediump float; 

in vec3 vFragColor;
in vec2 vFragPosition;
in vec2 vTextureCoord;

uniform vec3 uColor;
uniform sampler2D uTexture;

out vec3 fFragColor;

void main(){
    fFragColor = texture(uTexture, vTextureCoord).xyz;
}