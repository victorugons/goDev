import Foundation

import Foundation

protocol ChatServiceProtocol {
    func getChats(completion: @escaping(Result<[Chat], ServiceError>) -> Void)
}
