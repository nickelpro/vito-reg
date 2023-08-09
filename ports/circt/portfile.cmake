vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO llvm/circt
  REF 12fc549c4892b13bf17c61ecb814119f45d0bf50
  SHA512 13a873de37600aace420e23d1bd72d25473c34671b65869ec965c0c8fbe9070de4e0b034b35dc1ea5669dc0e981f51b8af40f80439b75d90412c701645a6334f
  HEAD_REF main
)

vcpkg_cmake_configure(
  SOURCE_PATH ${SOURCE_PATH}
  OPTIONS
  -DLLVM_TOOLS_INSTALL_DIR:PATH=tools/circt
)

vcpkg_cmake_install()
vcpkg_cmake_config_fixup(
  CONFIG_PATH lib/cmake/circt
)

vcpkg_install_copyright(FILE_LIST ${SOURCE_PATH}/LICENSE)
file(INSTALL ${CMAKE_CURRENT_LIST_DIR}/usage DESTINATION ${CURRENT_PACKAGES_DIR}/share/${PORT})

file(REMOVE_RECURSE
  ${CURRENT_PACKAGES_DIR}/debug/include
  ${CURRENT_PACKAGES_DIR}/debug/share
  ${CURRENT_PACKAGES_DIR}/debug/tools
)

set(circtConfig ${CURRENT_PACKAGES_DIR}/share/circt/CIRCTConfig.cmake)
vcpkg_replace_string(${circtConfig} "get_filename_component(CIRCT_INSTALL_PREFIX \"\$\{CIRCT_INSTALL_PREFIX\}\" PATH)\n\n" "\n")
vcpkg_replace_string(${circtConfig} lib/cmake share)
