# ColoradoInformationMarketplace SDK feature factory

from coloradoinformationmarketplace_sdk.feature.base_feature import ColoradoInformationMarketplaceBaseFeature
from coloradoinformationmarketplace_sdk.feature.test_feature import ColoradoInformationMarketplaceTestFeature


def _make_feature(name):
    features = {
        "base": lambda: ColoradoInformationMarketplaceBaseFeature(),
        "test": lambda: ColoradoInformationMarketplaceTestFeature(),
    }
    factory = features.get(name)
    if factory is not None:
        return factory()
    return features["base"]()
