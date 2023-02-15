#define GLFW_INCLUDE_NONE
#include <GLFW/glfw3.h>
#include <glad/glad.h>
#include <glimac/Program.hpp>
#include <glimac/FilePath.hpp>
#include <glimac/glm.hpp>
#include <cstddef>
#include <vector>


using namespace glimac;

//BEFORE BUILDING, PASTE THIS LINE "export MESA_GL_VERSION_OVERRIDE=3.3" AND THEN BUILD

int window_width  = 1280;
int window_height = 720;

static void key_callback(GLFWwindow* /*window*/, int /*key*/, int /*scancode*/, int /*action*/, int /*mods*/)
{
}

static void mouse_button_callback(GLFWwindow* /*window*/, int /*button*/, int /*action*/, int /*mods*/)
{
}

static void scroll_callback(GLFWwindow* /*window*/, double /*xoffset*/, double /*yoffset*/)
{
}

static void cursor_position_callback(GLFWwindow* /*window*/, double /*xpos*/, double /*ypos*/)
{
}

static void size_callback(GLFWwindow* /*window*/, int width, int height)
{
    window_width  = width;
    window_height = height;
}

//Vertex2D Structure

struct Vertex2DColor
{
    glm::vec2 position;
    glm::vec3 color;

    Vertex2DColor(){};
    Vertex2DColor(const glm::vec2 pos, const glm::vec3 col) : position(pos), color(col){};

};



int main([[maybe_unused]]int argc, [[maybe_unused]]char* argv[])
{
    /* Initialize the library */
    if (!glfwInit()) {
        return -1;
    }

    /* Create a window and its OpenGL context */
#ifdef __APPLE__
    /* We need to explicitly ask for a 3.3 context on Mac */
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
#endif
    GLFWwindow* window = glfwCreateWindow(window_width, window_height, "TP1", nullptr, nullptr);
    if (!window) {
        glfwTerminate();
        return -1;
    }
    
    /* Make the window's context current */
    glfwMakeContextCurrent(window);

    /* Intialize glad (loads the OpenGL functions) */
    if (!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress)) {
        return -1;
    }

    /* Hook input callbacks */
    glfwSetKeyCallback(window, &key_callback);
    glfwSetMouseButtonCallback(window, &mouse_button_callback);
    glfwSetScrollCallback(window, &scroll_callback);
    glfwSetCursorPosCallback(window, &cursor_position_callback);
    glfwSetWindowSizeCallback(window, &size_callback);

    /*exo1 triangle blanc*/

    //Création du VBO
    GLuint vbo;
    glGenBuffers(1, &vbo);

    //Bind le VBO
    glBindBuffer(GL_ARRAY_BUFFER, vbo);

    //Stocker coordonnees des points
    // GLfloat vertices[] = {-0.5f, -0.5f, 1.f, 0.f, 0.f, //premier sommet
    //  0.5f,-0.5f, 0.f,  1.f, 0.f, //deuxieme sommet
    //  0.0f, 0.5f, 0.f, 0.f, 1.f}; //troisieme sommet

    //For a triangle
    // Vertex2DColor vertices[] = {
    //     Vertex2DColor(glm::vec2(-0.5,-0.5), glm::vec3(1,0,0)),
    //     Vertex2DColor(glm::vec2(0.5,-0.5), glm::vec3(0,1,0)),
    //     Vertex2DColor(glm::vec2(0,0.5), glm::vec3(0,0,1)),
    // };

    //For a quad
    // Vertex2DColor vertices[] = {
    //     Vertex2DColor(glm::vec2(-0.5,-0.5), glm::vec3(1,0,0)),
    //     Vertex2DColor(glm::vec2(0.5,-0.5), glm::vec3(0,1,0)),
    //     Vertex2DColor(glm::vec2(-0.5,0.5), glm::vec3(0,1,1)),

    //     Vertex2DColor(glm::vec2(0.5,0.5), glm::vec3(1,0,1)),
    //     Vertex2DColor(glm::vec2(-0.5,0.5), glm::vec3(0,1,1)),
    //     Vertex2DColor(glm::vec2(0.5,-0.5), glm::vec3(0,1,0))
    // };

    //For a disk
    const int N = 30;
    const float angle = (2*glm::pi<float>())/N;
    const float radius = 0.5;
    std::vector<Vertex2DColor> vertices(30);

    for(int i=1; i<2*N; i++){
        //std::cout << "i : " << i << std::endl;
        if(i%3!=0){
            vertices[i] = Vertex2DColor(glm::vec2(radius*glm::cos(i*angle),radius*glm::sin(i*angle)), glm::vec3(1,0,0));
            
        }
        else{
            vertices[i] = Vertex2DColor(glm::vec2(0,0), glm::vec3(0,0,0));
        }
        
    }

    //Modifier 2e argument en fonction du nombre de sommets
    glBufferData(GL_ARRAY_BUFFER, 3*N*sizeof(Vertex2DColor), vertices.data(), GL_STATIC_DRAW);

    glBindBuffer(0,vbo);

    //création VAO
    GLuint vao;
    glGenVertexArrays(1, &vao);
    glBindVertexArray(vao);

    const GLuint VERTEX_ATTR_POSITION = 3;
    glEnableVertexAttribArray(VERTEX_ATTR_POSITION);

    const GLuint VERTEX_ATTR_COLOR = 8;
    glEnableVertexAttribArray(VERTEX_ATTR_COLOR);

    //Spécification des attributs de vertex

    glBindBuffer(GL_ARRAY_BUFFER, vbo);

    glVertexAttribPointer(VERTEX_ATTR_POSITION,2,GL_FLOAT, GL_FALSE, sizeof(Vertex2DColor), 0);

    glVertexAttribPointer(VERTEX_ATTR_COLOR,3,GL_FLOAT, GL_FALSE, sizeof(Vertex2DColor), (const GLvoid*)(offsetof(Vertex2DColor, color)) );

    

    glBindBuffer(0, vbo);

    glBindVertexArray(0);


    //Change shaders
    
    FilePath applicationPath("/home/audrey/Documents/IMAC/S4/openGL/glimac-glfw/TP3_exo3");
    Program program = loadProgram(applicationPath.dirPath() + "TP3_exo3/shaders/triangle.vs.glsl",
                              applicationPath.dirPath() + "TP3_exo3/shaders/triangle.fs.glsl");
    program.use();



    /* Loop until the user closes the window */
    while (!glfwWindowShouldClose(window)) {
        glClearColor(1.f, 0.5f, 0.5f, 1.f);
        glClear(GL_COLOR_BUFFER_BIT);

        //RENDERING CODE
        glBindVertexArray(vao);
        //Modifier le 2e arg en fonction du nombre de sommet
        glDrawArrays(GL_TRIANGLES, 0, N*3);
        glBindVertexArray(0);


        /* Swap front and back buffers */
        glfwSwapBuffers(window);
        /* Poll for and process events */
        glfwPollEvents();
    }
    glDeleteBuffers(0,&vbo);
    glDeleteVertexArrays(0,&vao);

    glfwTerminate();
    return 0;
}