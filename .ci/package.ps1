mkdir ${env:buildPath}\.dist | Out-Null

Set-Location "${env:buildPath}\bin\${env:_RELEASE_CONFIGURATION}"
7z a "${env:buildPath}\.dist\${env:_RELEASE_NAME}-${env:_RELEASE_VERSION}_${env:_RELEASE_CONFIGURATION}.zip" ".\*"

Move-Item *.nupkg ${env:buildPath}\.dist
