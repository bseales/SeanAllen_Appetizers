//
//  APButton.swift
//  SeanAllen_Appetizers
//
//  Created by Batson Seales on 6/19/23.
//

import SwiftUI

struct APButton: View {
    let title: Text
    
    var body: some View {
        title
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundColor(.white)
            .background(Color.brandPrimary)
            .cornerRadius(10)
    }
}

struct APButton_Previews: PreviewProvider {
    static var previews: some View {
        APButton(title: Text("Sample Title"))
    }
}
