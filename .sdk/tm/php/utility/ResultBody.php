<?php
declare(strict_types=1);

// ColoradoInformationMarketplace SDK utility: result_body

class ColoradoInformationMarketplaceResultBody
{
    public static function call(ColoradoInformationMarketplaceContext $ctx): ?ColoradoInformationMarketplaceResult
    {
        $response = $ctx->response;
        $result = $ctx->result;
        if ($result && $response && $response->json_func && $response->body) {
            $result->body = ($response->json_func)();
        }
        return $result;
    }
}
