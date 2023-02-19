#version 300 es

layout(location = 0) in vec2 aVertexPosition;
layout(location = 1) in vec3 aVertexColor;

out vec3 vFragColor;
out vec2 vFragPosition;

mat3 translate(float tx, float ty){
    mat3 mat_translate = mat3(vec3(1,0,0), vec3(0,1,0), vec3(tx,ty,1));
    return mat_translate;
}

mat3 scale(float sx, float sy){
    mat3 mat_scale = mat3(vec3(sx,0,0), vec3(0,sy,0), vec3(0,0,1));
    return mat_scale;
}

mat3 rotate(float a){

    mat3 mat_rotate = mat3(vec3(cos(radians(a)),sin(radians(a)),0), vec3(-sin(radians(a)),cos(radians(a)),0), vec3(0,0,1));
    return mat_rotate;
}



void main() {
    vFragColor = aVertexColor;

    //vec2 transformed = (rotate(45.0)*translate(-0.2,-0.5)*vec3(aVertexPosition, 1)).xy;
    gl_Position = vec4(aVertexPosition, 0, 1);

    vFragPosition = aVertexPosition;
}