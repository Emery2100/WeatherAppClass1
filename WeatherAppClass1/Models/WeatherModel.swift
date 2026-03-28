//
//  WeatherModel.swift
//  WeatherAppClass1
//
//  Created by David Emery on 3/24/26.
//

import Foundation

// MARK: Geocoding (City -> Latitude/Longitude)

struct GeocodingResponse: Codable{
    let results:[GeocodingResult]?
}


struct GeocodingResult: Codable{
    let name: String
    let latitude: Double
    let longitude: Double
}

// MARK: Weather -> (Latitude/Longitude) -> Current Weather

struct ForecastResponse: Codable {
    
    let current_weather: CurrentWeather
    
}


struct CurrentWeather: Codable {
    
    let temperature: Double
    let windspeed: Double
    let weathercode:Int
    let time: String
    
}
