#shader vertex
#version 330 core

layout(location = 0) in vec4 position;

void main()
{
   gl_Position = position;  // use vec4 here since gl position is a vec 4
};

#shader fragment
#version 330 core

layout(location = 0) out vec4 color;

uniform vec4 u_Color; // defines a uniform so we can set var in c++

void main()
{
   color = u_Color;  // colors as floats in RGBA from 0 - 1
};