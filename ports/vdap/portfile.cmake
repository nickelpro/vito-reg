vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO nickelpro/vito-dap
  REF 057da6df1de22a3e9a92f89c97d4f279f196211c
  SHA512 f69bb9c388b006b72e028ee6b98d4d641686921d1228b17592666dd27b00e453151f523a901f5501b77811065cb37309c26eeac25101f101b3358edb3747c40a
  HEAD_REF main
)

vcpkg_cmake_configure(
  SOURCE_PATH ${SOURCE_PATH}
)
vcpkg_cmake_install()

file(REMOVE_RECURSE ${CURRENT_PACKAGES_DIR}/debug/include)
file(REMOVE_RECURSE ${CURRENT_PACKAGES_DIR}/debug/share)
vcpkg_install_copyright(FILE_LIST ${SOURCE_PATH}/License)
