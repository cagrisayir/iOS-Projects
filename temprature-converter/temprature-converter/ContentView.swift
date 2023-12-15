//
//  ContentView.swift
//  temprature-converter
//
//  Created by Omer Cagri Sayir on 15.12.2023.
//

import SwiftUI

struct ContentView: View {
    @State var stringDegree: String = ""
    @State var degree: Int = 0
    
    var body: some View {
        VStack(alignment:.leading) {
            
            HStack{
                Spacer()
                Text("Temperature converter")
                    .font(.title3)
                    .fontWeight(.semibold)
                Spacer()
            }
            .padding(.bottom)
            
            HStack {
                VStack(alignment:.leading) {
                    Text("Degrees")
                        .font(.headline)
                        .fontWeight(.light)
                    
                    TextField("", text: $stringDegree)
                        .padding(.vertical, 5)
                        .overlay(Divider(), alignment: .bottom)
                        .frame(width: 150)
                    
                }
                VStack(alignment: .leading) {
                    Text("Type")
                        .font(.headline)
                        .fontWeight(.light)
                    
                }
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
