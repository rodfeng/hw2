//
//  ContentView.swift
//  Shopping List
//
//  Created by Tony Hong on 3/11/22.
//

import SwiftUI

class Items: Identifiable {
    let imageName: String
    let itemName: String
    let quantity: Int
    
    init(image: String, item: String, q: Int) {
        self.imageName = image
        self.itemName = item
        self.quantity = q
    }
    
}

struct ContentView: View {
    
    var fruits = [
        Items(image: "banana", item: "Bananas", q: 3),
        Items(image: "apple", item: "Apples", q: 4),
        Items(image: "eggs", item: "Eggs", q: 12)
    ]
    
    var meat = [
        Items(image: "chickenbreast", item: "Chicken", q: 1),
        Items(image: "sirloin", item: "Beef", q: 3)
    ]
    
    var veg = [
        Items(image: "celery", item: "Celery", q: 20),
        Items(image: "broccoli", item: "Broccoli", q: 23)
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Fruits")) {
                    ForEach(fruits) { i in
                        CustomCell(image: i.imageName, item: i.itemName, q: i.quantity)
                    }
                }
                
                Section(header: Text("Meats")) {
                    ForEach(meat) { i in
                        CustomCell(image: i.imageName, item: i.itemName, q: i.quantity)
                    }
                }
                
                Section(header: Text("Vegetables")) {
                    ForEach(veg) { i in
                        CustomCell(image: i.imageName, item: i.itemName, q: i.quantity)
                    }
                }
                
            }.navigationTitle("Shopping List")
        }
        
        
        
        
       
    }
}
