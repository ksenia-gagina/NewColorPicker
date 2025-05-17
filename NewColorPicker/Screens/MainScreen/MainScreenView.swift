//
//  MainScreenView.swift
//  NewColorPicker
//
//  Created by Ксения Гагина on 12.05.2025.
//

import SwiftUI

struct MainScreenView: View {
  
  @StateObject private var viewModel = MainScreenViewModel()
  var body: some View {
    ZStack {
      Color(
        red: viewModel.defaultValueRed / 255,
        green: viewModel.defaultValueGreen / 255,
        blue: viewModel.defaultValueBlue / 255
      ).opacity(0.5).ignoresSafeArea()
      VStack {
        Capsule()
          .fill(viewModel.currentColor)
          .frame(width: 280, height: 100)
          .padding(70)
        
        HStack {
          Text("\(Int(viewModel.defaultValueRed))")
            .font(.title)
            .fontWidth(.standard)
          Slider(
            value: $viewModel.defaultValueRed,
            in: 0...255,
            step: 1
          )
          .tint(Color.red)
          .onChange(of: viewModel.defaultValueRed) { newValue, _ in
            viewModel.textValueRed = "\(Int(newValue))"
          }
          TextField("", text: $viewModel.textValueRed)
            .frame(width: 55, alignment: .center)
            .font(.title2)
            .textFieldStyle(.roundedBorder)
            .keyboardType(.numberPad)
            .onChange(of: viewModel.textValueRed) { newValue, _ in
              if let newDoubleValue = Double(newValue), newDoubleValue >= 0, newDoubleValue <= 255 {
                viewModel.defaultValueRed = newDoubleValue
              } else if newValue.isEmpty {
                viewModel.defaultValueRed = 0
              }
            }
        }
        .padding(.leading, 30)
        .padding(.trailing, 30)
        
        HStack {
          Text("\(Int(viewModel.defaultValueGreen))")
            .font(.title)
            .fontWidth(.standard)
          Slider(
            value: $viewModel.defaultValueGreen,
            in: 0...255,
            step: 1
          )
          .tint(Color.green)
          .onChange(of: viewModel.defaultValueGreen) { newValue, _ in
            viewModel.textValueGreen = "\(Int(newValue))"
          }
          TextField("", text: $viewModel.textValueGreen)
            .frame(width: 55, alignment: .center)
            .font(.title2)
            .textFieldStyle(.roundedBorder)
            .keyboardType(.numberPad)
            .onChange(of: viewModel.textValueGreen) { newValue, _ in
              if let newDoubleValue = Double(newValue), newDoubleValue >= 0, newDoubleValue <= 255 {
                viewModel.defaultValueGreen = newDoubleValue
              } else if newValue.isEmpty {
                viewModel.defaultValueGreen = 0
              }
            }
        }
        .padding(.leading, 30)
        .padding(.trailing, 30)
        
        HStack {
          Text("\(Int(viewModel.defaultValueBlue))")
            .font(.title)
            .fontWidth(.standard)
          Slider(
            value: $viewModel.defaultValueBlue,
            in: 0...255,
            step: 1
          )
          .tint(Color.blue)
          .onChange(of: viewModel.defaultValueBlue) { newValue, _ in
            viewModel.textValueBlue = "\(Int(newValue))"
          }
          TextField("", text: $viewModel.textValueBlue)
            .frame(width: 55, alignment: .center)
            .font(.title2)
            .textFieldStyle(.roundedBorder)
            .keyboardType(.numberPad)
            .onChange(of: viewModel.textValueBlue) { newValue, _ in
              if let newDoubleValue = Double(newValue), newDoubleValue >= 0, newDoubleValue <= 255 {
                viewModel.defaultValueBlue = newDoubleValue
              } else if newValue.isEmpty {
                viewModel.defaultValueBlue = 0
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
