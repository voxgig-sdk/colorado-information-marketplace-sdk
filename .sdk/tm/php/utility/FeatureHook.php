<?php
declare(strict_types=1);

// ColoradoInformationMarketplace SDK utility: feature_hook

class ColoradoInformationMarketplaceFeatureHook
{
    public static function call(ColoradoInformationMarketplaceContext $ctx, string $name): void
    {
        if (!$ctx->client) {
            return;
        }
        $features = $ctx->client->features ?? null;
        if (!$features) {
            return;
        }
        foreach ($features as $f) {
            if (method_exists($f, $name)) {
                $f->$name($ctx);
            }
        }
    }
}
