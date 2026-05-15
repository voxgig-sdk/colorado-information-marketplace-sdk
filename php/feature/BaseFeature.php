<?php
declare(strict_types=1);

// ColoradoInformationMarketplace SDK base feature

class ColoradoInformationMarketplaceBaseFeature
{
    public string $version;
    public string $name;
    public bool $active;

    public function __construct()
    {
        $this->version = '0.0.1';
        $this->name = 'base';
        $this->active = true;
    }

    public function get_version(): string { return $this->version; }
    public function get_name(): string { return $this->name; }
    public function get_active(): bool { return $this->active; }

    public function init(ColoradoInformationMarketplaceContext $ctx, array $options): void {}
    public function PostConstruct(ColoradoInformationMarketplaceContext $ctx): void {}
    public function PostConstructEntity(ColoradoInformationMarketplaceContext $ctx): void {}
    public function SetData(ColoradoInformationMarketplaceContext $ctx): void {}
    public function GetData(ColoradoInformationMarketplaceContext $ctx): void {}
    public function GetMatch(ColoradoInformationMarketplaceContext $ctx): void {}
    public function SetMatch(ColoradoInformationMarketplaceContext $ctx): void {}
    public function PrePoint(ColoradoInformationMarketplaceContext $ctx): void {}
    public function PreSpec(ColoradoInformationMarketplaceContext $ctx): void {}
    public function PreRequest(ColoradoInformationMarketplaceContext $ctx): void {}
    public function PreResponse(ColoradoInformationMarketplaceContext $ctx): void {}
    public function PreResult(ColoradoInformationMarketplaceContext $ctx): void {}
    public function PreDone(ColoradoInformationMarketplaceContext $ctx): void {}
    public function PreUnexpected(ColoradoInformationMarketplaceContext $ctx): void {}
}
