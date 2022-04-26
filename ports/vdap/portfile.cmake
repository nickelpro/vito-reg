vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO nickelpro/vito-dap
  REF c2bce818b1e11d5ab7ec91f5223d39ae0e3f9638
  SHA512 cabe82702ebb2e10c9836ecda8991b3aa9cc6a699ce9003ea92c21a9fa735e315f4d9b7c82b0af90262616839dbf41dbb2c0350aa192baeade558ffd576b2a43
  HEAD_REF main
)

vcpkg_cmake_configure(
  SOURCE_PATH ${SOURCE_PATH}
)
vcpkg_cmake_install()

file(REMOVE_RECURSE ${CURRENT_PACKAGES_DIR}/debug/include)
file(REMOVE_RECURSE ${CURRENT_PACKAGES_DIR}/debug/share)
file(INSTALL ${SOURCE_PATH}/License DESTINATION ${CURRENT_PACKAGES_DIR}/share/${PORT} RENAME copyright)
