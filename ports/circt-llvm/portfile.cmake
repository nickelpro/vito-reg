vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO llvm/llvm-project
  REF a133fb289af4f3eef018ddf961f1f2ed129d0c2d
  SHA512 9461b6a7d3bbcf21447a029dd619e5ffc0cd5635adee73f501de2c5239f15d5c2c714761925896e3717e6ad0bda212d1b5944d23ac18bde5a0d913929eeb1196
  HEAD_REF main
)

vcpkg_cmake_configure(
  SOURCE_PATH ${SOURCE_PATH}/llvm
  OPTIONS
  -DLLVM_ENABLE_PROJECTS:STRING=mlir
  -DLLVM_TARGETS_TO_BUILD:STRING=host
  -DLLVM_INSTALL_UTILS:BOOL=ON
  -DLLVM_OPTIMIZED_TABLEGEN:BOOL=ON
  -DLLVM_ABI_BREAKING_CHECKS:STRING=FORCE_OFF
  -DLLVM_PARALLEL_LINK_JOBS:STRING=5
  -DCMAKE_INSTALL_PACKAGEDIR:PATH=share
  -DLLVM_TOOLS_INSTALL_DIR:PATH=tools/llvm
  -DMLIR_TOOLS_INSTALL_DIR:PATH=tools/mlir
)

vcpkg_cmake_install()
vcpkg_cmake_config_fixup(
  PACKAGE_NAME mlir
  TOOLS_PATH tools/mlir
)
vcpkg_cmake_config_fixup(
  PACKAGE_NAME llvm
  TOOLS_PATH tools/llvm
)

vcpkg_install_copyright(FILE_LIST ${SOURCE_PATH}/LICENSE.TXT)
file(INSTALL ${CMAKE_CURRENT_LIST_DIR}/usage DESTINATION ${CURRENT_PACKAGES_DIR}/share/${PORT})

file(REMOVE_RECURSE
  ${CURRENT_PACKAGES_DIR}/debug/include
  ${CURRENT_PACKAGES_DIR}/debug/share
  ${CURRENT_PACKAGES_DIR}/debug/tools
)

set(VCPKG_POLICY_SKIP_ABSOLUTE_PATHS_CHECK enabled)
