//
//  ValidWeatherReadingJSON.swift
//  WCIntegration
//
//  Created by Shaun van Zitters on 2025/03/26.
//

let validWeatherReadingJSON = """
{
  "coord": {
    "lon": 19.006,
    "lat": -33.6519
  },
  "weather": [
    {
      "id": 804,
      "main": "Clouds",
      "description": "overcast clouds",
      "icon": "04d"
    }
  ],
  "base": "stations",
  "main": {
    "temp": 19.52,
    "feels_like": 19.2,
    "temp_min": 19.52,
    "temp_max": 19.52,
    "pressure": 1018,
    "humidity": 64,
    "sea_level": 1018,
    "grnd_level": 999
  },
  "visibility": 10000,
  "wind": {
    "speed": 2.89,
    "deg": 253,
    "gust": 3.58
  },
  "clouds": {
    "all": 92
  },
  "dt": 1742917128,
  "sys": {
    "country": "ZA",
    "sunrise": 1742878250,
    "sunset": 1742921334
  },
  "timezone": 7200,
  "id": 3359510,
  "name": "Wellington",
  "cod": 200
}
"""
