########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

list(APPEND libpq_COMPONENT_NAMES libpq::pgport libpq::pgcommon libpq::pq)
list(REMOVE_DUPLICATES libpq_COMPONENT_NAMES)
if(DEFINED libpq_FIND_DEPENDENCY_NAMES)
  list(APPEND libpq_FIND_DEPENDENCY_NAMES )
  list(REMOVE_DUPLICATES libpq_FIND_DEPENDENCY_NAMES)
else()
  set(libpq_FIND_DEPENDENCY_NAMES )
endif()

########### VARIABLES #######################################################################
#############################################################################################
set(libpq_PACKAGE_FOLDER_RELEASE "C:/Users/saioa/.conan2/p/libpqf06b7bc487f2d/p")
set(libpq_BUILD_MODULES_PATHS_RELEASE )


set(libpq_INCLUDE_DIRS_RELEASE )
set(libpq_RES_DIRS_RELEASE )
set(libpq_DEFINITIONS_RELEASE )
set(libpq_SHARED_LINK_FLAGS_RELEASE )
set(libpq_EXE_LINK_FLAGS_RELEASE )
set(libpq_OBJECTS_RELEASE )
set(libpq_COMPILE_DEFINITIONS_RELEASE )
set(libpq_COMPILE_OPTIONS_C_RELEASE )
set(libpq_COMPILE_OPTIONS_CXX_RELEASE )
set(libpq_LIB_DIRS_RELEASE "${libpq_PACKAGE_FOLDER_RELEASE}/lib")
set(libpq_BIN_DIRS_RELEASE )
set(libpq_LIBRARY_TYPE_RELEASE STATIC)
set(libpq_IS_HOST_WINDOWS_RELEASE 1)
set(libpq_LIBS_RELEASE libpq libpgcommon libpgport)
set(libpq_SYSTEM_LIBS_RELEASE ws2_32 secur32 advapi32 shell32 crypt32 wldap32)
set(libpq_FRAMEWORK_DIRS_RELEASE )
set(libpq_FRAMEWORKS_RELEASE )
set(libpq_BUILD_DIRS_RELEASE )
set(libpq_NO_SONAME_MODE_RELEASE FALSE)


