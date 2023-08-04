//
//  DetailView.swift
//  H4X0R News SwiftUI
//
//  Created by Willian Bogarin Jr on 2023. 08. 03..
//

import SwiftUI
import WebKit
import Foundation
import CoreData

struct DetailView: View {
    let url:String?
    
    var body: some View {
        Webview(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}


