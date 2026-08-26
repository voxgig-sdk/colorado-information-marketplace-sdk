<?php
declare(strict_types=1);

// ColoradoInformationMarketplace SDK configuration

class ColoradoInformationMarketplaceConfig
{
    /** @var array<string,mixed>|null */
    private static ?array $shared_config = null;

    /**
     * Return the process-wide config, built once on first use. The SDK reads
     * the config on every request and never writes to it, so one instance is
     * shared by every client rather than rebuilt per client.
     *
     * PHP arrays are copy-on-write, so callers that do mutate the result get
     * their own copy and cannot disturb the shared one.
     */
    public static function shared_config(): array
    {
        if (self::$shared_config === null) {
            self::$shared_config = self::make_config();
        }
        return self::$shared_config;
    }

    /**
     * Build a fresh, fully materialised config array. Every call rebuilds the
     * whole structure, so prefer shared_config unless you need a private copy.
     */
    public static function make_config(): array
    {
        return [
            "main" => [
                "name" => "ColoradoInformationMarketplace",
                "slug" => "colorado-information-marketplace",
                "version" => "0.0.1",
                "target" => "php",
            ],
            "feature" => [
                "test" => [
          'options' => [
            'active' => false,
          ],
          'transport' => 'base',
        ],
            ],
            "options" => [
                "base" => "https://data.colorado.gov/api",
                "headers" => [
          'content-type' => 'application/json',
        ],
                "entity" => [
                    "catalog" => [],
                ],
            ],
            "entity" => [
        'catalog' => [
          'fields' => [
            [
              'name' => 'category',
              'short' => 'Category of the dataset (e.g., government, transportation, demographics, business)',
              'type' => '`$STRING`',
            ],
            [
              'name' => 'created_at',
              'short' => 'Timestamp when the dataset was created',
              'type' => '`$STRING`',
            ],
            [
              'name' => 'description',
              'short' => 'Detailed description of the dataset',
              'type' => '`$STRING`',
            ],
            [
              'name' => 'id',
              'short' => 'Unique identifier for the dataset',
              'type' => '`$STRING`',
            ],
            [
              'name' => 'publisher',
              'short' => 'Organization or entity that published the dataset',
              'type' => '`$STRING`',
            ],
            [
              'name' => 'tags',
              'short' => 'Tags associated with the dataset',
              'type' => '`$ARRAY`',
            ],
            [
              'name' => 'title',
              'short' => 'Title of the dataset',
              'type' => '`$STRING`',
            ],
            [
              'name' => 'type',
              'short' => 'Type of resource',
              'type' => '`$STRING`',
            ],
            [
              'name' => 'updated_at',
              'short' => 'Timestamp when the dataset was last updated',
              'type' => '`$STRING`',
            ],
            [
              'name' => 'url',
              'short' => 'URL to access the dataset',
              'type' => '`$STRING`',
            ],
          ],
          'name' => 'catalog',
          'op' => [
            'list' => [
              'input' => 'data',
              'name' => 'list',
              'points' => [
                [
                  'args' => [
                    'query' => [
                      [
                        'kind' => 'query',
                        'name' => 'category',
                        'orig' => 'category',
                        'type' => '`$STRING`',
                      ],
                      [
                        'example' => 100,
                        'kind' => 'query',
                        'name' => 'limit',
                        'orig' => 'limit',
                        'type' => '`$INTEGER`',
                      ],
                      [
                        'example' => 0,
                        'kind' => 'query',
                        'name' => 'offset',
                        'orig' => 'offset',
                        'type' => '`$INTEGER`',
                      ],
                      [
                        'kind' => 'query',
                        'name' => 'search',
                        'orig' => 'search',
                        'type' => '`$STRING`',
                      ],
                      [
                        'kind' => 'query',
                        'name' => 'type',
                        'orig' => 'type',
                        'type' => '`$STRING`',
                      ],
                    ],
                  ],
                  'kind' => 'http',
                  'method' => 'GET',
                  'orig' => '/catalog',
                  'parts' => [
                    'catalog',
                  ],
                  'select' => [
                    'exist' => [
                      'category',
                      'limit',
                      'offset',
                      'search',
                      'type',
                    ],
                  ],
                  'transform' => [
                    'req' => '`reqdata`',
                    'res' => '`body.results`',
                  ],
                ],
              ],
            ],
          ],
          'relations' => [
            'ancestors' => [],
          ],
        ],
      ],
        ];
    }


    public static function make_feature(string $name)
    {
        require_once __DIR__ . '/features.php';
        return ColoradoInformationMarketplaceFeatures::make_feature($name);
    }
}
