//
//  ProductViewModel.swift
//  onlineShop
//
//  Created by  on 5/2/24.
//

import Foundation

@MainActor
class DivisaViewModel: ObservableObject{
    
    @Published var divisas: Divisa = Divisa(amount: 0, base: "", date: "", rates: [:])
    
    init(){
        getProducts()
    }
    
    func getProducts(){
            Task{ //hace que sea asíncrona la tarea, consiguiendo concurrencia
                do{
                    let divisas = try await NetworkManager.shared.getDivisas()
                    self.divisas = divisas
                    print(divisas)
                }catch{
                        //Generic error
                        print("Invalid response")
                    
                }
            }
        }
    
    
    
}
