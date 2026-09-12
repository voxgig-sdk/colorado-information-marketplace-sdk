import { Context } from './Context';
declare class ColoradoInformationMarketplaceError extends Error {
    isColoradoInformationMarketplaceError: boolean;
    sdk: string;
    code: string;
    ctx: Context;
    status: number;
    get notFound(): boolean;
    constructor(code: string, msg: string, ctx: Context);
}
export { ColoradoInformationMarketplaceError };
