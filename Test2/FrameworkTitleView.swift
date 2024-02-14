//
//  FrameworkTitleView.swift
//  Test2
//
//  Created by Peter-Paul Manzel on 19.01.24.
//

import Foundation
import SwiftUI


struct FrameworkTitleView: View {
    
    
    var f: Framework
    
    var body: some View {
        VStack {
            
            Image(f.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            
            Text(f.name)
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundStyle(Color(.label))
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .frame(width: 90)
            
        }
        .padding()
    }
}
