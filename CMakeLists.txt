cmake_minimum_required(VERSION 3.10)

# Set project name
project(EmailManagementSystem)

# Specify the C++ standard
set(CMAKE_CXX_STANDARD 17)

# Find required packages
find_package(Qt5 REQUIRED COMPONENTS Widgets)
find_package(CURL REQUIRED)
find_package(PQXX REQUIRED)

# Include directories for the required libraries
include_directories(
    ${CURL_INCLUDE_DIRS}
    ${PQXX_INCLUDE_DIRS}
)

# Add the source files
set(SOURCES
    main.cpp
)

# Add executable target
add_executable(${PROJECT_NAME} ${SOURCES})

# Link libraries to the executable
target_link_libraries(${PROJECT_NAME}
    Qt5::Widgets
    CURL::libcurl    # Linking for libcurl
    pqxx             # Linking for pqxx
)

# Set additional compile options
target_compile_options(${PROJECT_NAME} PRIVATE -Wall)
