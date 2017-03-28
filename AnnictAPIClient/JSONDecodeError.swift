enum JSONDecodeError : Error {
    case invalidFormat(json: Any)
    case missingValue(key: String, value: Any?)
}
