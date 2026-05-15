-- ColoradoInformationMarketplace SDK error

local ColoradoInformationMarketplaceError = {}
ColoradoInformationMarketplaceError.__index = ColoradoInformationMarketplaceError


function ColoradoInformationMarketplaceError.new(code, msg, ctx)
  local self = setmetatable({}, ColoradoInformationMarketplaceError)
  self.is_sdk_error = true
  self.sdk = "ColoradoInformationMarketplace"
  self.code = code or ""
  self.msg = msg or ""
  self.ctx = ctx
  self.result = nil
  self.spec = nil
  return self
end


function ColoradoInformationMarketplaceError:error()
  return self.msg
end


function ColoradoInformationMarketplaceError:__tostring()
  return self.msg
end


return ColoradoInformationMarketplaceError
