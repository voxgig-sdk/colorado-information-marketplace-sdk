<?php
declare(strict_types=1);

// ColoradoInformationMarketplace SDK utility: prepare_body

class ColoradoInformationMarketplacePrepareBody
{
    public static function call(ColoradoInformationMarketplaceContext $ctx): mixed
    {
        if ($ctx->op->input === 'data') {
            return ($ctx->utility->transform_request)($ctx);
        }
        return null;
    }
}
