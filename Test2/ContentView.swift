//
//  ContentView.swift
//  Test2
//
//  Created by Peter-Paul Manzel on 19.01.24.
//

import SwiftUI

struct ContentView: View {
    
   
    
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        
        NavigationStack {
            
            ScrollView {
                
                LazyVGrid(columns: viewModel.columms) {
                    
                    ForEach(MockData.frameworks)  {
                        f in 
                        NavigationLink(value: f){
                            FrameworkTitleView(f: f)
                        }
                        
                            
                    }
                }

            }
            
            .navigationTitle("Apple Frameworks")
            .navigationDestination(for: Framework.self) {
                f in FrameworkDetailedView(f: f)
                
            }
        }
        
        
        
        
        
        
        
        
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}







