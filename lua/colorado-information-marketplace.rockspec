package = "voxgig-sdk-colorado-information-marketplace"
version = "0.0-1"
source = {
  url = "git://github.com/voxgig-sdk/colorado-information-marketplace-sdk.git"
}
description = {
  summary = "ColoradoInformationMarketplace SDK for Lua",
  license = "MIT"
}
dependencies = {
  "lua >= 5.3",
  "dkjson >= 2.5",
  "dkjson >= 2.5",
}
build = {
  type = "builtin",
  modules = {
    ["colorado-information-marketplace_sdk"] = "colorado-information-marketplace_sdk.lua",
    ["config"] = "config.lua",
    ["features"] = "features.lua",
  }
}
