$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url         = ("https://github.com/manisandro/gImageReader/releases/download/v{0}/gImageReader_{0}_qt5_i686.exe" -f $version)
$url64       = ("https://github.com/manisandro/gImageReader/releases/download/v{0}/gImageReader_{0}_qt5_x86_64.exe" -f $version)

$packageArgs = @{
    fileType       = "exe"
    packageName    = $packageName
    url            = $url
    checksum       = "691d42eeb98522ef74e9f88b2161aa661856c75a"
    checksumType   = "sha1"
    url64bit       = $url64
    checksum64     = "569684e98fdab6d331d19220ed52a871df270d92"
    checksum64Type = "sha1"
    silentArgs     = "/S"
}
Install-ChocolateyPackage @packageArgs
