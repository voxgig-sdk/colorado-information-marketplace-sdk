import { CatalogEntity } from './entity/CatalogEntity';
export type * from './ColoradoInformationMarketplaceTypes';
import { inspect } from 'node:util';
import type { Context, Feature } from './types';
import { config } from './Config';
import { ColoradoInformationMarketplaceEntityBase } from './ColoradoInformationMarketplaceEntityBase';
import { Utility } from './utility/Utility';
import { BaseFeature } from './feature/base/BaseFeature';
declare const stdutil: Utility;
declare class ColoradoInformationMarketplaceSDK {
    _mode: string;
    _options: any;
    _utility: Utility;
    _features: Feature[];
    _rootctx: Context;
    constructor(options?: any);
    options(): any;
    utility(): any;
    prepare(fetchargs?: any): Promise<any>;
    direct(fetchargs?: any): Promise<Error | {
        ok: boolean;
        status: number;
        headers: any;
        data: any;
        err?: undefined;
    } | {
        ok: boolean;
        err: any;
        status?: undefined;
        headers?: undefined;
        data?: undefined;
    }>;
    _rawRequest(fetchargs?: any): Promise<Error | {
        ok: boolean;
        status: number;
        headers: any;
        data: any;
        err?: undefined;
    } | {
        ok: boolean;
        err: any;
        status?: undefined;
        headers?: undefined;
        data?: undefined;
    }>;
    graphql(query: string, variables?: any, ctrl?: any): Promise<any>;
    Catalog(entopts?: Record<string, any>): CatalogEntity;
    static test(testoptsarg?: any, sdkoptsarg?: any): ColoradoInformationMarketplaceSDK;
    tester(testopts?: any, sdkopts?: any): ColoradoInformationMarketplaceSDK;
    toJSON(): {
        name: string;
    };
    toString(): string;
    [inspect.custom](): string;
}
declare const SDK: typeof ColoradoInformationMarketplaceSDK;
export { stdutil, config, BaseFeature, ColoradoInformationMarketplaceEntityBase, ColoradoInformationMarketplaceSDK, SDK, };
