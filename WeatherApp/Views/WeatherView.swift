//
//  WeatherView.swift
//  WeatherApp
//
//  Created by Mark Mendoza on 2024-07-25.
//

import SwiftUI

struct WeatherView: View {
	var weather: ResponseBody
	
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
	WeatherView(weather: previewWeather)
}
