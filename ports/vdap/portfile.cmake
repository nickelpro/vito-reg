vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO nickelpro/vito-dap
  REF 92de470d34bb7a73839da873a565bb1f24c20e36
  SHA512 2ea829a3b8765f82c6fb491a32932c5711ad11a701c0bddf8f5fec870f482eaf91f1a5e5c25d9ac02618dec8525b5d0b7fd96f2a1bcd26f9bd50d3588cd2cfd0
  HEAD_REF main
)

vcpkg_cmake_configure(
  SOURCE_PATH ${SOURCE_PATH}
)
vcpkg_cmake_install()

file(REMOVE_RECURSE ${CURRENT_PACKAGES_DIR}/debug/include)
file(REMOVE_RECURSE ${CURRENT_PACKAGES_DIR}/debug/share)
vcpkg_install_copyright(FILE_LIST ${SOURCE_PATH}/License)
