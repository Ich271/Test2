//
//  FrameworkDetailedView.swift
//  Test2
//
//  Created by Peter-Paul Manzel on 19.01.24.
//

import Foundation
import SwiftUI






struct FrameworkDetailedView: View {
    
    
    
    
    var f: Framework
    @State private var isShowingSafariView: Bool = false
    
    var body: some View {
        
        
    
        
        
        
        VStack{
            
            Spacer()
            
            FrameworkTitleView(f: f)
            
            Text(f.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                
                
                Label("Learn More", systemImage: "book,fill")
                    
                /*Text("Learn More")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .frame(width: 280, height: 50)
                    .background(.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)*/
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            .tint(.red)
            
            
        }
        .sheet(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: f.urlString) ?? URL(string: "https://google.com")!)
        })
    }
    

    
    
}
