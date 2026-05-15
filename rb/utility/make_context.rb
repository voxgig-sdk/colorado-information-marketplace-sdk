# ColoradoInformationMarketplace SDK utility: make_context
require_relative '../core/context'
module ColoradoInformationMarketplaceUtilities
  MakeContext = ->(ctxmap, basectx) {
    ColoradoInformationMarketplaceContext.new(ctxmap, basectx)
  }
end
