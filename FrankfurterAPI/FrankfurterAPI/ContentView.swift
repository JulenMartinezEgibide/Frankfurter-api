//
//  ContentView.swift
//  FrankfurterAPI
//
//  Created by  on 11/3/24.
//

import SwiftUI



struct ContentView: View {
    @ObservedObject var divisal = DivisaViewModel()
    
       var body: some View {
           DivisaListView(divisa: divisal.divisas)
       }
   }


#Preview {
    ContentView()
}
