import Foundation

protocol AnnictRequest {
    var baseURL: URL { get }
    var path: String { get }
    var method: HTTPMethod { get }
}

extension AnnictRequest {
    var baseURL: URL {
        return URL(string: "https://api.annict.com/v1")!
    }
}
