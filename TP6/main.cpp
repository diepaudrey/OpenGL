#define GLFW_INCLUDE_NONE
#include <GLFW/glfw3.h>
#include <glad/glad.h>


#include <glimac/Program.hpp>
#include <glimac/FilePath.hpp>
#include <glimac/Image.hpp>
#include <glimac/glm.hpp>
#include <glimac/common.hpp> 
#include <glimac/Sphere.hpp>
#include <cstddef>
#include <vector>

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
    GLFWwindow* window = glfwCreateWindow(window_width, window_height, "TP6", nullptr, nullptr);
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

    glimac::Sphere sphere(1,32,16);

    std::cout << "Nombres de sommets : " << sphere.getVertexCount() << std::endl;
    std::cout << "Pointer sur le tableau : " << sphere.getDataPointer() << std::endl;

    GLuint vbo;
    glGenBuffers(1,&vbo);
    glBindBuffer(GL_ARRAY_BUFFER, vbo);
    glBufferData(GL_ARRAY_BUFFER, sphere.getVertexCount()*sizeof(glimac::ShapeVertex), sphere.getDataPointer(), GL_STATIC_DRAW);
    glBindBuffer(0,vbo);

    GLuint vao;
    glGenVertexArrays(1, &vao);
    glBindVertexArray(vao);
    const GLuint VERTEX_ATTR_POSITION = 0;
    glEnableVertexAttribArray(VERTEX_ATTR_POSITION);
    glBindBuffer(GL_ARRAY_BUFFER, vbo);
    glVertexAttribPointer(VERTEX_ATTR_POSITION,3,GL_FLOAT, GL_FALSE, sizeof(glimac::ShapeVertex), (const GLvoid*)(offsetof(glimac::ShapeVertex,position)));

    glBindBuffer(0, vbo);
    glBindVertexArray(0);

    /*loading shaders*/
    glimac::FilePath applicationPath("/home/audrey/Documents/IMAC/S4/openGL/glimac-glfw/TP6/shaders/here");
    glimac::Program program = glimac::loadProgram(applicationPath.dirPath() + argv[1],
                              applicationPath.dirPath() + argv[2]);
    program.use();

    /*uniforma variable*/
    GLint uMVPMatrix = glGetUniformLocation(program.getGLId(), "uMVPMatrix");
    GLint uMVMatrix = glGetUniformLocation(program.getGLId(), "uMVMatrix");
    GLint uNormalMatrix = glGetUniformLocation(program.getGLId(), "uNormalMatrix");
    glEnable(GL_DEPTH_TEST);

    float ratio_window = (float)(window_width/window_height);
    glm::mat4 ProjMatrix = glm::perspective(glm::radians(70.f), ratio_window , 0.1f, 100.f );
    glm::mat4 MVMatrix = glm::translate(glm::mat4(1.0f), glm::vec3(0.f,0.f,-5.f));
    glm::mat4 NormalMatrix = glm::transpose(glm::inverse(MVMatrix));



    /* Loop until the user closes the window */
    while (!glfwWindowShouldClose(window)) {
        glClearColor(0.f, 0.f, 0.f, 0.f);
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

        

        glUniformMatrix4fv(uMVPMatrix,1, GL_FALSE, glm::value_ptr(ProjMatrix*MVMatrix));
        glUniformMatrix4fv(uMVMatrix,1, GL_FALSE, glm::value_ptr(MVMatrix));
        glUniformMatrix4fv(uNormalMatrix,1, GL_FALSE, glm::value_ptr(NormalMatrix));

        glBindVertexArray(vao);

        glDrawArrays(GL_TRIANGLES,0,sphere.getVertexCount());

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