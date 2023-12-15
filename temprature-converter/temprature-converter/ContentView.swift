//
//  ContentView.swift
//  temprature-converter
//
//  Created by Omer Cagri Sayir on 15.12.2023.
//

import SwiftData
import SwiftUI

struct ContentView: View {
    @Bindable var degrees: Degrees = Degrees()

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Spacer()
                Text("Temperature converter")
                    .font(.title3)
                    .fontWeight(.semibold)
                Spacer()
            }
            .padding(.bottom)

            HStack {
                VStack(alignment: .leading) {
                    Text("Degrees")
                        .font(.headline)
                        .fontWeight(.light)

                    TextField("", text: $degrees.userInput)
                        .keyboardType(.decimalPad)
                        .padding(.vertical, 5)
                        .overlay(Divider(), alignment: .bottom)
                        .frame(width: 150)
                }
                VStack(alignment: .leading) {
                    Text("Type")
                        .font(.headline)
                        .fontWeight(.light)

                    Picker("", selection: $degrees.userInputType) {
                        ForEach(INPUTTYPE.allCases, id: \.self) {
                            Text(String(describing: $0))
                                .foregroundStyle(Color.gray)
                        }
                    }.pickerStyle(.menu)
                }
            }
            .padding(.bottom)

            VStack(alignment: .leading) {
                Text("Result")
                    .font(.headline)
                    .fontWeight(.light)

                Text("\(degrees.celsius, specifier: "%.2f") `C")
                    .padding(.vertical, 5)

                Divider()
            }
            .padding(.bottom, 20)

            HStack {
                Spacer()

                Button("Convert") {
                    degrees.calculateCelsius()
                }

                Spacer()
            }

            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
