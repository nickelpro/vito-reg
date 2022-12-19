vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO nickelpro/vito-dap
  REF a6abc4d3043314727faa40db022869973eb9d36f
  SHA512 d698167d8fe918c20a8739fcc18be082617314dd48f2c3d42eb4d844c370fe13cb62e45bc9a7dfe3b047801c0e2004bd151ba29276bb4ef94596c8a47012d72a
  HEAD_REF main
)

vcpkg_cmake_configure(
  SOURCE_PATH ${SOURCE_PATH}
)
vcpkg_cmake_install()

vcpkg_install_copyright(FILE_LIST ${SOURCE_PATH}/License)
