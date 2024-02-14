//
//  SafariView.swift
//  Test2
//
//  Created by Peter-Paul Manzel on 19.01.24.
//

import Foundation
import SwiftUI
import SafariServices



struct SafariView: UIViewControllerRepresentable {
    
    
    
    let url: URL

    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {
        
    }
    
}
