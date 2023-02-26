#version 300 es

layout(location = 0) in vec2 aVertexPosition;
layout(location = 1) in vec2 aVertexTexture;

out vec3 vFragColor;
out vec2 vFragPosition;
out vec2 vTextureCoord;

uniform mat3 uModelMatrix;


void main(){
    
    vec2 transformed = (uModelMatrix*vec3(aVertexPosition, 1)).xy;

    vFragColor = vec3(1.0,0.0,0.0);
    vFragPosition = aVertexPosition;
    vTextureCoord = aVertexTexture;
    
    gl_Position = vec4(transformed, 0, 1);
}