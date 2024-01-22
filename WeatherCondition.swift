//
//  WeatherCondition.swift
//  WeatherAPP
//
//  Created by Geetansh Rajesh on 21/01/24.
//

import Foundation
import SwiftUI
enum WeatherCondition: CustomStringConvertible {
    case sunny, cloudy, raining, PartlyCloudy , thunderstrom , snowing
    var description: String{
        switch self{
        case.sunny:       return "Sunny"
        case.cloudy:      return "Cloudy"
        case.raining:     return "Raining"
        case.PartlyCloudy: return "Mostly Sunny"
        case.thunderstrom:return "Thunderstrom"
        case.snowing:     return "Snowing"
        }
    }
}
extension WeatherCondition {
    var systemImageString : String{
        switch self {
        case.sunny:       return "sun.max.fill"
        case.cloudy:      return "cloud.fill"
        case.raining:     return "cloud.rain.fill"
        case.PartlyCloudy: return "cloud.sun.fill"
        case.thunderstrom:return "cloud.bolt.fill"
        case.snowing:     return "cloud.snow.fill"
        }
    }
}
extension WeatherCondition {
    var image : some View{
       let image = Image(systemName: systemImageString)
        switch self {
        case.sunny:       return image.foregroundColor(.yellow)
        case.cloudy:      return image.foregroundColor(.white)
        case.raining:     return image.foregroundColor(.white)
        case.PartlyCloudy: return image.foregroundColor(.white)
        case.thunderstrom:return image.foregroundColor(.white)
        case.snowing:     return image.foregroundColor(.white)
        }
    }
}
