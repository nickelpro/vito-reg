vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO nickelpro/centurion
  REF 0bca2fd42e96bb3ecfb04ff8843af5a4b485b872
  SHA512 616eac1de0b44edc2fa74f212040b712b9c6e7521ac3287aaeeec925f5b44868b78c49c880814fd2fbb3eeb3d8dbbea60a7a7bc04c3bb5868bfb558adb97cedc
  HEAD_REF ev-dev
)

vcpkg_cmake_configure(
  SOURCE_PATH ${SOURCE_PATH}
)
vcpkg_cmake_install()

file(REMOVE_RECURSE ${CURRENT_PACKAGES_DIR}/debug/include)
file(REMOVE_RECURSE ${CURRENT_PACKAGES_DIR}/debug/share)

file(
  INSTALL ${CMAKE_CURRENT_LIST_DIR}/usage
  DESTINATION ${CURRENT_PACKAGES_DIR}/share/centurion-vg
)
vcpkg_install_copyright(FILE_LIST ${SOURCE_PATH}/LICENSE)
