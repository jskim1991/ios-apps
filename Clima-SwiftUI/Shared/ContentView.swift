//
//  ContentView.swift
//  Shared
//
//  Created by kjaesik on 2022/07/15.
//

import SwiftUI



struct ContentView: View {
    
    @State var searchInput: String
    
    var body: some View {
        
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    Button {
                        // action
                    } label: {
                        Image(systemName: "location.circle.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(.black)
                            .frame(width: 40, height: 40)
                    }
                    .padding(.leading, 24)
                    
                    TextField("Enter city", text: $searchInput)
                        .multilineTextAlignment(.trailing)
                        .font(.system(size: 25))
                        .padding()
                        
                    
                    Button {
                        // action
                    } label: {
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(.black)
                            .frame(width: 40, height: 40)
                    }
                    .padding(.trailing, 24)
                }
                
                HStack {
                    Spacer()
                    Image(systemName: "sun.max")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 120, height: 120)
                        .padding()
                        
                }
                
                HStack {
                    Spacer()
                    Text("21")
                        .font(.system(size: 100))
                        .bold()
                    Text("°C")
                        .font(.system(size: 100))
                        .padding(.trailing)
                }
                
                HStack {
                    Spacer()
                    Text("London")
                        .font(.system(size: 30))
                        .padding(.trailing)
                }
                Spacer()
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(searchInput: "")
    }
}
