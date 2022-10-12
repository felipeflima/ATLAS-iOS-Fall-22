//
//  ContentView.swift
//  ModelFromData
//
//  Created by Felipe Lima on 10/11/22.
//

import SwiftUI

struct ContentView: View {
    @State private var locations: [Location] = []
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
        }
        .padding()
        .onAppear(perform: readFile)
    }
    private func readFile(){
        if let url = Bundle.main.url(forResource: "locations", withExtension: "json"),
           let data = try? Data(contentsOf: url) {
            let decoder = JSONDecoder()
            if let jsonData = try? decoder.decode(JSONData.self, from: data){
                print(jsonData.locations)
                self.locations = jsonData.locations
                print(locations[0].name)
            }
        }
    }
}

struct JSONData: Decodable{
    let locations: [Location]
}


struct Location: Decodable, Identifiable{
    let id: Int
    let name: String
    let latitude: Double
    let longitude: Double
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
