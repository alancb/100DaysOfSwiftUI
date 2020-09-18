//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Alan Barth on 9/17/20.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowingAlert = false
    
    
    var body: some View {
        
        Button(action: {
            isShowingAlert = true
        }, label: {
            Text("Button")
                .alert(isPresented: $isShowingAlert, content: {
                    Alert(title: Text("I'm an alert"), message: Text("This is a message"), dismissButton: .default(Text("Ok")))
                })
        })
//        VStack(alignment: .trailing) {
//            Text("Hello, world!")
//            Spacer()
//            Text("I'm inside a vertical stack")
//
//        }
//        HStack(spacing: 20) {
//            Text("Hello, world!")
//            Text("I'm inside a horizontal stack")
//            Button(action: {
//                print("Edit button was tapped")
//            }) {
//                HStack(spacing: 10) {
//                    Image(systemName: "pencil")
//                    Text("Edit")
//                }
//            }
//
//        }
        ZStack(alignment: .leading) {
//            Color.red.frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
//            LinearGradient(gradient: Gradient(colors: [.white, .black]), startPoint: .top, endPoint: .bottom)
//            RadialGradient(gradient: Gradient(colors: [.blue, .black]), center: .center, startRadius: 20, endRadius: 200)
//            AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center)


//            Text("Hello, world!")
//            Text("I'm inside a Z stack")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
