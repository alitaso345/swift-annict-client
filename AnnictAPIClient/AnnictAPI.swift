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

    struct SearchUsers : AnnictRequest {
        typealias Response = SearchUsersResponse

        var method: HTTPMethod {
            return .get
        }

        var path: String {
            return "/users"
        }

        var parameters: Any? {
            return nil
        }
    }

    struct SearchFollowingUsers : AnnictRequest {
        typealias Response = SearchUsersResponse

        var method: HTTPMethod {
            return .get
        }

        var path: String {
            return "/following"
        }

        var parameters: Any? {
            return nil
        }
    }

    struct SearchFollowers : AnnictRequest {
        typealias Response = SearchUsersResponse

        var method: HTTPMethod {
            return .get
        }

        var path: String {
            return "/followers"
        }

        var parameters: Any? {
            return nil
        }
    }
}
