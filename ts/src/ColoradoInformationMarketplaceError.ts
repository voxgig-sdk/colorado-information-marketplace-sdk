
import { Context } from './Context'


class ColoradoInformationMarketplaceError extends Error {

  isColoradoInformationMarketplaceError = true

  sdk = 'ColoradoInformationMarketplace'

  code: string
  ctx: Context

  constructor(code: string, msg: string, ctx: Context) {
    super(msg)
    this.code = code
    this.ctx = ctx
  }

}

export {
  ColoradoInformationMarketplaceError
}

