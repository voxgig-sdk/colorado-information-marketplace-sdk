# ColoradoInformationMarketplace SDK utility: feature_add
module ColoradoInformationMarketplaceUtilities
  FeatureAdd = ->(ctx, f) {
    ctx.client.features << f
  }
end
