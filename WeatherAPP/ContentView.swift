//
//  ContentView.swift
//  WeatherAPP
//
//  Created by Geetansh Rajesh on 22/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView{
            VStack {
                WeatherSummaryView(viewModel : WeatherSummaryViewModel)
                    .padding(.top,60)
                    .padding(.bottom,40)
                HourlyForcastView(viewModel: HourlyForcastView.ViewModel.mock)
                DailyForecastView()

            }
            .padding(.horizontal)
        }
        .background(.blue)
        
    }
        var uvIndex : some View{
            VStack{
                HStack{
                    Image(systemName: "sun.max.fill")
                    Text("UV Index".uppercased())
                }
                Text("0")
                Text("Low")
                ProgressView(value: 0)
                progressViewStyle(RangedProgressView(range: 0...1.0, foregroundColor: AnyShapeStyle(.blue), backgroundColor:.gray))
                Text("Use sun protection from 9AM-3PM")
            }
            .padding()
            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 16))
        }
        
        var sunSet : some View{
            VStack{
                HStack{
                    Image(systemName: "sun.max.fill")
                    Text("Sunset".uppercased())
                }
                Text("6:45PM")
                ProgressView(value: 0)
                progressViewStyle(RangedProgressView(range: 0...1.0, foregroundColor: AnyShapeStyle(.blue), backgroundColor:.gray))
                Text("Sunrise: 7:38AM")
            }
            .padding()
            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 16))
        }
        
    }
    
    var WeatherSummaryViewModel:WeatherSummaryView.ViewModel{
        return WeatherSummaryView.ViewModel.SunnymockData
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

