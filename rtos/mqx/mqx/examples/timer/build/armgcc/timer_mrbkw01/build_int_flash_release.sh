#!/usr/bin/env bash
(cd  ../../../../../build/armgcc/mqx_mrbkw01 && source build_release.sh nopause) 
(cd  ../../../../../../mqx_stdlib/build/armgcc/mqx_stdlib_mrbkw01 && source build_release.sh nopause) 
(cd  ../../../../../../../../lib/ksdk_mqx_lib/armgcc/KW01Z4 && source build_release.sh nopause) 
cmake -DCMAKE_TOOLCHAIN_FILE=armgcc.cmake -DCMAKE_BUILD_TYPE="int flash release" -G "Unix Makefiles" 
make all 
if [ "${1}" != "nopause" ]; then
read -p "Press any key to continue... " -n1 -s
fi
