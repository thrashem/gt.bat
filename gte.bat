@echo off
chcp 65001 >nul
"%SystemRoot%\System32\curl.exe" -s -G "https://translate.googleapis.com/translate_a/single" --data-urlencode "client=gtx" --data-urlencode "sl=auto" --data-urlencode "tl=en" --data-urlencode "dt=t" --data-urlencode "q=%~1" | "C:\Program Files\Git\usr\bin\cut.exe" -d'"' -f2