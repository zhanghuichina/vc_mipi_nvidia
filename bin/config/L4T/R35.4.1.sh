#!/bin/bash

DEV_URL=https://developer.nvidia.com/downloads/embedded/l4t/r35_release_v4.1

case $VC_MIPI_SOM in
        AGXXavier|XavierNX|XavierNXSD|AGXOrin|OrinNX8GB|OrinNX16GB|OrinNano4GB_SD|OrinNano8GB_SD|OrinNano4GB_NVME|OrinNano8GB_NVME)
                BSP_FILE=jetson_linux_r35.4.1_aarch64.tbz2
                ;;
esac

RFS_FILE=tegra_linux_sample-root-filesystem_r35.4.1_aarch64.tbz2
SRC_FILE=public_sources.tbz2

CHECK4MD5=1

BSP_FILE_CHECKSUM="78ab6da96c1da2da5f855c59bbcae791"
RFS_FILE_CHECKSUM="f25931d1b15cc10d11b60395bd33ec1a"
SRC_FILE_CHECKSUM="dd9b85e4f8b3c82604d01f3906193d69"

. $BIN_DIR/config/L4T/urls_35.1.0+.sh