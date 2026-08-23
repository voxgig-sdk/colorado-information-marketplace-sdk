# ColoradoInformationMarketplace SDK configuration


_shared_config = None


def shared_config():
    """Return the process-wide config, built once on first use.

    The SDK reads the config on every request and never writes to it, so one
    instance is shared by every client rather than rebuilt per client.

    The returned dict is shared: treat it as read-only. Callers that need to
    mutate should use make_config, which always returns a fresh copy.
    """
    global _shared_config
    if _shared_config is None:
        _shared_config = make_config()
    return _shared_config


def make_config():
    """Build a fresh, fully materialised config dict.

    Every call rebuilds the whole structure, so prefer shared_config unless
    you need a private copy you intend to mutate.
    """
    return {
        "main": {
            "name": "ColoradoInformationMarketplace",
            "slug": "colorado-information-marketplace",
            "version": "0.0.1",
            "target": "py",
        },
        "feature": {
            "test": {
        "options": {
          "active": False,
        },
      },
        },
        "options": {
            "base": "https://data.colorado.gov/api",
            "headers": {
        "content-type": "application/json",
      },
            "entity": {
                "catalog": {},
            },
        },
        "entity": {
      "catalog": {
        "fields": [
          {
            "name": "category",
            "short": "Category of the dataset (e.g., government, transportation, demographics, business)",
            "type": "`$STRING`",
          },
          {
            "name": "created_at",
            "short": "Timestamp when the dataset was created",
            "type": "`$STRING`",
          },
          {
            "name": "description",
            "short": "Detailed description of the dataset",
            "type": "`$STRING`",
          },
          {
            "name": "id",
            "short": "Unique identifier for the dataset",
            "type": "`$STRING`",
          },
          {
            "name": "publisher",
            "short": "Organization or entity that published the dataset",
            "type": "`$STRING`",
          },
          {
            "name": "tags",
            "short": "Tags associated with the dataset",
            "type": "`$ARRAY`",
          },
          {
            "name": "title",
            "short": "Title of the dataset",
            "type": "`$STRING`",
          },
          {
            "name": "type",
            "short": "Type of resource",
            "type": "`$STRING`",
          },
          {
            "name": "updated_at",
            "short": "Timestamp when the dataset was last updated",
            "type": "`$STRING`",
          },
          {
            "name": "url",
            "short": "URL to access the dataset",
            "type": "`$STRING`",
          },
        ],
        "name": "catalog",
        "op": {
          "list": {
            "input": "data",
            "name": "list",
            "points": [
              {
                "args": {
                  "query": [
                    {
                      "kind": "query",
                      "name": "category",
                      "orig": "category",
                      "type": "`$STRING`",
                    },
                    {
                      "example": 100,
                      "kind": "query",
                      "name": "limit",
                      "orig": "limit",
                      "type": "`$INTEGER`",
                    },
                    {
                      "example": 0,
                      "kind": "query",
                      "name": "offset",
                      "orig": "offset",
                      "type": "`$INTEGER`",
                    },
                    {
                      "kind": "query",
                      "name": "search",
                      "orig": "search",
                      "type": "`$STRING`",
                    },
                    {
                      "kind": "query",
                      "name": "type",
                      "orig": "type",
                      "type": "`$STRING`",
                    },
                  ],
                },
                "kind": "http",
                "method": "GET",
                "orig": "/catalog",
                "parts": [
                  "catalog",
                ],
                "select": {
                  "exist": [
                    "category",
                    "limit",
                    "offset",
                    "search",
                    "type",
                  ],
                },
                "transform": {
                  "req": "`reqdata`",
                  "res": "`body.results`",
                },
              },
            ],
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
    },
    }
