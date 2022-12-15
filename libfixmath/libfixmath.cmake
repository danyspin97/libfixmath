file(GLOB libfixmath-srcs libfixmath/*.c)

add_library(libfixmath STATIC ${libfixmath-srcs})

target_include_directories(libfixmath INTERFACE
  ${CMAKE_CURRENT_SOURCE_DIR})

install(TARGETS fixmath
        DESTINATION ${CMAKE_INSTALL_LIBDIR})

file(GLOB libfixmath-headers libfixmath/*.h libfixmath/*.hpp)
install(FILES ${libfixmath-headers}
        DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/libfixmath)