<?php
declare(strict_types=1);

// ColoradoInformationMarketplace SDK utility: prepare_method

class ColoradoInformationMarketplacePrepareMethod
{
    private const METHOD_MAP = [
        'create' => 'POST',
        'update' => 'PUT',
        'load' => 'GET',
        'list' => 'GET',
        'remove' => 'DELETE',
        'patch' => 'PATCH',
    ];

    public static function call(ColoradoInformationMarketplaceContext $ctx): string
    {
        return self::METHOD_MAP[$ctx->op->name] ?? 'GET';
    }
}
