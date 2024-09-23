//
//  BreedFetcher.swift
//  Cat Bible
//
//  Created by Anıl Öncül on 23.09.2024.
//

import Foundation
 
class BreedFetcher: ObservableObject {
    
    @Published var breeds = [Breed]()
    @Published var errorMessage: String? = nil
    @Published var isLoading: Bool = false
    
    init() {
        
    }
    
    func fetchAllBreed() {
        
        isLoading = true
        //TO DO: error handling if cannot creat url
        let url = URL(string: "https://api.thecatapi.com/v1/breeds")!
        
        let task = URLSession.shared.dataTask(with: url) {[unowned self] data, response, error in
            
            self.isLoading = false
            
            let decoder = JSONDecoder()
           
            if let data = data {
                
                do {
                    let breeds = try decoder.decode([Breed].self, from: data)
                    print(breeds)
                    self.breeds = breeds
                } catch {
                    //TO DO: show error
                    print(error)
                }
                
                
                
            }
        }
        task.resume()
    }
    
}
