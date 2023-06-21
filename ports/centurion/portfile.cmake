vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO nickelpro/centurion
  REF 37603c6fc8fde783dc42c82647dc68b279bd6ebd
  SHA512 9f27cffce4310e797f7085076cc1868954f37a14edd6536daa3e10067bf17a1dbc722eb76867cbc1db2832fee18b8e460a6b44a31d57d23a4b44ca5ff4b21a18
  HEAD_REF vito-dev
)

vcpkg_cmake_configure(
  SOURCE_PATH ${SOURCE_PATH}
)
vcpkg_cmake_install()

file(REMOVE_RECURSE ${CURRENT_PACKAGES_DIR}/debug/include)
file(REMOVE_RECURSE ${CURRENT_PACKAGES_DIR}/debug/share)

file(
  INSTALL ${CMAKE_CURRENT_LIST_DIR}/usage
  DESTINATION ${CURRENT_PACKAGES_DIR}/share/centurion
)
vcpkg_install_copyright(FILE_LIST ${SOURCE_PATH}/LICENSE)
