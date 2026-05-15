<?php
declare(strict_types=1);

// ColoradoInformationMarketplace SDK utility: result_headers

class ColoradoInformationMarketplaceResultHeaders
{
    public static function call(ColoradoInformationMarketplaceContext $ctx): ?ColoradoInformationMarketplaceResult
    {
        $response = $ctx->response;
        $result = $ctx->result;
        if ($result) {
            if ($response && is_array($response->headers)) {
                $result->headers = $response->headers;
            } else {
                $result->headers = [];
            }
        }
        return $result;
    }
}
