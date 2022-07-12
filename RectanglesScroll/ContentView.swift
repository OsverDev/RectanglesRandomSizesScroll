//
//  ContentView.swift
//  RectanglesScroll
//
//  Created by Osver Fernandez on 7/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView{
            LazyVStack{
            ForEach(0...50,id: \.self){ i in
                Rectangle()
                    .fill(LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .center, endPoint: .bottomTrailing))
                    .cornerRadius(20)
                    .frame(height: Double.random(in: 200...300))
                    
            }
            }.frame(width: UIScreen.main.bounds.width/10*9,  alignment: .center)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
