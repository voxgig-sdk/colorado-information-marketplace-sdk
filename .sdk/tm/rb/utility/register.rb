# ColoradoInformationMarketplace SDK utility registration
require_relative '../core/utility_type'
require_relative 'clean'
require_relative 'done'
require_relative 'make_error'
require_relative 'feature_add'
require_relative 'feature_hook'
require_relative 'feature_init'
require_relative 'fetcher'
require_relative 'make_fetch_def'
require_relative 'make_context'
require_relative 'make_options'
require_relative 'make_request'
require_relative 'make_response'
require_relative 'make_result'
require_relative 'make_point'
require_relative 'make_spec'
require_relative 'make_url'
require_relative 'param'
require_relative 'prepare_auth'
require_relative 'prepare_body'
require_relative 'prepare_headers'
require_relative 'prepare_method'
require_relative 'prepare_params'
require_relative 'prepare_path'
require_relative 'prepare_query'
require_relative 'result_basic'
require_relative 'result_body'
require_relative 'result_headers'
require_relative 'transform_request'
require_relative 'transform_response'

ColoradoInformationMarketplaceUtility.registrar = ->(u) {
  u.clean = ColoradoInformationMarketplaceUtilities::Clean
  u.done = ColoradoInformationMarketplaceUtilities::Done
  u.make_error = ColoradoInformationMarketplaceUtilities::MakeError
  u.feature_add = ColoradoInformationMarketplaceUtilities::FeatureAdd
  u.feature_hook = ColoradoInformationMarketplaceUtilities::FeatureHook
  u.feature_init = ColoradoInformationMarketplaceUtilities::FeatureInit
  u.fetcher = ColoradoInformationMarketplaceUtilities::Fetcher
  u.make_fetch_def = ColoradoInformationMarketplaceUtilities::MakeFetchDef
  u.make_context = ColoradoInformationMarketplaceUtilities::MakeContext
  u.make_options = ColoradoInformationMarketplaceUtilities::MakeOptions
  u.make_request = ColoradoInformationMarketplaceUtilities::MakeRequest
  u.make_response = ColoradoInformationMarketplaceUtilities::MakeResponse
  u.make_result = ColoradoInformationMarketplaceUtilities::MakeResult
  u.make_point = ColoradoInformationMarketplaceUtilities::MakePoint
  u.make_spec = ColoradoInformationMarketplaceUtilities::MakeSpec
  u.make_url = ColoradoInformationMarketplaceUtilities::MakeUrl
  u.param = ColoradoInformationMarketplaceUtilities::Param
  u.prepare_auth = ColoradoInformationMarketplaceUtilities::PrepareAuth
  u.prepare_body = ColoradoInformationMarketplaceUtilities::PrepareBody
  u.prepare_headers = ColoradoInformationMarketplaceUtilities::PrepareHeaders
  u.prepare_method = ColoradoInformationMarketplaceUtilities::PrepareMethod
  u.prepare_params = ColoradoInformationMarketplaceUtilities::PrepareParams
  u.prepare_path = ColoradoInformationMarketplaceUtilities::PreparePath
  u.prepare_query = ColoradoInformationMarketplaceUtilities::PrepareQuery
  u.result_basic = ColoradoInformationMarketplaceUtilities::ResultBasic
  u.result_body = ColoradoInformationMarketplaceUtilities::ResultBody
  u.result_headers = ColoradoInformationMarketplaceUtilities::ResultHeaders
  u.transform_request = ColoradoInformationMarketplaceUtilities::TransformRequest
  u.transform_response = ColoradoInformationMarketplaceUtilities::TransformResponse
}
