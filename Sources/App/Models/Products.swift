import FluentPostgresDriver
import Vapor

final class Products: Model, Content {
    static let schema = "Products"
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "title")
    var title: String
    
    @Field(key: "price")
    var price: UInt64
    
    @Field(key: "stock")
    var stock: UInt64
    
    @Field(key: "description")
    var description: String?
    
    @Field(key: "image")
    var image: Array<String>?
    
    @Field(key: "password")
    var password: String
    
    init() {}
    
    init(id: UUID? = nil, title: String, price: UInt64, stock: UInt64, description: String? = nil, image: Array<String>? = nil, password: String) {
        self.id = id
        self.title = title
        self.price = price
        self.stock = stock
        self.description = description
        self.image = image
        self.password = password
    }
}
