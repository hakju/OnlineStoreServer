import Fluent
import SQLKit

struct CreateProduct: Migration {
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        return database.schema(Products.schema)
            .id()
            .field("title", .string, .required)
            .field("price", .uint64, .required)
            .field("stock", .uint64, .required)
            .field("description", .string)
            .field("image", .array(of: .string))
            .field("password", .string, .required)
            .create()
    }

    func revert(on database: Database) -> EventLoopFuture<Void> {
        return database.schema(Products.schema).delete()
    }
}
