attribute vec4 u_position;
attribute vec2 u_texCoord;

varying vec2 v_texCoord;

void main(void) {
    gl_Position = u_position;
    v_texCoord = u_texCoord;
}