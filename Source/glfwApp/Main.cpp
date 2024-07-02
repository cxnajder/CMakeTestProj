#include "CMakeConfig.h"

#include "GLFW/glfw3.h"

#include <cstdlib>
#include <string>
#include <sstream>

int main(int argc, char * argv[])
{
    GLFWwindow * window;
    std::string windowTitle;
    {
        std::stringstream ss;
        ss << "First GLFW Program" << " v" << PROJECT_VERSION_MAJOR << "." << PROJECT_VERSION_MINOR;
        windowTitle = ss.str();\
    }

    if (!glfwInit())
        exit(EXIT_FAILURE);

    window = glfwCreateWindow(640, 480, windowTitle.c_str(), NULL, NULL);
    if (!window)
    {
        glfwTerminate();
        exit(EXIT_FAILURE);
    }

    while (!glfwWindowShouldClose(window))
    {
        glfwSwapBuffers(window);
        glfwPollEvents();
    }

    glfwTerminate();
    exit(EXIT_SUCCESS);
}