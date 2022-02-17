//
//  ContentView.swift
//  API Calling
//
//  Created by Student on 2/8/22.
//

import SwiftUI

struct ContentView: View {
    @State private var elementsOnTable = [Element]()
    @State private var showingAlert = false
    init () {
        UITableView.appearance().backgroundColor = .green
    }
    var body: some View {
        NavigationView {
            List(elementsOnTable) { elementList in
                NavigationLink(
                    destination: VStack {
                        Text(elementList.name)
                            .padding()
                        Text(elementList.symbol)
                            .padding()
                        Text(elementList.history)
                            .padding()
                        Text(elementList.facts)
                            .padding()
                    },
                    label: {
                        HStack {
                            Text(elementList.symbol)
                            Text(elementList.name)
                        }
                    })
                    .foregroundColor(.blue)
            }
            .navigationTitle("All Periodic Elements")
        }
        .onAppear(perform: {
            periodicApi()
        })
        .alert(isPresented: $showingAlert, content: {
            Alert(title: Text("Loading Error"),
                  message: Text("There was a problem loading the data"),
                  dismissButton: .default(Text("OK")))
        })
    }
    
    
    func periodicApi() {
        let apiKey = "?rapidapi-key=98ee719c29msh95601a79921ea8fp170b67jsnbb2227354604"
        let query = "https://periodictable.p.rapidapi.com/\(apiKey)"
        if let url = URL(string: query) {
            if let data = try? Data(contentsOf: url) {
                let json = try! JSON(data: data)
                let contents = json.arrayValue
                for item in contents {
                    let name = item["name"].stringValue
                    let symbol = item["symbol"].stringValue
                    let history = item["history"].stringValue
                    let facts = item["facts"].stringValue
                    let elementList = Element(name: name, symbol: symbol, history: history, facts: facts)
                    elementsOnTable.append(elementList)
                }
                return
            }
        }
        showingAlert = true
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Element: Identifiable {
    let id = UUID()
    var name: String
    var symbol: String
    var history: String
    var facts: String
}
