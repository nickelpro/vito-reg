vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO nickelpro/vito-dap
  REF c2bce818b1e11d5ab7ec91f5223d39ae0e3f9638
  SHA512 865b89be265100f8b4e80c004e23884dd33e63f641baad9d8d19955a6700bd974789c361ae6760531c6ce563d32e45b728272ba42b8577096cf71bb6ceaf6c12
  HEAD_REF main
)

vcpkg_cmake_configure(
  SOURCE_PATH ${SOURCE_PATH}
)
vcpkg_cmake_install()

file(INSTALL ${SOURCE_PATH}/License ${CURRENT_PACKAGES_DIR}/share/${PORT} RENAME copyright)
