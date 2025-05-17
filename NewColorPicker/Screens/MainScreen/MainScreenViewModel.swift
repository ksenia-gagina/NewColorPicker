//
//  MainScreenViewModel.swift
//  NewColorPicker
//
//  Created by Ксения Гагина on 17.05.2025.
//
import Foundation
import SwiftUI

final class MainScreenViewModel: ObservableObject {
  @Published var defaultValueRed: Double = 127
  @Published var textValueRed: String = "127"
  @Published var defaultValueGreen: Double = 127
  @Published var textValueGreen: String = "127"
  @Published var defaultValueBlue: Double = 127
  @Published var textValueBlue: String = "127"
  
  var currentColor: Color {
    Color(
      red: defaultValueRed / 255,
      green: defaultValueGreen / 255,
      blue: defaultValueBlue / 255
    )
  }
}
