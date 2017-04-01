import Foundation

print("Annict Client")

let token = ProcessInfo.processInfo.environment["ANNICT_ACCESS_TOKEN"]
print(token!)

let client = AnnictClient(accessToken: token!)
let request = AnnictAPI.CreateRecord(
    episodeId: 89006,
    comment: "オッ",
    rating: 3)

client.send(request: request) { result in
    switch result {
    case let .success(response):
        print(response)
        exit(0)
    case let .failure(error):
        print(error)
        exit(1)
    }
}

let timeoutTimeInterval: TimeInterval = 60
Thread.sleep(forTimeInterval: timeoutTimeInterval)
exit(1)
