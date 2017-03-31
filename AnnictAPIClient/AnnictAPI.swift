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

    struct SearchEpisodes : AnnictRequest {
        typealias Response = SearchEpisodesResponse

        var method: HTTPMethod {
            return .get
        }

        var path: String {
            return "/episodes"
        }

        var parameters: Any? {
            return nil
        }
    }

    struct SearchRecords : AnnictRequest {
        typealias Response = SearchRecordsResponse

        var method: HTTPMethod {
            return .get
        }

        var path: String {
            return "/records"
        }

        var parameters: Any? {
            return nil
        }
    }
}
