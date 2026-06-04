# ColoradoInformationMarketplace SDK

Browse the State of Colorado's open data portal covering business, transportation, demographics, water, energy, health and more

> TypeScript, Python, PHP, Golang, Ruby, Lua SDKs, a CLI, an interactive REPL, and an MCP server for AI agents — all generated from one OpenAPI spec by [@voxgig/sdkgen](https://github.com/voxgig/sdkgen).

## About Colorado Information Marketplace

The [Colorado Information Marketplace](https://data.colorado.gov/) is the [State of Colorado](https://data.colorado.gov/)'s open data portal, run on the Socrata Open Data platform (Tyler Technologies). It exposes hundreds of state government datasets so the public can query, chart and reuse them.

Datasets are grouped into eleven public categories on the portal:

- Water
- Business
- Demographics
- Transportation
- Energy
- Early Childhood
- Recreation
- Health
- Education
- Public Safety
- Agriculture

Each dataset is published as a Socrata resource and is reachable as JSON via `https://data.colorado.gov/resource/{dataset-id}.json` (for example `resource/4ykn-tg5h.json` for Colorado business entities). Standard SODA query parameters such as `$where`, `$select`, `$limit` and `$offset` are supported on these resource endpoints.

Access is open and CORS is enabled, so the API can be called directly from browser code; high-volume users are encouraged to register a Socrata application token to lift throttling on shared, anonymous traffic.

## Try it

**TypeScript**
```bash
npm install colorado-information-marketplace
```

**Python**
```bash
pip install colorado-information-marketplace-sdk
```

**PHP**
```bash
composer require voxgig/colorado-information-marketplace-sdk
```

**Golang**
```bash
go get github.com/voxgig-sdk/colorado-information-marketplace-sdk/go
```

**Ruby**
```bash
gem install colorado-information-marketplace-sdk
```

**Lua**
```bash
luarocks install colorado-information-marketplace-sdk
```

## 30-second quickstart

### TypeScript

```ts
import { ColoradoInformationMarketplaceSDK } from 'colorado-information-marketplace'

const client = new ColoradoInformationMarketplaceSDK({})

// List all catalogs
const catalogs = await client.Catalog().list()
```

See the [TypeScript README](ts/README.md) for the
full guide, or scroll down for the same example in other languages.

## What's in the box

| Surface | Use it for | Path |
| --- | --- | --- |
| **SDK** (TypeScript, Python, PHP, Golang, Ruby, Lua) | App integration | `ts/` `py/` `php/` `go/` `rb/` `lua/` |
| **CLI** | Scripts, CI, ops, one-off API calls | `go-cli/` |
| **MCP server** | AI agents (Claude, Cursor, Cline) | `go-mcp/` |

## Use it from an AI agent (MCP)

The generated MCP server exposes every operation in this SDK as an
[MCP](https://modelcontextprotocol.io) tool that Claude, Cursor or Cline
can call directly. Build and register it:

```bash
cd go-mcp && go build -o colorado-information-marketplace-mcp .
```

Then add it to your agent's MCP config (Claude Desktop, Cursor, etc.):

```json
{
  "mcpServers": {
    "colorado-information-marketplace": {
      "command": "/abs/path/to/colorado-information-marketplace-mcp"
    }
  }
}
```

## Entities

The API exposes one entity:

| Entity | Description | API path |
| --- | --- | --- |
| **Catalog** | The portal's dataset catalog — individual datasets are addressed as Socrata resources at `https://data.colorado.gov/resource/{dataset-id}.json` and span business, transportation, demographics, water, energy, health, education, public safety, agriculture, recreation and early childhood. | `/catalog` |

Each entity supports the following operations where available: **load**,
**list**, **create**, **update**, and **remove**.

## Quickstart in other languages

### Python

```python
from coloradoinformationmarketplace_sdk import ColoradoInformationMarketplaceSDK

client = ColoradoInformationMarketplaceSDK({})

# List all catalogs
catalogs, err = client.Catalog(None).list(None, None)
```

### PHP

```php
<?php
require_once 'coloradoinformationmarketplace_sdk.php';

$client = new ColoradoInformationMarketplaceSDK([]);

// List all catalogs
[$catalogs, $err] = $client->Catalog(null)->list(null, null);
```

### Golang

```go
import sdk "github.com/voxgig-sdk/colorado-information-marketplace-sdk/go"

client := sdk.NewColoradoInformationMarketplaceSDK(map[string]any{})

// List all catalogs
catalogs, err := client.Catalog(nil).List(nil, nil)
```

### Ruby

```ruby
require_relative "ColoradoInformationMarketplace_sdk"

client = ColoradoInformationMarketplaceSDK.new({})

# List all catalogs
catalogs, err = client.Catalog(nil).list(nil, nil)
```

### Lua

```lua
local sdk = require("colorado-information-marketplace_sdk")

local client = sdk.new({})

-- List all catalogs
local catalogs, err = client:Catalog(nil):list(nil, nil)
```

## Unit testing in offline mode

Every SDK ships a test mode that swaps the HTTP transport for an
in-memory mock, so unit tests run offline.

### TypeScript

```ts
const client = ColoradoInformationMarketplaceSDK.test()
const result = await client.Catalog().load({ id: 'test01' })
// result.ok === true, result.data contains mock data
```

### Python

```python
client = ColoradoInformationMarketplaceSDK.test(None, None)
result, err = client.Catalog(None).load(
    {"id": "test01"}, None
)
```

### PHP

```php
$client = ColoradoInformationMarketplaceSDK::test(null, null);
[$result, $err] = $client->Catalog(null)->load(
    ["id" => "test01"], null
);
```

### Golang

```go
client := sdk.TestSDK(nil, nil)
result, err := client.Catalog(nil).Load(
    map[string]any{"id": "test01"}, nil,
)
```

### Ruby

```ruby
client = ColoradoInformationMarketplaceSDK.test(nil, nil)
result, err = client.Catalog(nil).load(
  { "id" => "test01" }, nil
)
```

### Lua

```lua
local client = sdk.test(nil, nil)
local result, err = client:Catalog(nil):load(
  { id = "test01" }, nil
)
```

## How it works

Every SDK call runs the same five-stage pipeline:

1. **Point** — resolve the API endpoint from the operation definition.
2. **Spec** — build the HTTP specification (URL, method, headers, body).
3. **Request** — send the HTTP request.
4. **Response** — receive and parse the response.
5. **Result** — extract the result data for the caller.

A feature hook fires at each stage (e.g. `PrePoint`, `PreSpec`,
`PreRequest`), so features can inspect or modify the pipeline without
forking the SDK.

### Features

| Feature | Purpose |
| --- | --- |
| **TestFeature** | In-memory mock transport for testing without a live server |

Pass custom features via the `extend` option at construction time.

### Direct and Prepare

For endpoints the entity model doesn't cover, use the low-level methods:

- **`direct(fetchargs)`** — build and send an HTTP request in one step.
- **`prepare(fetchargs)`** — build the request without sending it.

Both accept a map with `path`, `method`, `params`, `query`,
`headers`, and `body`. See the [How-to guides](#how-to-guides) below.

## How-to guides

### Make a direct API call

When the entity interface does not cover an endpoint, use `direct`:

**TypeScript:**
```ts
const result = await client.direct({
  path: '/api/resource/{id}',
  method: 'GET',
  params: { id: 'example' },
})
console.log(result.data)
```

**Python:**
```python
result, err = client.direct({
    "path": "/api/resource/{id}",
    "method": "GET",
    "params": {"id": "example"},
})
```

**PHP:**
```php
[$result, $err] = $client->direct([
    "path" => "/api/resource/{id}",
    "method" => "GET",
    "params" => ["id" => "example"],
]);
```

**Go:**
```go
result, err := client.Direct(map[string]any{
    "path":   "/api/resource/{id}",
    "method": "GET",
    "params": map[string]any{"id": "example"},
})
```

**Ruby:**
```ruby
result, err = client.direct({
  "path" => "/api/resource/{id}",
  "method" => "GET",
  "params" => { "id" => "example" },
})
```

**Lua:**
```lua
local result, err = client:direct({
  path = "/api/resource/{id}",
  method = "GET",
  params = { id = "example" },
})
```

## Per-language documentation

- [TypeScript](ts/README.md)
- [Python](py/README.md)
- [PHP](php/README.md)
- [Golang](go/README.md)
- [Ruby](rb/README.md)
- [Lua](lua/README.md)

## Using the Colorado Information Marketplace

- Upstream: [https://data.colorado.gov/](https://data.colorado.gov/)
- API docs: [https://data.colorado.gov/browse](https://data.colorado.gov/browse)

- Data is published by the State of Colorado as part of its open data programme; see the portal's [Terms of Use](https://data.colorado.gov/) for general conditions.
- Each dataset may carry its own licence, attribution requirement or refresh schedule, so check the dataset metadata before redistribution.
- The portal is powered by the Socrata Open Data platform (Tyler Technologies); the Socrata Open Data API (SODA) conventions apply to all `resource/{id}` endpoints.

---

Generated from the Colorado Information Marketplace OpenAPI spec by [@voxgig/sdkgen](https://github.com/voxgig/sdkgen).
