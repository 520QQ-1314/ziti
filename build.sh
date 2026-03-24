#!/bin/bash

echo "🚀 开始生成字体..."

# 运行 FontForge 脚本
fontforge -script src/pang_round_bold_full.py

echo "📦 打包字体..."

mkdir -p release

cp fonts/*.ttf release/
cp fonts/*.otf release/
cp README.md release/
cp LICENSE release/

cd release
zip -r PangRoundBold.zip .

echo "✅ 完成！发布包在 release/PangRoundBold.zip"
