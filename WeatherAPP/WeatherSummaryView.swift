//
//  WeatherSummaryView.swift
//  WeatherAPP
//
//  Created by Geetansh Rajesh on 23/10/23.
//

import SwiftUI

struct WeatherSummaryView: View {
    
   @StateObject var viewModel: ViewModel
    var body: some View {
        VStack{
            Text(viewModel.locationName)
                .foregroundColor(.white)
                .foregroundColor(.white)
                .font(Font.system(size: 32))
                .shadow(radius: 2.0)
            Text(viewModel.currentTemp.celsiusString)
                .foregroundColor(.white)
                .font(Font.system(size: 100))
                .fontWeight(.thin)
                .shadow(radius: 2.0)
            Text(viewModel.currentWeatherCondition.description)
                .foregroundColor(.white)
                .font(Font.system(size: 21))
                .fontWeight(.medium)
                .shadow(radius: 2.0)
            Text("H:\(viewModel.currentDayHighTemp.celsiusString) L:\(viewModel.currentDayLowTemp.celsiusString)")
                .foregroundColor(.white)
                .font(Font.system(size:21))
                .fontWeight(.medium)
                .shadow(radius: 2.0)
        }
    }
}

struct WeatherSummaryView_Preview: PreviewProvider {
    static var previews: some View {
        ScrollView{
            HStack{
                Spacer()
                WeatherSummaryView(viewModel: WeatherSummaryView.ViewModel.SunnymockData)
                Spacer()
            }
            .padding(.top, 30)
        }
        .background(.blue)
        ScrollView{
            HStack{
                Spacer()
                WeatherSummaryView(viewModel: WeatherSummaryView.ViewModel.RainingmockData)
                Spacer()
            }
            .padding(.top, 30)
        }
        .background(.blue)
    }
}
extension WeatherSummaryView{
    
    class ViewModel: ObservableObject{
        let locationName : String
        let currentTemp : Temperature
        let currentWeatherCondition:WeatherCondition
        let currentDayHighTemp: Temperature
        let currentDayLowTemp: Temperature
        
        
        
        init(locationName:String, currentTemp:Temperature
            ,currentWeatherCondition:WeatherCondition
            ,currentDayHighTemp: Temperature
            ,currentDayLowTemp: Temperature){
            self.locationName = locationName
            self.currentTemp = currentTemp
            self.currentWeatherCondition = currentWeatherCondition
            self.currentDayHighTemp = currentDayHighTemp
            self.currentDayLowTemp = currentDayLowTemp
            
            
        }
    }
}
extension WeatherSummaryView.ViewModel{
    
    static var SunnymockData: WeatherSummaryView.ViewModel{
        return WeatherSummaryView.ViewModel(
         locationName : "Chennai",
         currentTemp : .C(32),
         currentWeatherCondition:.PartlyCloudy,
         currentDayHighTemp: .C(33),
         currentDayLowTemp: .C(26)
        )
    }
    static var RainingmockData: WeatherSummaryView.ViewModel{
        return WeatherSummaryView.ViewModel(
         locationName : "Chennai",
         currentTemp : .C(32),
         currentWeatherCondition:.raining,
         currentDayHighTemp: .C(33),
         currentDayLowTemp: .C(26)
        )
    }
}

