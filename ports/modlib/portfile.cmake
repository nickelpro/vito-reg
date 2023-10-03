vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO nickelpro/modlib-test
  REF 638f2ca421de8642a3ac788143a6a5688d6d79ea
  SHA512 c896e4ea65ab0311e652b4845b935fb674ef5b89cc56ebf8f2ddc47fa3144f42ed04e2273eb555d8eca36eff0314ed340e874be43fab59249d1aa25b503634d7
  HEAD_REF main
)

vcpkg_cmake_configure(
  SOURCE_PATH ${SOURCE_PATH}
)
vcpkg_cmake_install()
vcpkg_cmake_config_fixup()

file(REMOVE_RECURSE ${CURRENT_PACKAGES_DIR}/debug/include)
file(REMOVE_RECURSE ${CURRENT_PACKAGES_DIR}/debug/share)
vcpkg_install_copyright(FILE_LIST ${SOURCE_PATH}/License)

set(VCPKG_POLICY_EMPTY_INCLUDE_FOLDER enabled)
