#version 300 es
precision mediump float;

in vec3 vFragColor;
in vec2 vFragPosition;

out vec4 fFragColor;

void main() {
    float alpha = 0.5; //opacité, proche de 1 = 100%
    float beta = 40.0; //a quel point ça se diffuse 
    vec2 center = vec2(0.0,0.0);
    float distance = distance(vFragPosition,center);

    float attenuation_func = alpha*exp(-beta*distance*distance);



    fFragColor = vec4(attenuation_func*vFragColor, 1.0);
}
