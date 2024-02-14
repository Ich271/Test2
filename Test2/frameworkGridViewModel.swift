//
//  ViewModel.swift
//  Test2
//
//  Created by Peter-Paul Manzel on 19.01.24.
//

import Foundation
import SwiftUI


final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet { isShowinngDetailedView = true }
    }
    
    
    
    
    @Published var isShowinngDetailedView = false
    
    let columms: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())
    ]
    
    
}
