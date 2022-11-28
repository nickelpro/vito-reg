vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO nickelpro/vito-dap
  REF 9635ac51dec1d43fbec2b401f447ebc4279710d7
  SHA512 148084155588f78161383a65b343f8642d1a4e6bdfd2ea3e687a72adef1c7278622a56ec67e47745d8ea7182113c9729b8d92e7696179f1247603ebe3b007c90
  HEAD_REF main
)

vcpkg_cmake_configure(
  SOURCE_PATH ${SOURCE_PATH}
)
vcpkg_cmake_install()

file(REMOVE_RECURSE ${CURRENT_PACKAGES_DIR}/debug/include)
file(REMOVE_RECURSE ${CURRENT_PACKAGES_DIR}/debug/share)
vcpkg_install_copyright(FILE_LIST ${SOURCE_PATH}/License)
