vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO nickelpro/modlib-test
  REF 63447b454a69c357da599d272fc45a3bc264535b
  SHA512 b2bc7b12d6981dbcf4645d92f618c2fbeed5fa52b03d50d04aa28aaf5474b7e3218f0b4d3a9225fe3b831a7a8c22cc8c12a4a74038356dc4c7d3181e3a7727a2
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
