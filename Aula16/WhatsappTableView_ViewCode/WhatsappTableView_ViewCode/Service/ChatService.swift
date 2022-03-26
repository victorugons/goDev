import Foundation

class ChatService: ChatServiceProtocol {
    
    let session = URLSession.shared
    let url = "https://run.mocky.io/v3/8719c068-0981-42b0-95b4-f32bd788f048"
    
    static var shared: ChatService = {
        let instance = ChatService()
        return instance
    }()
    
    func getChats(completion: @escaping(Result<[Chat], ServiceError>) -> Void) {
        
        guard let url = URL(string: url) else { return completion(.failure(.urlInvalid)) }
        
        let dataTask = session.dataTask(with: url) { data, _ , _ in
            
            do {
                
                guard let jsonData = data else { return completion(.failure(.noDataAvailable)) }
                
                let decoder = JSONDecoder()
                
                let response = try decoder.decode([Chat].self, from: jsonData)
                
                completion(.success(response))
                
                
            } catch {
                completion(.failure(.decodeFailed))
            }
            
        }
        
        dataTask.resume()
    }
}
