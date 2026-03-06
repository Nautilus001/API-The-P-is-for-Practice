import Foundation

struct Box: Codable {
    let name: String
    let size: Int?
    let file_type: String?
    let children: [Box]?
}


let url = URL(string: "http://127.0.0.1:5000/files")!

URLSession.shared.dataTask(with: url) { data, _, _ in
    
    if let data = data {
        let boxes = try? JSONDecoder().decode( Box.self, from: data)
        print (boxes ?? "bad")
    } else {
        print("bad")
    }
}.resume()
        
