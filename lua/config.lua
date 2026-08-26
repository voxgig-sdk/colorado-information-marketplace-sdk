-- ColoradoInformationMarketplace SDK configuration

-- Build a fresh, fully materialised config table. Every call rebuilds the
-- whole structure, so prefer require("config_shared") unless you need a
-- private copy you intend to mutate.
local function make_config()
  return {
    main = {
      name = "ColoradoInformationMarketplace",
      slug = "colorado-information-marketplace",
      version = "0.0.1",
      target = "lua",
    },
    feature = {
      ["test"] = {
        ["options"] = {
          ["active"] = false,
        },
        ["transport"] = "base",
      },
    },
    options = {
      base = "https://data.colorado.gov/api",
      headers = {
        ["content-type"] = "application/json",
      },
      entity = {
        ["catalog"] = {},
      },
    },
    entity = {
      ["catalog"] = {
        ["fields"] = {
          {
            ["name"] = "category",
            ["short"] = "Category of the dataset (e.g., government, transportation, demographics, business)",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "created_at",
            ["short"] = "Timestamp when the dataset was created",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "description",
            ["short"] = "Detailed description of the dataset",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "id",
            ["short"] = "Unique identifier for the dataset",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "publisher",
            ["short"] = "Organization or entity that published the dataset",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "tags",
            ["short"] = "Tags associated with the dataset",
            ["type"] = "`$ARRAY`",
          },
          {
            ["name"] = "title",
            ["short"] = "Title of the dataset",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "type",
            ["short"] = "Type of resource",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "updated_at",
            ["short"] = "Timestamp when the dataset was last updated",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "url",
            ["short"] = "URL to access the dataset",
            ["type"] = "`$STRING`",
          },
        },
        ["name"] = "catalog",
        ["op"] = {
          ["list"] = {
            ["input"] = "data",
            ["name"] = "list",
            ["points"] = {
              {
                ["args"] = {
                  ["query"] = {
                    {
                      ["kind"] = "query",
                      ["name"] = "category",
                      ["orig"] = "category",
                      ["type"] = "`$STRING`",
                    },
                    {
                      ["example"] = 100,
                      ["kind"] = "query",
                      ["name"] = "limit",
                      ["orig"] = "limit",
                      ["type"] = "`$INTEGER`",
                    },
                    {
                      ["example"] = 0,
                      ["kind"] = "query",
                      ["name"] = "offset",
                      ["orig"] = "offset",
                      ["type"] = "`$INTEGER`",
                    },
                    {
                      ["kind"] = "query",
                      ["name"] = "search",
                      ["orig"] = "search",
                      ["type"] = "`$STRING`",
                    },
                    {
                      ["kind"] = "query",
                      ["name"] = "type",
                      ["orig"] = "type",
                      ["type"] = "`$STRING`",
                    },
                  },
                },
                ["kind"] = "http",
                ["method"] = "GET",
                ["orig"] = "/catalog",
                ["parts"] = {
                  "catalog",
                },
                ["select"] = {
                  ["exist"] = {
                    "category",
                    "limit",
                    "offset",
                    "search",
                    "type",
                  },
                },
                ["transform"] = {
                  ["req"] = "`reqdata`",
                  ["res"] = "`body.results`",
                },
              },
            },
          },
        },
        ["relations"] = {
          ["ancestors"] = {},
        },
      },
    },
  }
end


local function make_feature(name)
  local features = require("features")
  local factory = features[name]
  if factory ~= nil then
    return factory()
  end
  return features.base()
end


-- Attach make_feature to the SDK class
local function setup_sdk(SDK)
  SDK._make_feature = make_feature
end


return make_config
