vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO nickelpro/centurion
  REF b52e2ecafe645c9b237eab3b71dfe252ca7a9293
  SHA512 4290cfe25d4814fd3aa929ad4f3beeb3703982721459b5172fa541b2de6d4bf42a5c08008baf6f9bf1bc127c83e98f79267311a535fb4caddef4c026af79756d
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
