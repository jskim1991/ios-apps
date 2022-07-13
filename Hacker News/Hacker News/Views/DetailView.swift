//
//  DetailView.swift
//  Hacker News
//
//  Created by Jaesik Kim on 2022/07/13.
//

import SwiftUI


struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "naver.com")
    }
}
