import Foundation


struct Chat: Codable {
    let id: Int
    let name: String
    let picture: String
    let latestTimestamp: String
    let lastMessage: String

    enum CodingKeys: String, CodingKey {
        case id, name, picture
        case latestTimestamp = "latest_timestamp"
        case lastMessage = "lastChat"
    }
}
