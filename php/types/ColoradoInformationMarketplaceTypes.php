<?php
declare(strict_types=1);

// Typed models for the ColoradoInformationMarketplace SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
// @voxgig/apidef VALID_CANON). Do not edit by hand.
//
// These are documentation-grade value objects (PHP 8 typed properties),
// registered on the composer classmap autoload. The SDK boundary exchanges
// assoc-arrays; these classes name the shapes for tooling and typed callers.

/** Catalog entity data model. */
class Catalog
{
    public ?string $category = null;
    public ?string $created_at = null;
    public ?string $description = null;
    public ?string $id = null;
    public ?string $publisher = null;
    public ?array $tag = null;
    public ?string $title = null;
    public ?string $type = null;
    public ?string $updated_at = null;
    public ?string $url = null;
}

/** Request payload for Catalog#list. */
class CatalogListMatch
{
    public ?string $category = null;
    public ?string $created_at = null;
    public ?string $description = null;
    public ?string $id = null;
    public ?string $publisher = null;
    public ?array $tag = null;
    public ?string $title = null;
    public ?string $type = null;
    public ?string $updated_at = null;
    public ?string $url = null;
}

