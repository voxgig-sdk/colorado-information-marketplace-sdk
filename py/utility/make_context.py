# ColoradoInformationMarketplace SDK utility: make_context

from core.context import ColoradoInformationMarketplaceContext


def make_context_util(ctxmap, basectx):
    return ColoradoInformationMarketplaceContext(ctxmap, basectx)
