vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO nickelpro/modlib-test
  REF 2e8d8e25330e70f336cef684e9811a5c2a2108d4
  SHA512 2b796abd8c95f511cfeba06660bea7ce4b3c309dc735dcaca17a880b547060b04cf8c0385c7a621458f214cc2fc6b2b1ca374a0648d8adef1832267e1fdb36bd
  HEAD_REF main
)

vcpkg_cmake_configure(
  SOURCE_PATH ${SOURCE_PATH}
  OPTIONS
  -DCMAKE_C_COMPILER:STRING=clang
  -DCMAKE_CXX_COMPILER:STRING=clang++
)
vcpkg_cmake_install()
vcpkg_cmake_config_fixup()

file(REMOVE_RECURSE ${CURRENT_PACKAGES_DIR}/debug/include)
file(REMOVE_RECURSE ${CURRENT_PACKAGES_DIR}/debug/share)
vcpkg_install_copyright(FILE_LIST ${SOURCE_PATH}/License)

set(VCPKG_POLICY_EMPTY_INCLUDE_FOLDER enabled)
