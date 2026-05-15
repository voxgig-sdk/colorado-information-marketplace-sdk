# ProjectName SDK exists test

import pytest
from coloradoinformationmarketplace_sdk import ColoradoInformationMarketplaceSDK


class TestExists:

    def test_should_create_test_sdk(self):
        testsdk = ColoradoInformationMarketplaceSDK.test(None, None)
        assert testsdk is not None
