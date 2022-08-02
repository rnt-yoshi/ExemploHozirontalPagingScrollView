//
//  ContentView.swift
//  ExemploHozirontalPagingScrollView
//
//  Created by Renato Yoshinari on 02/08/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            LazyHStack {
                PageView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct PageView: View {
    var body: some View {
        TabView {
            ForEach(0..<30) { i in
                ZStack {
                    Color.black
                    Text("Page: \(i + 1)").foregroundColor(.white)
                }.clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
            }
            .padding(.all, 10)
        }
        .frame(
            width: UIScreen.main.bounds.width,
            height: UIScreen.main.bounds.height - 100)
        .tabViewStyle(PageTabViewStyle())
    }
}
