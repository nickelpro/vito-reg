vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO nickelpro/NavidsonExample
  REF 3e128480ede91080382b13d1a24d4af6a9994131
  SHA512 9183691fe059dd89c667a06fb6a363450ab2f136883adf3547e0f227b3f59db3f7456e2dda9b7ef7e8540f02fa60ed5dd171e19cd80ea8a3aee66d3c5a85cfff
  HEAD_REF main
)

vcpkg_cmake_configure(
  SOURCE_PATH ${SOURCE_PATH}
)
vcpkg_cmake_install()

file(REMOVE_RECURSE ${CURRENT_PACKAGES_DIR}/debug/include)
file(REMOVE_RECURSE ${CURRENT_PACKAGES_DIR}/debug/share)
vcpkg_install_copyright(FILE_LIST ${SOURCE_PATH}/License)
