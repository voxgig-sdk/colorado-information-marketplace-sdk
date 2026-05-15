# ColoradoInformationMarketplace SDK exists test

require "minitest/autorun"
require_relative "../ColoradoInformationMarketplace_sdk"

class ExistsTest < Minitest::Test
  def test_create_test_sdk
    testsdk = ColoradoInformationMarketplaceSDK.test(nil, nil)
    assert !testsdk.nil?
  end
end
