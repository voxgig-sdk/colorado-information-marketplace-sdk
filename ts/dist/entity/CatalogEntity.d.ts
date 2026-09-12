import { ColoradoInformationMarketplaceEntityBase } from '../ColoradoInformationMarketplaceEntityBase';
import type { ColoradoInformationMarketplaceSDK } from '../ColoradoInformationMarketplaceSDK';
import type { Control } from '../types';
import type { Catalog, CatalogListMatch } from '../ColoradoInformationMarketplaceTypes';
declare class CatalogEntity extends ColoradoInformationMarketplaceEntityBase<Catalog> {
    constructor(client: ColoradoInformationMarketplaceSDK, entopts: any);
    make(this: CatalogEntity): CatalogEntity;
    list(this: any, reqmatch?: CatalogListMatch, ctrl?: Control): Promise<CatalogEntity[]>;
}
export { CatalogEntity };
