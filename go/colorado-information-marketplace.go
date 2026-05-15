package voxgigcoloradoinformationmarketplacesdk

import (
	"github.com/voxgig-sdk/colorado-information-marketplace-sdk/core"
	"github.com/voxgig-sdk/colorado-information-marketplace-sdk/entity"
	"github.com/voxgig-sdk/colorado-information-marketplace-sdk/feature"
	_ "github.com/voxgig-sdk/colorado-information-marketplace-sdk/utility"
)

// Type aliases preserve external API.
type ColoradoInformationMarketplaceSDK = core.ColoradoInformationMarketplaceSDK
type Context = core.Context
type Utility = core.Utility
type Feature = core.Feature
type Entity = core.Entity
type ColoradoInformationMarketplaceEntity = core.ColoradoInformationMarketplaceEntity
type FetcherFunc = core.FetcherFunc
type Spec = core.Spec
type Result = core.Result
type Response = core.Response
type Operation = core.Operation
type Control = core.Control
type ColoradoInformationMarketplaceError = core.ColoradoInformationMarketplaceError

// BaseFeature from feature package.
type BaseFeature = feature.BaseFeature

func init() {
	core.NewBaseFeatureFunc = func() core.Feature {
		return feature.NewBaseFeature()
	}
	core.NewTestFeatureFunc = func() core.Feature {
		return feature.NewTestFeature()
	}
	core.NewCatalogEntityFunc = func(client *core.ColoradoInformationMarketplaceSDK, entopts map[string]any) core.ColoradoInformationMarketplaceEntity {
		return entity.NewCatalogEntity(client, entopts)
	}
}

// Constructor re-exports.
var NewColoradoInformationMarketplaceSDK = core.NewColoradoInformationMarketplaceSDK
var TestSDK = core.TestSDK
var NewContext = core.NewContext
var NewSpec = core.NewSpec
var NewResult = core.NewResult
var NewResponse = core.NewResponse
var NewOperation = core.NewOperation
var MakeConfig = core.MakeConfig
var NewBaseFeature = feature.NewBaseFeature
var NewTestFeature = feature.NewTestFeature
