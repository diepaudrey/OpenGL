#version 300 es
precision mediump float;

in vec3 vFragColor;
in vec2 vFragPosition;

out vec4 fFragColor;

void main() {
    


    //------------TEXTURES-------------
    //float alpha = 0.5; //opacité, proche de 1 = 100%
    //float beta = 40.0; //a quel point ça se diffuse 
    //vec2 center = vec2(0.0,0.0);
    //float distance = distance(vFragPosition,center);
    //float halo_texture = alpha*exp(-beta*distance*distance);
    //float soft_damer_texture = length(fract(5.0*vFragPosition)); //damier flou
    //float soft_damer2_texture= length(abs(fract(5.0*vFragPosition)*2.0-1.0));
    //float damier_texture = mod(floor(10.0 * vFragPosition.x) + floor(10.0 * vFragPosition.y), 2.0); //damier
    //float polka_dot_texture = smoothstep(0.3, 0.32, length(fract(5.0 * vFragPosition) - 0.5)); //polka dot
    
    float bricks_texture = smoothstep(0.4, 0.5, max(abs(fract(8.0 * vFragPosition.x - 0.5 * mod(floor(8.0 * vFragPosition.y), 2.0)) - 0.5), abs(fract(8.0 * vFragPosition.y) - 0.5)));

    fFragColor = vec4(texture*vFragColor, 1.0);
}
