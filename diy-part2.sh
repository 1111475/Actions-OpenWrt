#!/bin/bash

# 1. 修改默認 IP 為 192.168.2.1 (防止與光貓衝突)
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate

# 2. 性能優化：強制開啟硬件流量卸載 (Turbo ACC 的關鍵)
sed -i 's/default n/default y/g' package/lean/shortcut-fe/Makefile
