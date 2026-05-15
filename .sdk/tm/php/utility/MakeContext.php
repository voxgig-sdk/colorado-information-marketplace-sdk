<?php
declare(strict_types=1);

// ColoradoInformationMarketplace SDK utility: make_context

require_once __DIR__ . '/../core/Context.php';

class ColoradoInformationMarketplaceMakeContext
{
    public static function call(array $ctxmap, ?ColoradoInformationMarketplaceContext $basectx): ColoradoInformationMarketplaceContext
    {
        return new ColoradoInformationMarketplaceContext($ctxmap, $basectx);
    }
}
