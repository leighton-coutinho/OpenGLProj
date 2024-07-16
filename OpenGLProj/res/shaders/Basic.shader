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

void main()
{
   color = vec4(0.2, 0.3, 0.8, 1.0);  // colors as floats in RGBA from 0 - 1
};