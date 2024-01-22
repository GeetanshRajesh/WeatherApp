//
//  HourlyForecastView.swift
//  WeatherAPP
//
//  Created by Geetansh Rajesh on 23/10/23.
//

import SwiftUI

struct HourlyForcastView: View{
    @StateObject var viewModel : ViewModel
    
    var body: some View {
        VStack(alignment:.leading) {
            
            Text("Sunny conditions expected around 4pm.")
                .padding(.bottom,7)
                .foregroundStyle(.white)
                .font(Font.custom("System", size: 14))
                .fontWeight(.medium)
                .shadow(radius: 2.0)
                .padding(.trailing,18)
            
            Divider()
                .padding(.bottom,7)
            ScrollView(.horizontal) {
                HStack {
                    ForEach(viewModel.hourlysnapshot,id: \.time) { snapshot in
                        VStack {
                            Text("Now")
                                .foregroundStyle(.white)
                                .font(Font.custom("System", size: 14))
                                .fontWeight(.semibold)
                                .shadow(radius: 2.0)
                            snapshot.condition.image
                                
                                .padding(.vertical,2)
                            Text(snapshot.teamprature.celsiusString)
                                .foregroundStyle(.white)
                                .font(Font.custom("System", size: 20))
                                .fontWeight(.medium)
                                .shadow(radius: 2.0)
                        }
                        
                    }.padding(.trailing,18)
                }
            }
            .scrollIndicators(.never)
            
        }
        .padding(14)
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 16))
    }
}

struct HourlyForcastView_previews: PreviewProvider {
    static var previews: some View {
        ScrollView{
            HourlyForcastView(viewModel: HourlyForcastView.ViewModel.mock)
        }
        .padding()
        .background(.blue)
    }
}
extension HourlyForcastView {
    class ViewModel : ObservableObject{
        let currentWeatherSummary: String
        let hourlysnapshot : [weathersnapshot]
        init(currentWeatherSummary: String, hourlysnapshot: [weathersnapshot]) {
            self.currentWeatherSummary = currentWeatherSummary
            self.hourlysnapshot = hourlysnapshot
        }
    }
}

//extension weathersnapshot: Identifiable {
//    var id: ObjectIdentifier {
//        return ObjectIdentifier(
//    }
//    
//    
//}
extension HourlyForcastView.ViewModel {
    static var mock : HourlyForcastView.ViewModel {
        let currentDate = Date.now
        return HourlyForcastView.ViewModel(currentWeatherSummary: "Sunny conditions expected around 4pm.", hourlysnapshot:[
            weathersnapshot(time: currentDate, condition: .PartlyCloudy, teamprature: .C(32)),
            weathersnapshot(time: currentDate.addingTimeInterval(60*60), condition: .PartlyCloudy , teamprature: .C(34)),
            weathersnapshot(time: currentDate.addingTimeInterval(60*120), condition: .raining , teamprature: .C(36))
          ])
    }
}

