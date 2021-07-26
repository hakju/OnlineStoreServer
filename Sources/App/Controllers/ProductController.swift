import Vapor
import Fluent

struct ProductController: RouteCollection {
    func boot(routes: RoutesBuilder) throws {
//        let products = routes.grouped("products")
//        products.get(use: fetch)
//        products.post(use: create)

//        products.group(":id") { product in
//            product.patch(use: update)
//            product.delete(use: delete)
//        }
    }
//
//    func fetch(req: Request) throws -> EventLoopFuture<[ProductList]> {
//        try checkContentType(req)
//        return Product.query(on: req.db).all().map { products -> [ProductList] in
//            let group = Dictionary(grouping: products, by: { $0.state })
//
//            var lists: [ProductList] = []
//            for (key, value) in group {
//                let productSimples = value.compactMap { $0.response }
//                lists.append(ProductList(state: key, list: productSimples))
//            }
//
//            return lists
//        }
//    }
//
//    func create(req: Request) throws -> EventLoopFuture<Response> {
//        try checkContentType(req)
//        try ProductCreate.validate(content: req)
//        let ProductCreate = try req.content.decode(ProductCreate.self)
//
//        let newThing = NewThing(title: thingCreate.title, description: thingCreate.description)
//        if let dueDate = thingCreate.dueDate {
//            newThing.dueDate = Date(timeIntervalSince1970: dueDate)
//        }
//
//        return newThing.save(on: req.db).flatMapThrowing {
//            let header = ("Content-Type", "application/json; charset=utf-8")
//
//            let id = try newThing.requireID()
//            let body = ["id": id]
//            let bodyJsonData = try JSONEncoder().encode(body)
//
//            return Response(status: .created,
//                            headers: HTTPHeaders(dictionaryLiteral: header),
//                            body: .init(data: bodyJsonData))
//        }
//    }
//
//    func update(req: Request) throws -> EventLoopFuture<HTTPResponseStatus> {
//        try checkContentType(req)
//        let id = try verifyId(req)
//
//        try ThingUpdate.validate(content: req)
//        let thingUpdate = try req.content.decode(ThingUpdate.self)
//
//        return Thing.find(id, on: req.db)
//            .unwrap(or: Abort(.notFound))
//            .flatMap { thing in
//                if let title = thingUpdate.title {
//                    thing.title = title
//                }
//
//                if let description = thingUpdate.description {
//                    thing.description = description
//                }
//
//                if let dueDateUnixDouble = thingUpdate.dueDate {
//                    thing.dueDate = Date(timeIntervalSince1970: dueDateUnixDouble)
//                }
//
//                if let state = thingUpdate.state {
//                    thing.state = state
//                }
//
//                return thing.save(on: req.db).transform(to: HTTPStatus.noContent)
//            }
//    }
//
//    func delete(req: Request) throws -> EventLoopFuture<HTTPResponseStatus> {
//        try checkContentType(req)
//        let id = try verifyId(req)
//
//        return Thing.find(id, on: req.db)
//            .unwrap(or: Abort(.notFound))
//            .flatMap { $0.delete(on: req.db) }
//            .transform(to: HTTPStatus.noContent)
//    }
//
//    private func checkContentType(_ req: Request) throws {
//        guard let contentType = req.headers.contentType,
//              contentType == .json else {
//            throw Abort(.unsupportedMediaType)
//        }
//    }
//
//    private func verifyId(_ req: Request) throws -> Int {
//        guard let idInput = req.parameters.get("id"),
//              let id = Int(idInput) else {
//            throw ThingError.invalidId
//        }
//
//        return id
//    }
}
