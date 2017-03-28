final class AnnictAPI {
    struct SearchWorks : AnnictRequest {
        typealias Response = SearchWorksResponse

        var method: HTTPMethod {
            return .get
        }

        var path: String {
            return "/works"
        }

        var parameters: Any? {
            return nil
        }
    }
}
