vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO nickelpro/centurion
  REF e05f7429d5dc54ea1228e127857c2d6d0d2c0d41
  SHA512 29e8ec082f5d5915f4c66045ce200c4303ebcbff70b48b5ed2a1f7dd8154f9babd1aa1edb04927b2193dc9568ca25fcd1bbb5094e225f3d5c8f6ba4098da578f
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
