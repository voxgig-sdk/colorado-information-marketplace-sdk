<?php
declare(strict_types=1);

// ColoradoInformationMarketplace SDK utility: feature_add

class ColoradoInformationMarketplaceFeatureAdd
{
    public static function call(ColoradoInformationMarketplaceContext $ctx, mixed $f): void
    {
        $ctx->client->features[] = $f;
    }
}
