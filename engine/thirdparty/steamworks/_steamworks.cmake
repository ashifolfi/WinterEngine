if(WIN32)
    if(CMAKE_SIZEOF_VOID_P EQUAL 8)
        configure_file("${CMAKE_CURRENT_LIST_DIR}/steam_api64.dll" "${CMAKE_BINARY_DIR}/steam_api64.dll" COPYONLY)
    else()
        configure_file("${CMAKE_CURRENT_LIST_DIR}/steam_api32.dll" "${CMAKE_BINARY_DIR}/steam_api32.dll" COPYONLY)
    endif()
elseif(APPLE)
    if(CMAKE_SIZEOF_VOID_P EQUAL 8)
        configure_file("${CMAKE_CURRENT_LIST_DIR}/steam_api64.dylib" "${CMAKE_BINARY_DIR}/steam_api64.dylib" COPYONLY)
    else()
        message(FATAL_ERROR "Steam has no 32-bit binary on macOS!")
    endif()
elseif(UNIX)
    if(CMAKE_SIZEOF_VOID_P EQUAL 8)
        configure_file("${CMAKE_CURRENT_LIST_DIR}/steam_api64.so" "${CMAKE_BINARY_DIR}/steam_api64.so" COPYONLY)
    else()
        configure_file("${CMAKE_CURRENT_LIST_DIR}/steam_api32.so" "${CMAKE_BINARY_DIR}/steam_api64.so" COPYONLY)
    endif()
endif()