# COMPOUND VARIABLES
set(libpq_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${libpq_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${libpq_COMPILE_OPTIONS_C_RELEASE}>")
set(libpq_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${libpq_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${libpq_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${libpq_EXE_LINK_FLAGS_RELEASE}>")


set(libpq_COMPONENTS_RELEASE libpq::pgport libpq::pgcommon libpq::pq)
########### COMPONENT libpq::pq VARIABLES ############################################

set(libpq_libpq_pq_INCLUDE_DIRS_RELEASE )
set(libpq_libpq_pq_LIB_DIRS_RELEASE "${libpq_PACKAGE_FOLDER_RELEASE}/lib")
set(libpq_libpq_pq_BIN_DIRS_RELEASE )
set(libpq_libpq_pq_LIBRARY_TYPE_RELEASE STATIC)
set(libpq_libpq_pq_IS_HOST_WINDOWS_RELEASE 1)
set(libpq_libpq_pq_RES_DIRS_RELEASE )
set(libpq_libpq_pq_DEFINITIONS_RELEASE )
set(libpq_libpq_pq_OBJECTS_RELEASE )
set(libpq_libpq_pq_COMPILE_DEFINITIONS_RELEASE )
set(libpq_libpq_pq_COMPILE_OPTIONS_C_RELEASE "")
set(libpq_libpq_pq_COMPILE_OPTIONS_CXX_RELEASE "")
set(libpq_libpq_pq_LIBS_RELEASE libpq)
set(libpq_libpq_pq_SYSTEM_LIBS_RELEASE ws2_32 secur32 advapi32 shell32 crypt32 wldap32)
set(libpq_libpq_pq_FRAMEWORK_DIRS_RELEASE )
set(libpq_libpq_pq_FRAMEWORKS_RELEASE )
set(libpq_libpq_pq_DEPENDENCIES_RELEASE libpq::pgport libpq::pgcommon)
set(libpq_libpq_pq_SHARED_LINK_FLAGS_RELEASE )
set(libpq_libpq_pq_EXE_LINK_FLAGS_RELEASE )
set(libpq_libpq_pq_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(libpq_libpq_pq_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${libpq_libpq_pq_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${libpq_libpq_pq_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${libpq_libpq_pq_EXE_LINK_FLAGS_RELEASE}>
)
set(libpq_libpq_pq_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${libpq_libpq_pq_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${libpq_libpq_pq_COMPILE_OPTIONS_C_RELEASE}>")
########### COMPONENT libpq::pgcommon VARIABLES ############################################

set(libpq_libpq_pgcommon_INCLUDE_DIRS_RELEASE )
set(libpq_libpq_pgcommon_LIB_DIRS_RELEASE "${libpq_PACKAGE_FOLDER_RELEASE}/lib")
set(libpq_libpq_pgcommon_BIN_DIRS_RELEASE )
set(libpq_libpq_pgcommon_LIBRARY_TYPE_RELEASE STATIC)
set(libpq_libpq_pgcommon_IS_HOST_WINDOWS_RELEASE 1)
set(libpq_libpq_pgcommon_RES_DIRS_RELEASE )
set(libpq_libpq_pgcommon_DEFINITIONS_RELEASE )
set(libpq_libpq_pgcommon_OBJECTS_RELEASE )
set(libpq_libpq_pgcommon_COMPILE_DEFINITIONS_RELEASE )
set(libpq_libpq_pgcommon_COMPILE_OPTIONS_C_RELEASE "")
set(libpq_libpq_pgcommon_COMPILE_OPTIONS_CXX_RELEASE "")
set(libpq_libpq_pgcommon_LIBS_RELEASE libpgcommon)
set(libpq_libpq_pgcommon_SYSTEM_LIBS_RELEASE )
set(libpq_libpq_pgcommon_FRAMEWORK_DIRS_RELEASE )
set(libpq_libpq_pgcommon_FRAMEWORKS_RELEASE )
set(libpq_libpq_pgcommon_DEPENDENCIES_RELEASE )
set(libpq_libpq_pgcommon_SHARED_LINK_FLAGS_RELEASE )
set(libpq_libpq_pgcommon_EXE_LINK_FLAGS_RELEASE )
set(libpq_libpq_pgcommon_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(libpq_libpq_pgcommon_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${libpq_libpq_pgcommon_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${libpq_libpq_pgcommon_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${libpq_libpq_pgcommon_EXE_LINK_FLAGS_RELEASE}>
)
set(libpq_libpq_pgcommon_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${libpq_libpq_pgcommon_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${libpq_libpq_pgcommon_COMPILE_OPTIONS_C_RELEASE}>")
########### COMPONENT libpq::pgport VARIABLES ############################################

set(libpq_libpq_pgport_INCLUDE_DIRS_RELEASE )
set(libpq_libpq_pgport_LIB_DIRS_RELEASE "${libpq_PACKAGE_FOLDER_RELEASE}/lib")
set(libpq_libpq_pgport_BIN_DIRS_RELEASE )
set(libpq_libpq_pgport_LIBRARY_TYPE_RELEASE STATIC)
set(libpq_libpq_pgport_IS_HOST_WINDOWS_RELEASE 1)
set(libpq_libpq_pgport_RES_DIRS_RELEASE )
set(libpq_libpq_pgport_DEFINITIONS_RELEASE )
set(libpq_libpq_pgport_OBJECTS_RELEASE )
set(libpq_libpq_pgport_COMPILE_DEFINITIONS_RELEASE )
set(libpq_libpq_pgport_COMPILE_OPTIONS_C_RELEASE "")
set(libpq_libpq_pgport_COMPILE_OPTIONS_CXX_RELEASE "")
set(libpq_libpq_pgport_LIBS_RELEASE libpgport)
set(libpq_libpq_pgport_SYSTEM_LIBS_RELEASE )
set(libpq_libpq_pgport_FRAMEWORK_DIRS_RELEASE )
set(libpq_libpq_pgport_FRAMEWORKS_RELEASE )
set(libpq_libpq_pgport_DEPENDENCIES_RELEASE )
set(libpq_libpq_pgport_SHARED_LINK_FLAGS_RELEASE )
set(libpq_libpq_pgport_EXE_LINK_FLAGS_RELEASE )
set(libpq_libpq_pgport_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(libpq_libpq_pgport_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${libpq_libpq_pgport_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${libpq_libpq_pgport_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${libpq_libpq_pgport_EXE_LINK_FLAGS_RELEASE}>
)
set(libpq_libpq_pgport_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${libpq_libpq_pgport_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${libpq_libpq_pgport_COMPILE_OPTIONS_C_RELEASE}>")