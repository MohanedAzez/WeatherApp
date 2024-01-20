//
//  ContentView.swift
//  sean_WeatherApp
//
//  Created by Mohanned on 19/01/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isDark = false
    
    var body: some View {
        ZStack{
            LinearGradient(colors: [isDark ? .black : .blue, isDark ? .white  : Color("blueColor")], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack{
                Text("Baghdad City")
                    .foregroundStyle(.white)
                    .font(.system(size: 40, weight: .bold, design: .default))
                    .padding(.top,30)
                
                VStack(spacing:8) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
                    
                    Text("66 ^").foregroundColor(.white).font(.system(size: 30, weight: .bold))
        
                }.padding(.bottom,50)
                
                HStack(spacing: 20) {
               
                    DailyWeather(nameOfWeekDay: "TUE", imageName: "cloud.sun.fill", tempDegree: 77)
                    
                    DailyWeather(nameOfWeekDay: "WEN", imageName: "cloud.bolt.rain.fill", tempDegree: 60)
                    
                    
                    DailyWeather(nameOfWeekDay: "THR", imageName: "cloud.bolt.fill", tempDegree: 77)
                    
                    DailyWeather(nameOfWeekDay: "FRI", imageName: "cloud.moon.rain.fill", tempDegree: 76)
                    
                    DailyWeather(nameOfWeekDay: "SAT", imageName: "cloud.sun.fill", tempDegree: 57)
                }
                
                Spacer()
                
                Button {
                    isDark.toggle()
                } label: {
                    Text("Change Mode Button")
                        .frame(width: 280, height: 50)
                        .background(Color.white.gradient)
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .cornerRadius(10)
                        
                        
                        
                        
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

struct DailyWeather: View {

    var nameOfWeekDay:String
    var imageName:String
    var tempDegree:Int
    var body: some View {
        VStack {
            Text(nameOfWeekDay).foregroundColor(.white).font(.system(size: 25, weight: .medium))
            
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 35, height: 35)
            
            Text("\(tempDegree)^").foregroundColor(.white).font(.system(size: 25, weight: .bold))
            
            
        }
    }
}
