cmake_minimum_required(VERSION 3.24)

if(NOT DEFINED CMAKE_TOOLCHAIN_FILE)
  include(FetchContent)


  FetchContent_Declare(
    vcpkg
    GIT_REPOSITORY https://github.com/microsoft/vcpkg.git
    GIT_TAG master
    GIT_SHALLOW TRUE
  )
  FetchContent_MakeAvailable(vcpkg)
  set(CMAKE_TOOLCHAIN_FILE
    ${vcpkg_SOURCE_DIR}/scripts/buildsystems/vcpkg.cmake
    CACHE FILEPATH "Vcpkg toolchain file"
  )
  set(VCPKG_ROOT_DIR ${vcpkg_SOURCE_DIR} CACHE PATH "Vcpkg Root Directory")
endif()

project(vito-reg)

add_custom_target(Bootstrap
  ${VCPKG_ROOT_DIR}/bootstrap-vcpkg.sh
)
