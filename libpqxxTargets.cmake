# Load the debug and release variables
file(GLOB DATA_FILES "${CMAKE_CURRENT_LIST_DIR}/libpqxx-*-data.cmake")

foreach(f ${DATA_FILES})
    include(${f})
endforeach()

# Create the targets for all the components
foreach(_COMPONENT ${libpqxx_COMPONENT_NAMES} )
    if(NOT TARGET ${_COMPONENT})
        add_library(${_COMPONENT} INTERFACE IMPORTED)
        message(${libpqxx_MESSAGE_MODE} "Conan: Component target declared '${_COMPONENT}'")
    endif()
endforeach()

if(NOT TARGET libpqxx::pqxx)
    add_library(libpqxx::pqxx INTERFACE IMPORTED)
    message(${libpqxx_MESSAGE_MODE} "Conan: Target declared 'libpqxx::pqxx'")
endif()
# Load the debug and release library finders
file(GLOB CONFIG_FILES "${CMAKE_CURRENT_LIST_DIR}/libpqxx-Target-*.cmake")

foreach(f ${CONFIG_FILES})
    include(${f})
endforeach()