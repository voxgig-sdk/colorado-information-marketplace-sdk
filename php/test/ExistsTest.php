<?php
declare(strict_types=1);

// ColoradoInformationMarketplace SDK exists test

require_once __DIR__ . '/../coloradoinformationmarketplace_sdk.php';

use PHPUnit\Framework\TestCase;

class ExistsTest extends TestCase
{
    public function test_create_test_sdk(): void
    {
        $testsdk = ColoradoInformationMarketplaceSDK::test(null, null);
        $this->assertNotNull($testsdk);
    }
}
