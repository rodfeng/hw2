//
//  CustomCell.swift
//  Shopping List
//
//  Created by Tony Hong on 3/12/22.
//

import SwiftUI

struct CustomCell: View {
    var image: String
    var item: String
    var q: Int
    
    var body: some View {
        HStack {
            Image(image)
                .resizable()
                .frame(width: 32, height: 32)
                
            
            Text(item)
            Text("\(q)")
        }
    }
}

