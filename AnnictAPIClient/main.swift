import Foundation

print("Annict Client")
print("Enter your annict access token> ", terminator: "")

guard let annictAccessToken = readLine(strippingNewline: true) else {
    exit(1)
}

let client = AnnictClient(accessToken: annictAccessToken)
let request = AnnictAPI.SearchWorks()

client.send(request: request) { result in
    switch result {
    case let .success(response):
        for work in response.works {
            print(work.title)
        }
        //exit(0)
    case let .failure(error):
        print(error)
        exit(1)
    }
}
