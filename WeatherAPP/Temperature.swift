//
//  Temperature.swift
//  WeatherAPP
//
//  Created by Geetansh Rajesh on 08/12/23.
//

import Foundation
enum Temperature {
    static let degreeSymbol:String="°"
    case F(_ value: Int)
    case C(_ value: Int)
    var valueF: Int{
        switch self{
        case.F(let value):return value
        case.C(let value): return Int(((Double(value)-32.0)*5/9).rounded())
        }
    }
    var valueC: Int{
        switch self{
        case.F(let value): return Int(((Double(value)*1.8)+32.0).rounded())
        case.C(let value): return value
        }
    }
    var celsiusString:String
    {
        return ("\(valueC)\(Temperature.degreeSymbol)")
    }
    var fahrenheitString:String{ return "\(valueF)\(Temperature.degreeSymbol)"}
}
