#!/bin/bash

# 1. 添加科學上網插件源 (small-package 是目前最穩定的精簡源)
echo 'src-git small8 https://github.com/kenzok8/small-package' >> feeds.conf.default

# 2. 移除重複包 (防止編譯衝突)
rm -rf package/lean/luci-app-ssr-plus
rm -rf package/lean/luci-app-bypass
