<?php
declare(strict_types=1);

// ColoradoInformationMarketplace SDK feature factory

require_once __DIR__ . '/feature/BaseFeature.php';
require_once __DIR__ . '/feature/TestFeature.php';


class ColoradoInformationMarketplaceFeatures
{
    public static function make_feature(string $name)
    {
        switch ($name) {
            case "base":
                return new ColoradoInformationMarketplaceBaseFeature();
            case "test":
                return new ColoradoInformationMarketplaceTestFeature();
            default:
                return new ColoradoInformationMarketplaceBaseFeature();
        }
    }
}
