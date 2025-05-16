//
//  MainScreenView.swift
//  NewColorPicker
//
//  Created by Ксения Гагина on 12.05.2025.
//

import SwiftUI

struct MainScreenView: View {
  
  @StateObject private var viewModel = MainScreenViewModel()
  @State private var defaultValueRed: Double = 127
  @State private var textValueRed: String = "127"
  @State private var defaultValueGreen: Double = 127
  @State private var textValueGreen: String = "127"
  @State private var defaultValueBlue: Double = 127
  @State private var textValueBlue: String = "127"
  private var currentColor: Color {
    Color(
      red: defaultValueRed / 255,
      green: defaultValueGreen / 255,
      blue: defaultValueBlue / 255
    )
  }
  
  
  var body: some View {
    ZStack {
      Color(red: defaultValueRed / 255, green: defaultValueGreen / 255, blue: defaultValueBlue / 255).opacity(0.5).ignoresSafeArea()
      VStack {
        Capsule()
          .fill(currentColor)
          .frame(width: 280, height: 100)
          .padding(70)
        
        HStack {
          Text("\(Int(defaultValueRed))")
            .font(.title)
            .fontWidth(.standard)
          Slider(
            value: $defaultValueRed,
            in: 0...255,
            step: 1
          )
          .tint(Color.red)
          .onChange(of: defaultValueRed) { newValue, _ in
            textValueRed = "\(Int(newValue))"
          }
          TextField("", text: $textValueRed)
            .frame(width: 55, alignment: .center)
            .font(.title2)
            .textFieldStyle(.roundedBorder)
            .keyboardType(.numberPad)
            .onChange(of: textValueRed) { newValue, _ in
              if let newDoubleValue = Double(newValue), newDoubleValue >= 0, newDoubleValue <= 255 {
                defaultValueRed = newDoubleValue
              } else if newValue.isEmpty {
                defaultValueRed = 0
              }
            }
        }
        .padding(.leading, 30)
        .padding(.trailing, 30)
        
        HStack {
          Text("\(Int(defaultValueGreen))")
            .font(.title)
            .fontWidth(.standard)
          Slider(
            value: $defaultValueGreen,
            in: 0...255,
            step: 1
          )
          .tint(Color.green)
          .onChange(of: defaultValueGreen) { newValue, _ in
            textValueGreen = "\(Int(newValue))"
          }
          TextField("", text: $textValueGreen)
            .frame(width: 55, alignment: .center)
            .font(.title2)
            .textFieldStyle(.roundedBorder)
            .keyboardType(.numberPad)
            .onChange(of: textValueGreen) { newValue, _ in
              if let newDoubleValue = Double(newValue), newDoubleValue >= 0, newDoubleValue <= 255 {
                defaultValueGreen = newDoubleValue
              } else if newValue.isEmpty {
                defaultValueGreen = 0
              }
            }
        }
        .padding(.leading, 30)
        .padding(.trailing, 30)
        
        HStack {
          Text("\(Int(defaultValueBlue))")
            .font(.title)
            .fontWidth(.standard)
          Slider(
            value: $defaultValueBlue,
            in: 0...255,
            step: 1
          )
          .tint(Color.blue)
          .onChange(of: defaultValueBlue) { newValue, _ in
            textValueBlue = "\(Int(newValue))"
          }
          TextField("", text: $textValueBlue)
            .frame(width: 55, alignment: .center)
            .font(.title2)
            .textFieldStyle(.roundedBorder)
            .keyboardType(.numberPad)
            .onChange(of: textValueBlue) { newValue, _ in
              if let newDoubleValue = Double(newValue), newDoubleValue >= 0, newDoubleValue <= 255 {
                defaultValueBlue = newDoubleValue
              } else if newValue.isEmpty {
                defaultValueBlue = 0
              }
            }
        }
        .padding(.leading, 30)
        .padding(.trailing, 30)
      }
    }
  }
}

#Preview {
  MainScreenView()
  
}
