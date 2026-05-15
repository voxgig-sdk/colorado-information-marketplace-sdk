package core

var UtilityRegistrar func(u *Utility)

var NewBaseFeatureFunc func() Feature

var NewTestFeatureFunc func() Feature

var NewCatalogEntityFunc func(client *ColoradoInformationMarketplaceSDK, entopts map[string]any) ColoradoInformationMarketplaceEntity

