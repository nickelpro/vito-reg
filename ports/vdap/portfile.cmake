vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO nickelpro/vito-dap
  REF e5b052d78ce813650821620395cec5db1332ac0e
  SHA512 4594ee4e3e612279983402682d9b0e9ac56bc9d4647506ca431b3d2bc0e1ebdc5bcfbe407823aca463281a8bbe92ec18053881c762d11954f1d7344f8a07dda6
  HEAD_REF main
)

vcpkg_cmake_configure(
  SOURCE_PATH ${SOURCE_PATH}
)
vcpkg_cmake_install()

file(REMOVE_RECURSE ${CURRENT_PACKAGES_DIR}/debug/include)
file(REMOVE_RECURSE ${CURRENT_PACKAGES_DIR}/debug/share)
vcpkg_install_copyright(FILE_LIST ${SOURCE_PATH}/License)
