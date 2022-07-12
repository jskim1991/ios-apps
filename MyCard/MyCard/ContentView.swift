//
//  ContentView.swift
//  MyCard
//
//  Created by Jaesik Kim on 2022/07/12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52, opacity: 1.00)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("avatar")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150.0, height: 150.0, alignment: .center)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Your name")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .font(Font.custom("Roboto", size: 25))
                    .foregroundColor(.white)
                
                Divider()
                
                InfoView(text: "+82 10 0000 0000", imageName: "phone.fill")
                InfoView(text: "yourname@email.com", imageName: "envelope.fill")   
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "your phone number goes here", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
    }
}
