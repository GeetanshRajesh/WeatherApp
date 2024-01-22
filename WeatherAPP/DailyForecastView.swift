//
//  DailyForecastView.swift
//  WeatherAPP
//
//  Created by Geetansh Rajesh on 23/10/23.
//

import SwiftUI

struct DailyForecastView: View {
    var body: some View {
        VStack(alignment:.leading){
            HStack{
                Image(systemName: "calendar")
                    .foregroundStyle(.white.opacity(0.6))
                Text("10-DAY FORECAST" .uppercased())
                    .font(Font.system(size: 12))
                    .fontWeight(.medium)
                    .foregroundStyle(.white.opacity(0.6))
            }
            Divider()
            ForEach(1..<10) { _ in
                HStack{
                    Text("Today")
                        .foregroundStyle(.white)
                        .font(Font.system(size: 16))
                        .fontWeight(.semibold)
                    Spacer()
                    Image(systemName:"sun.max.fill")
                        .foregroundColor(.yellow)
                        .padding(.leading)
                    Spacer()
                        .frame(maxWidth: 60)
                    
                    Text("23°")
                        .foregroundStyle(.white.opacity(0.6))
                    
                    ProgressView(value: 0.5)
                        .progressViewStyle(RangedProgressView(range:0.2...0.8,
                                    foregroundColor: AnyShapeStyle(gradient),
                                                              backgroundColor:Color(red: 0.25, green: 0.35, blue: 0.72).opacity(0.3)))
                        .frame(maxWidth: 100,maxHeight: 6.0)
                    
                    Text("34°")
                        .foregroundStyle(.white)
                }
                
                Divider()
                
                
                }
            }.padding(10)
            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 16.0))
        }
    var gradientColor:[Color]{
        return [Color(red: 0.39, green: 0.8, blue: 0.74),
                Color(red: 0.96, green: 0.80, blue: 0.0)]
    }
    var gradient:LinearGradient{
        LinearGradient(colors: gradientColor, startPoint: .leading, endPoint: .trailing)
    }
    }
    
    struct DailyForecastView_previews: PreviewProvider {
        static var previews: some View {
            ScrollView{
                
                
                DailyForecastView()
                
            }
                .padding(.horizontal)
                .background(.blue)
        }
    }

