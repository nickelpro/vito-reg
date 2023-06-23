vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO nickelpro/centurion
  REF c6e12fa50eb35d9c84a75b384c743d440ea793f4
  SHA512 dfcabb0a7f6f9d5224d629ce6cc17ef8e32d50d72e76f131085fee572b7818a919c940e7700a97cb374186eefce18a0ba759c614804843083e2ced9138dc5ae2
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
