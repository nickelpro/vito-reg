vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO nickelpro/vito-dap
  REF 54a487b92d94f309849c4fb84be5c2d05b368251
  SHA512 d3a95067813707459ae05c69cb1126d955723323fd9448f8a4716b82029ae9a540e5d2fcd7edde6ea38df7be60dada285fb41875a549ea29f3bcd5f86aa96ded
  HEAD_REF main
)

vcpkg_cmake_configure(
  SOURCE_PATH ${SOURCE_PATH}
)
vcpkg_cmake_install()

file(REMOVE_RECURSE ${CURRENT_PACKAGES_DIR}/debug/include)
file(REMOVE_RECURSE ${CURRENT_PACKAGES_DIR}/debug/share)
vcpkg_install_copyright(FILE_LIST ${SOURCE_PATH}/License)
