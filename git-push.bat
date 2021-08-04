:: 请以ANSI编码格式打开和保存, 这样确保可以使用中文内容, 而不改变Batch编码格式(CHCP 65001)
:: 获得管理员权限
:: @ECHO OFF&(PUSHD "%~DP0")&(REG QUERY "HKU\S-1-5-19">NUL 2>&1)||(
:: powershell -Command "Start-Process '%~sdpnx0' -Verb RunAs"&&EXIT)
@REM cmd /k "hexo clean && git add . && git commit -m ""deploy from hexo-admin"" && git push"
git add .
git commit -m "%date%"
git push
:: pause