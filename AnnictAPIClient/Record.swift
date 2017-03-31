struct Record : JSONDecodable {
    let id: Int
    let commnet: String
    let rating: Int?
    let isModified: Bool
    let likesCount: Int
    let commnetsCount: Int
    let createdAt: String
    let user: User
    let work: Work
    let episode: Episode

    init(json: Any) throws {
        guard let dictionary = json as? [String : Any] else {
            throw JSONDecodeError.invalidFormat(json: json)
        }

        guard let id = dictionary["id"] as? Int else {
            throw JSONDecodeError.missingValue(key: "id", actualValue: dictionary["id"])
        }

        guard let commnet = dictionary["comment"] as? String else {
            throw JSONDecodeError.missingValue(key: "comment", actualValue: dictionary["comment"])
        }

        if let rating = dictionary["rating"] as? Int {
            self.rating = rating
        } else {
            self.rating = nil
        }

        guard let isModified = dictionary["is_modified"] as? Bool else {
            throw JSONDecodeError.missingValue(key: "is_modified", actualValue: dictionary["is_modified"])
        }

        guard let likesCount = dictionary["likes_count"] as? Int else {
            throw JSONDecodeError.missingValue(key: "likes_count", actualValue: dictionary["likes_count"])
        }

        guard let commnetsCount = dictionary["comments_count"] as? Int else {
            throw JSONDecodeError.missingValue(key: "comments_count", actualValue: dictionary["comments_count"])
        }

        guard let createdAt = dictionary["created_at"] as? String else {
            throw JSONDecodeError.missingValue(key: "created_at", actualValue: dictionary["created_at"])
        }

        guard let userObject = dictionary["user"] else {
            throw JSONDecodeError.missingValue(key: "user", actualValue: dictionary["user"])
        }

        guard let workObject = dictionary["work"] else {
            throw JSONDecodeError.missingValue(key: "work", actualValue: dictionary["work"])
        }

        guard let episodeObject = dictionary["episode"] else {
            throw JSONDecodeError.missingValue(key: "episode", actualValue: dictionary["episode"])
        }

        self.id = id
        self.commnet = commnet
        self.isModified = isModified
        self.likesCount = likesCount
        self.commnetsCount = commnetsCount
        self.createdAt = createdAt
        self.user = try User(json: userObject)
        self.work = try Work(json: workObject)
        self.episode = try Episode(json: episodeObject)
    }
}
