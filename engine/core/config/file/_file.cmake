list(APPEND CHIRA_ENGINE_HEADERS
        ${CMAKE_CURRENT_LIST_DIR}/IConfigFile.h
        ${CMAKE_CURRENT_LIST_DIR}/JSONConfigFile.h)

list(APPEND CHIRA_ENGINE_SOURCES
        ${CMAKE_CURRENT_LIST_DIR}/IConfigFile.cpp
        ${CMAKE_CURRENT_LIST_DIR}/JSONConfigFile.cpp)
