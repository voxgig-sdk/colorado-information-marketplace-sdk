# frozen_string_literal: true

# Typed models for the ColoradoInformationMarketplace SDK.
#
# GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
# params (op.<name>.points[].args.params[]). Member types come from the
# canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
# @voxgig/apidef VALID_CANON). Ruby types are unenforced; these YARD
# annotations document the shapes. Do not edit by hand.

# Catalog entity data model.
#
# @!attribute [rw] category
#   @return [String, nil]
#
# @!attribute [rw] created_at
#   @return [String, nil]
#
# @!attribute [rw] description
#   @return [String, nil]
#
# @!attribute [rw] id
#   @return [String, nil]
#
# @!attribute [rw] publisher
#   @return [String, nil]
#
# @!attribute [rw] tags
#   @return [Array, nil]
#
# @!attribute [rw] title
#   @return [String, nil]
#
# @!attribute [rw] type
#   @return [String, nil]
#
# @!attribute [rw] updated_at
#   @return [String, nil]
#
# @!attribute [rw] url
#   @return [String, nil]
Catalog = Struct.new(
  :category,
  :created_at,
  :description,
  :id,
  :publisher,
  :tags,
  :title,
  :type,
  :updated_at,
  :url,
  keyword_init: true
)

# Request payload for Catalog#list.
#
# @!attribute [rw] category
#   @return [String, nil]
#
# @!attribute [rw] created_at
#   @return [String, nil]
#
# @!attribute [rw] description
#   @return [String, nil]
#
# @!attribute [rw] id
#   @return [String, nil]
#
# @!attribute [rw] publisher
#   @return [String, nil]
#
# @!attribute [rw] tags
#   @return [Array, nil]
#
# @!attribute [rw] title
#   @return [String, nil]
#
# @!attribute [rw] type
#   @return [String, nil]
#
# @!attribute [rw] updated_at
#   @return [String, nil]
#
# @!attribute [rw] url
#   @return [String, nil]
CatalogListMatch = Struct.new(
  :category,
  :created_at,
  :description,
  :id,
  :publisher,
  :tags,
  :title,
  :type,
  :updated_at,
  :url,
  keyword_init: true
)

