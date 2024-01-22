//
//  TemperatureTest.swift
//  WeatherAPPTests
//
//  Created by Geetansh Rajesh on 13/11/23.
//

import XCTest
@testable import WeatherAPP

final class TemperatureTest: XCTestCase {
    
    func textValueInC() throws {
        XCTAssertEqual(Temperature.F(0).valueC,32)
        XCTAssertEqual(Temperature.C(32).valueC,32)
    }
    func testValueInF() throws {
        
        XCTAssertEqual(Temperature.F(0).valueF,0)
        XCTAssertEqual(Temperature.C(32).valueF,0)
    }
    func testFahrenheitString() throws {
        XCTAssertEqual(Temperature.F(0).fahrenheitString, "0°")
        XCTAssertEqual(Temperature.C(32).fahrenheitString, "0°")
    }
    func testCelsiusString() throws {
        XCTAssertEqual(Temperature.F(0).celsiusString, "32°")
        XCTAssertEqual(Temperature.C(32).celsiusString, "32°")
    }
    
}
