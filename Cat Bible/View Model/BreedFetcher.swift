//
//  BreedFetcher.swift
//  Cat Bible
//
//  Created by Anıl Öncül on 23.09.2024.
//

import Foundation
 
class BreedFetcher: ObservableObject {
    
    @Published var breeds = [Breed]()
    
    init() {
        
    }
    
    func fetchAllBreed() {
        //TO DO: error handling if cannot creat url
        let url = URL(string: "https://api.thecatapi.com/v1/breeds")!
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            
            let decoder = JSONDecoder()
           
            if let data = data {
                
                do {
                    let breeds = try decoder.decode([Breed].self, from: data)
                    print(breeds)
                } catch {
                    //TO DO: show error
                    print(error)
                }
                
                
                
            }
        }
        task.resume()
    }
    
}
