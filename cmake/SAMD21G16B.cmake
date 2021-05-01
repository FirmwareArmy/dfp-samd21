if(CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
    set(compiler "gcc")
elseif(CMAKE_CXX_COMPILER_ID STREQUAL "Clang")
    set(compiler "clang")
else()
    message(FATAL, "unsupported compiler: ${CMAKE_CXX_COMPILER_ID}")
endif()

set(COMMON_FLAGS "${COMMON_FLAGS} -D__SAMD21G16B__")

set(LINKER_FLAGS "${LINKER_FLAGS} -T ${PACKAGE_PATH}/dfp/samd21c/${compiler}/${compiler}/samd21g16b_flash.ld")

