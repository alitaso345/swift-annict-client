import Foundation

protocol AnnictRequest {
    associatedtype Response: JSONDecodable

    var baseURL: URL { get }
    var path: String { get }
    var method: HTTPMethod { get }
    var parameters: Any? { get }
}

extension AnnictRequest {
    var baseURL: URL {
        return URL(string: "https://api.annict.com/v1")!
    }
}
