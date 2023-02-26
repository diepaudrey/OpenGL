#version 300 es
precision mediump float;

in vec3 vFragColor;
in vec2 vFragPosition;

out vec4 fFragColor;

vec2 complexSqr(vec2 z){
    return vec2(z.x*z.x- z.y*z.y, 2.0*z.x*z.y);
}

void main() {
    vec3 FragColor;
    vec2 z = vec2(vFragPosition.x, vFragPosition.y);
    int nb_iter = 50;
    for(int i=0; i<nb_iter; i++){
        z = complexSqr(z) + z;
        if(length(z)>2.0){
            FragColor = vec3(float(i)/float(nb_iter));
            break;

        }
        else{
            FragColor = vec3(0.0,0.0,0.0);
        }
    }
    

    fFragColor = vec4(FragColor, 1.0);
 
}
