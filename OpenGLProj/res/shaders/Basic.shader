#shader vertex
#version 330 core

layout(location = 0) in vec4 position;
layout(location = 1) in vec2 texCoord;

out vec2 v_TexCoord;

uniform mat4 u_MVP;

void main()
{
   gl_Position = u_MVP * position;  // use vec4 here since gl position is a vec 4
   v_TexCoord = texCoord;
};

#shader fragment
#version 330 core

layout(location = 0) out vec4 color;

in vec2 v_TexCoord;

uniform vec4 u_Color; // defines a uniform so we can set var in c++
uniform sampler2D u_Texture;

void main()
{
   vec4 texColor = texture(u_Texture, v_TexCoord);
   color = texColor;  // colors as floats in RGBA from 0 - 1
};