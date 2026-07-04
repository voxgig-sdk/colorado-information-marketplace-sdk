# Typed models for the ColoradoInformationMarketplace SDK.
#
# GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
# params (op.<name>.points[].args.params[]). Field/param types come from the
# canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
# @voxgig/apidef VALID_CANON). Do not edit by hand.

from __future__ import annotations

from dataclasses import dataclass
from typing import Optional, Any


@dataclass
class Catalog:
    category: Optional[str] = None
    created_at: Optional[str] = None
    description: Optional[str] = None
    id: Optional[str] = None
    publisher: Optional[str] = None
    tag: Optional[list] = None
    title: Optional[str] = None
    type: Optional[str] = None
    updated_at: Optional[str] = None
    url: Optional[str] = None


@dataclass
class CatalogListMatch:
    category: Optional[str] = None
    created_at: Optional[str] = None
    description: Optional[str] = None
    id: Optional[str] = None
    publisher: Optional[str] = None
    tag: Optional[list] = None
    title: Optional[str] = None
    type: Optional[str] = None
    updated_at: Optional[str] = None
    url: Optional[str] = None

