import Foundation

class PersonService: PersonServiceProtocol {
    
    let session = URLSession.shared
    let url = "https://run.mocky.io/v3/f0c36709-84e2-4043-a0f0-3bec512f6c84"
    
    static var shared: PersonService = {
        let instance = PersonService()
        return instance
    }()
    
    func getPeople(completion: @escaping(Result<[Person], ServiceError>) -> Void) {
        
        guard let url = URL(string: url) else { return completion(.failure(.urlInvalid)) }
        
        let dataTask = session.dataTask(with: url) { data, _ , _ in
            
            do {
                
                guard let jsonData = data else { return completion(.failure(.noDataAvailable)) }
                
                let decoder = JSONDecoder()
                
                let response = try decoder.decode([Person].self, from: jsonData)
                
                completion(.success(response))
                
                
            } catch {
                completion(.failure(.decodeFailed))
            }
            
        }
        
        dataTask.resume()
    }
}
