import Foundation

protocol PersonServiceProtocol {
    func getPeople(completion: @escaping(Result<[Person], ServiceError>) -> Void)
}
