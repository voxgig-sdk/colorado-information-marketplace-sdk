# ColoradoInformationMarketplace SDK feature factory

require_relative 'feature/base_feature'
require_relative 'feature/test_feature'


module ColoradoInformationMarketplaceFeatures
  def self.make_feature(name)
    case name
    when "base"
      ColoradoInformationMarketplaceBaseFeature.new
    when "test"
      ColoradoInformationMarketplaceTestFeature.new
    else
      ColoradoInformationMarketplaceBaseFeature.new
    end
  end
end
