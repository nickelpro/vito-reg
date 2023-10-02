vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO nickelpro/vito-dap
  REF 8caf9dd2753836112e35b90b0697ea3a7f32b824
  SHA512 bb48f439a5f4411f043fe34463541f34130d2536a3a93df053a7147ab6c6cec6f095d70d83c415cbe72bcf62c9a5fb99f9ddd1301deb849ec6a9a804a121627a
  HEAD_REF main
)

vcpkg_cmake_configure(
  SOURCE_PATH ${SOURCE_PATH}
)
vcpkg_cmake_install()
vcpkg_cmake_config_fixup(
  CONFIG_PATH share/cmake/vdap
)

vcpkg_install_copyright(FILE_LIST ${SOURCE_PATH}/License)
file(REMOVE_RECURSE ${CURRENT_PACKAGES_DIR}/debug)
