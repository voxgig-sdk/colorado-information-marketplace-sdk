export interface Catalog {
    category?: string;
    created_at?: string;
    description?: string;
    id?: string;
    publisher?: string;
    tags?: any[];
    title?: string;
    type?: string;
    updated_at?: string;
    url?: string;
}
export interface CatalogListMatch {
    category?: string;
    limit?: number;
    offset?: number;
    search?: string;
    type?: string;
}
