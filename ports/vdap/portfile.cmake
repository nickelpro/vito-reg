vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO nickelpro/vito-dap
  REF 725906e5382aa540bf1f925d56598b1092dd6a69
  SHA512 9b9b97f3d343d5b11ba408380f6e5c47fc236ff9813a5a023527a7fb3346aa93a0e7a3dadf98158f3e2a44c9db45eac00b2ab8667937c3ebada3025533c43fcd
  HEAD_REF main
)

vcpkg_cmake_configure(
  SOURCE_PATH ${SOURCE_PATH}
)
vcpkg_cmake_install()

file(REMOVE_RECURSE ${CURRENT_PACKAGES_DIR}/debug/include)
file(REMOVE_RECURSE ${CURRENT_PACKAGES_DIR}/debug/share)
vcpkg_install_copyright(FILE_LIST ${SOURCE_PATH}/License)
