vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO nickelpro/centurion
  REF 7f1d3f5f98f41ff0e862d744cbecc667ff7ad7ea
  SHA512 264204b79edfbc9609e46ee37c74aef229499ea6e29595a4a8a30e15d52f61bb6b6ede745c7805ca08eecdcc287951cf92842964cd9e6ca1c65500c45cab6e93
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
