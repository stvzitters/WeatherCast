//
//  ValidWeatherForecastJSON.swift
//  WCIntegration
//
//  Created by Shaun van Zitters on 2025/03/26.
//

let validWeatherForecastJSON = """
{
  "cod": "200",
  "message": 0,
  "cnt": 40,
  "list": [
    {
      "dt": 1742925600,
      "main": {
        "temp": 19.71,
        "feels_like": 19.72,
        "temp_min": 18.72,
        "temp_max": 19.71,
        "pressure": 1018,
        "sea_level": 1018,
        "grnd_level": 1017,
        "humidity": 76,
        "temp_kf": 0.99
      },
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "broken clouds",
          "icon": "04n"
        }
      ],
      "clouds": {
        "all": 52
      },
      "wind": {
        "speed": 1.35,
        "deg": 252,
        "gust": 1.64
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2025-03-25 18:00:00"
    },
    {
      "dt": 1742936400,
      "main": {
        "temp": 18.93,
        "feels_like": 18.86,
        "temp_min": 18.3,
        "temp_max": 18.93,
        "pressure": 1019,
        "sea_level": 1019,
        "grnd_level": 1017,
        "humidity": 76,
        "temp_kf": 0.63
      },
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "broken clouds",
          "icon": "04n"
        }
      ],
      "clouds": {
        "all": 58
      },
      "wind": {
        "speed": 1.5,
        "deg": 204,
        "gust": 1.79
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2025-03-25 21:00:00"
    },
    {
      "dt": 1742947200,
      "main": {
        "temp": 17.89,
        "feels_like": 17.8,
        "temp_min": 17.89,
        "temp_max": 17.89,
        "pressure": 1018,
        "sea_level": 1018,
        "grnd_level": 1016,
        "humidity": 79,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "broken clouds",
          "icon": "04n"
        }
      ],
      "clouds": {
        "all": 83
      },
      "wind": {
        "speed": 2.46,
        "deg": 174,
        "gust": 3.62
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2025-03-26 00:00:00"
    },
    {
      "dt": 1742958000,
      "main": {
        "temp": 17.49,
        "feels_like": 17.38,
        "temp_min": 17.49,
        "temp_max": 17.49,
        "pressure": 1018,
        "sea_level": 1018,
        "grnd_level": 1016,
        "humidity": 80,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04n"
        }
      ],
      "clouds": {
        "all": 94
      },
      "wind": {
        "speed": 2.38,
        "deg": 170,
        "gust": 3.58
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2025-03-26 03:00:00"
    },
    {
      "dt": 1742968800,
      "main": {
        "temp": 18.07,
        "feels_like": 17.92,
        "temp_min": 18.07,
        "temp_max": 18.07,
        "pressure": 1018,
        "sea_level": 1018,
        "grnd_level": 1016,
        "humidity": 76,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "broken clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 52
      },
      "wind": {
        "speed": 2.96,
        "deg": 153,
        "gust": 4.87
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2025-03-26 06:00:00"
    },
    {
      "dt": 1742979600,
      "main": {
        "temp": 20.27,
        "feels_like": 19.95,
        "temp_min": 20.27,
        "temp_max": 20.27,
        "pressure": 1019,
        "sea_level": 1019,
        "grnd_level": 1017,
        "humidity": 61,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 801,
          "main": "Clouds",
          "description": "few clouds",
          "icon": "02d"
        }
      ],
      "clouds": {
        "all": 11
      },
      "wind": {
        "speed": 5,
        "deg": 170,
        "gust": 5.94
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2025-03-26 09:00:00"
    },
    {
      "dt": 1742990400,
      "main": {
        "temp": 21.03,
        "feels_like": 20.7,
        "temp_min": 21.03,
        "temp_max": 21.03,
        "pressure": 1017,
        "sea_level": 1017,
        "grnd_level": 1015,
        "humidity": 58,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01d"
        }
      ],
      "clouds": {
        "all": 5
      },
      "wind": {
        "speed": 5.81,
        "deg": 180,
        "gust": 6.8
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2025-03-26 12:00:00"
    },
    {
      "dt": 1743001200,
      "main": {
        "temp": 20.3,
        "feels_like": 19.98,
        "temp_min": 20.3,
        "temp_max": 20.3,
        "pressure": 1016,
        "sea_level": 1016,
        "grnd_level": 1015,
        "humidity": 61,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01d"
        }
      ],
      "clouds": {
        "all": 0
      },
      "wind": {
        "speed": 6.98,
        "deg": 175,
        "gust": 9.2
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2025-03-26 15:00:00"
    },
    {
      "dt": 1743012000,
      "main": {
        "temp": 18.68,
        "feels_like": 18.56,
        "temp_min": 18.68,
        "temp_max": 18.68,
        "pressure": 1017,
        "sea_level": 1017,
        "grnd_level": 1015,
        "humidity": 75,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01n"
        }
      ],
      "clouds": {
        "all": 0
      },
      "wind": {
        "speed": 7.77,
        "deg": 164,
        "gust": 11.97
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2025-03-26 18:00:00"
    },
    {
      "dt": 1743022800,
      "main": {
        "temp": 18.01,
        "feels_like": 17.9,
        "temp_min": 18.01,
        "temp_max": 18.01,
        "pressure": 1016,
        "sea_level": 1016,
        "grnd_level": 1014,
        "humidity": 78,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 801,
          "main": "Clouds",
          "description": "few clouds",
          "icon": "02n"
        }
      ],
      "clouds": {
        "all": 11
      },
      "wind": {
        "speed": 5.52,
        "deg": 148,
        "gust": 8.84
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2025-03-26 21:00:00"
    },
    {
      "dt": 1743033600,
      "main": {
        "temp": 17.46,
        "feels_like": 17.38,
        "temp_min": 17.46,
        "temp_max": 17.46,
        "pressure": 1015,
        "sea_level": 1015,
        "grnd_level": 1013,
        "humidity": 81,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 802,
          "main": "Clouds",
          "description": "scattered clouds",
          "icon": "03n"
        }
      ],
      "clouds": {
        "all": 42
      },
      "wind": {
        "speed": 4.78,
        "deg": 143,
        "gust": 7.51
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2025-03-27 00:00:00"
    },
    {
      "dt": 1743044400,
      "main": {
        "temp": 17.08,
        "feels_like": 16.96,
        "temp_min": 17.08,
        "temp_max": 17.08,
        "pressure": 1014,
        "sea_level": 1014,
        "grnd_level": 1012,
        "humidity": 81,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04n"
        }
      ],
      "clouds": {
        "all": 100
      },
      "wind": {
        "speed": 3.93,
        "deg": 139,
        "gust": 5.84
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2025-03-27 03:00:00"
    },
    {
      "dt": 1743055200,
      "main": {
        "temp": 17.32,
        "feels_like": 17.09,
        "temp_min": 17.32,
        "temp_max": 17.32,
        "pressure": 1014,
        "sea_level": 1014,
        "grnd_level": 1012,
        "humidity": 76,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 100
      },
      "wind": {
        "speed": 3.6,
        "deg": 131,
        "gust": 5.12
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2025-03-27 06:00:00"
    },
    {
      "dt": 1743066000,
      "main": {
        "temp": 21.44,
        "feels_like": 21.08,
        "temp_min": 21.44,
        "temp_max": 21.44,
        "pressure": 1014,
        "sea_level": 1014,
        "grnd_level": 1012,
        "humidity": 55,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 801,
          "main": "Clouds",
          "description": "few clouds",
          "icon": "02d"
        }
      ],
      "clouds": {
        "all": 19
      },
      "wind": {
        "speed": 3.35,
        "deg": 141,
        "gust": 4.13
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2025-03-27 09:00:00"
    },
    {
      "dt": 1743076800,
      "main": {
        "temp": 24.47,
        "feels_like": 24.15,
        "temp_min": 24.47,
        "temp_max": 24.47,
        "pressure": 1012,
        "sea_level": 1012,
        "grnd_level": 1011,
        "humidity": 45,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 802,
          "main": "Clouds",
          "description": "scattered clouds",
          "icon": "03d"
        }
      ],
      "clouds": {
        "all": 44
      },
      "wind": {
        "speed": 3.69,
        "deg": 179,
        "gust": 4.01
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2025-03-27 12:00:00"
    },
    {
      "dt": 1743087600,
      "main": {
        "temp": 23.71,
        "feels_like": 23.55,
        "temp_min": 23.71,
        "temp_max": 23.71,
        "pressure": 1011,
        "sea_level": 1011,
        "grnd_level": 1009,
        "humidity": 54,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "broken clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 76
      },
      "wind": {
        "speed": 5.53,
        "deg": 167,
        "gust": 7.3
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2025-03-27 15:00:00"
    },
    {
      "dt": 1743098400,
      "main": {
        "temp": 21.08,
        "feels_like": 20.97,
        "temp_min": 21.08,
        "temp_max": 21.08,
        "pressure": 1012,
        "sea_level": 1012,
        "grnd_level": 1010,
        "humidity": 66,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 802,
          "main": "Clouds",
          "description": "scattered clouds",
          "icon": "03n"
        }
      ],
      "clouds": {
        "all": 42
      },
      "wind": {
        "speed": 5.52,
        "deg": 152,
        "gust": 7.88
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2025-03-27 18:00:00"
    },
    {
      "dt": 1743109200,
      "main": {
        "temp": 19.24,
        "feels_like": 19.2,
        "temp_min": 19.24,
        "temp_max": 19.24,
        "pressure": 1012,
        "sea_level": 1012,
        "grnd_level": 1010,
        "humidity": 76,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01n"
        }
      ],
      "clouds": {
        "all": 0
      },
      "wind": {
        "speed": 4.81,
        "deg": 137,
        "gust": 7.01
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2025-03-27 21:00:00"
    },
    {
      "dt": 1743120000,
      "main": {
        "temp": 18.62,
        "feels_like": 18.55,
        "temp_min": 18.62,
        "temp_max": 18.62,
        "pressure": 1012,
        "sea_level": 1012,
        "grnd_level": 1010,
        "humidity": 77,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01n"
        }
      ],
      "clouds": {
        "all": 0
      },
      "wind": {
        "speed": 4.45,
        "deg": 130,
        "gust": 6.79
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2025-03-28 00:00:00"
    },
    {
      "dt": 1743130800,
      "main": {
        "temp": 17.94,
        "feels_like": 17.85,
        "temp_min": 17.94,
        "temp_max": 17.94,
        "pressure": 1012,
        "sea_level": 1012,
        "grnd_level": 1010,
        "humidity": 79,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01n"
        }
      ],
      "clouds": {
        "all": 0
      },
      "wind": {
        "speed": 3.27,
        "deg": 119,
        "gust": 4.56
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2025-03-28 03:00:00"
    },
    {
      "dt": 1743141600,
      "main": {
        "temp": 18.29,
        "feels_like": 18.19,
        "temp_min": 18.29,
        "temp_max": 18.29,
        "pressure": 1013,
        "sea_level": 1013,
        "grnd_level": 1011,
        "humidity": 77,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01d"
        }
      ],
      "clouds": {
        "all": 0
      },
      "wind": {
        "speed": 2.51,
        "deg": 114,
        "gust": 3.48
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2025-03-28 06:00:00"
    },
    {
      "dt": 1743152400,
      "main": {
        "temp": 22.46,
        "feels_like": 22.3,
        "temp_min": 22.46,
        "temp_max": 22.46,
        "pressure": 1014,
        "sea_level": 1014,
        "grnd_level": 1012,
        "humidity": 59,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01d"
        }
      ],
      "clouds": {
        "all": 0
      },
      "wind": {
        "speed": 0.54,
        "deg": 184,
        "gust": 0.75
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2025-03-28 09:00:00"
    },
    {
      "dt": 1743163200,
      "main": {
        "temp": 24.27,
        "feels_like": 24.14,
        "temp_min": 24.27,
        "temp_max": 24.27,
        "pressure": 1012,
        "sea_level": 1012,
        "grnd_level": 1011,
        "humidity": 53,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01d"
        }
      ],
      "clouds": {
        "all": 1
      },
      "wind": {
        "speed": 3.19,
        "deg": 226,
        "gust": 2.44
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2025-03-28 12:00:00"
    },
    {
      "dt": 1743174000,
      "main": {
        "temp": 23.45,
        "feels_like": 23.44,
        "temp_min": 23.45,
        "temp_max": 23.45,
        "pressure": 1011,
        "sea_level": 1011,
        "grnd_level": 1010,
        "humidity": 61,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 801,
          "main": "Clouds",
          "description": "few clouds",
          "icon": "02d"
        }
      ],
      "clouds": {
        "all": 18
      },
      "wind": {
        "speed": 2.97,
        "deg": 202,
        "gust": 3.51
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2025-03-28 15:00:00"
    },
    {
      "dt": 1743184800,
      "main": {
        "temp": 21.4,
        "feels_like": 21.48,
        "temp_min": 21.4,
        "temp_max": 21.4,
        "pressure": 1012,
        "sea_level": 1012,
        "grnd_level": 1010,
        "humidity": 72,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 802,
          "main": "Clouds",
          "description": "scattered clouds",
          "icon": "03n"
        }
      ],
      "clouds": {
        "all": 48
      },
      "wind": {
        "speed": 1.13,
        "deg": 188,
        "gust": 2.06
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2025-03-28 18:00:00"
    },
    {
      "dt": 1743195600,
      "main": {
        "temp": 20.66,
        "feels_like": 20.69,
        "temp_min": 20.66,
        "temp_max": 20.66,
        "pressure": 1012,
        "sea_level": 1012,
        "grnd_level": 1010,
        "humidity": 73,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01n"
        }
      ],
      "clouds": {
        "all": 2
      },
      "wind": {
        "speed": 1.21,
        "deg": 66,
        "gust": 1.8
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2025-03-28 21:00:00"
    },
    {
      "dt": 1743206400,
      "main": {
        "temp": 20.04,
        "feels_like": 20.01,
        "temp_min": 20.04,
        "temp_max": 20.04,
        "pressure": 1010,
        "sea_level": 1010,
        "grnd_level": 1009,
        "humidity": 73,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01n"
        }
      ],
      "clouds": {
        "all": 1
      },
      "wind": {
        "speed": 1.11,
        "deg": 359,
        "gust": 1.28
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2025-03-29 00:00:00"
    },
    {
      "dt": 1743217200,
      "main": {
        "temp": 19.22,
        "feels_like": 19.1,
        "temp_min": 19.22,
        "temp_max": 19.22,
        "pressure": 1011,
        "sea_level": 1011,
        "grnd_level": 1009,
        "humidity": 73,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01n"
        }
      ],
      "clouds": {
        "all": 6
      },
      "wind": {
        "speed": 1.94,
        "deg": 343,
        "gust": 2.04
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2025-03-29 03:00:00"
    },
    {
      "dt": 1743228000,
      "main": {
        "temp": 19.05,
        "feels_like": 19,
        "temp_min": 19.05,
        "temp_max": 19.05,
        "pressure": 1012,
        "sea_level": 1012,
        "grnd_level": 1010,
        "humidity": 76,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01d"
        }
      ],
      "clouds": {
        "all": 4
      },
      "wind": {
        "speed": 2.95,
        "deg": 352,
        "gust": 4.05
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2025-03-29 06:00:00"
    },
    {
      "dt": 1743238800,
      "main": {
        "temp": 21.85,
        "feels_like": 21.84,
        "temp_min": 21.85,
        "temp_max": 21.85,
        "pressure": 1012,
        "sea_level": 1012,
        "grnd_level": 1011,
        "humidity": 67,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01d"
        }
      ],
      "clouds": {
        "all": 1
      },
      "wind": {
        "speed": 3.69,
        "deg": 323,
        "gust": 4.84
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2025-03-29 09:00:00"
    },
    {
      "dt": 1743249600,
      "main": {
        "temp": 22.13,
        "feels_like": 22.25,
        "temp_min": 22.13,
        "temp_max": 22.13,
        "pressure": 1013,
        "sea_level": 1013,
        "grnd_level": 1011,
        "humidity": 71,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01d"
        }
      ],
      "clouds": {
        "all": 8
      },
      "wind": {
        "speed": 4,
        "deg": 269,
        "gust": 5.15
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2025-03-29 12:00:00"
    },
    {
      "dt": 1743260400,
      "main": {
        "temp": 21.35,
        "feels_like": 21.47,
        "temp_min": 21.35,
        "temp_max": 21.35,
        "pressure": 1013,
        "sea_level": 1013,
        "grnd_level": 1011,
        "humidity": 74,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 801,
          "main": "Clouds",
          "description": "few clouds",
          "icon": "02d"
        }
      ],
      "clouds": {
        "all": 24
      },
      "wind": {
        "speed": 4.04,
        "deg": 210,
        "gust": 4.6
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2025-03-29 15:00:00"
    },
    {
      "dt": 1743271200,
      "main": {
        "temp": 19.94,
        "feels_like": 20.03,
        "temp_min": 19.94,
        "temp_max": 19.94,
        "pressure": 1015,
        "sea_level": 1015,
        "grnd_level": 1013,
        "humidity": 78,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 801,
          "main": "Clouds",
          "description": "few clouds",
          "icon": "02n"
        }
      ],
      "clouds": {
        "all": 19
      },
      "wind": {
        "speed": 4.15,
        "deg": 176,
        "gust": 5.37
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2025-03-29 18:00:00"
    },
    {
      "dt": 1743282000,
      "main": {
        "temp": 19.45,
        "feels_like": 19.62,
        "temp_min": 19.45,
        "temp_max": 19.45,
        "pressure": 1016,
        "sea_level": 1016,
        "grnd_level": 1014,
        "humidity": 83,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "broken clouds",
          "icon": "04n"
        }
      ],
      "clouds": {
        "all": 54
      },
      "wind": {
        "speed": 5.57,
        "deg": 176,
        "gust": 8.26
      },
      "visibility": 10000,
      "pop": 0.35,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2025-03-29 21:00:00"
    },
    {
      "dt": 1743292800,
      "main": {
        "temp": 18.72,
        "feels_like": 18.84,
        "temp_min": 18.72,
        "temp_max": 18.72,
        "pressure": 1016,
        "sea_level": 1016,
        "grnd_level": 1015,
        "humidity": 84,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 500,
          "main": "Rain",
          "description": "light rain",
          "icon": "10n"
        }
      ],
      "clouds": {
        "all": 67
      },
      "wind": {
        "speed": 6.01,
        "deg": 169,
        "gust": 9.59
      },
      "visibility": 10000,
      "pop": 0.35,
      "rain": {
        "3h": 0.12
      },
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2025-03-30 00:00:00"
    },
    {
      "dt": 1743303600,
      "main": {
        "temp": 18.6,
        "feels_like": 18.6,
        "temp_min": 18.6,
        "temp_max": 18.6,
        "pressure": 1016,
        "sea_level": 1016,
        "grnd_level": 1015,
        "humidity": 80,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "broken clouds",
          "icon": "04n"
        }
      ],
      "clouds": {
        "all": 58
      },
      "wind": {
        "speed": 6.94,
        "deg": 163,
        "gust": 11.2
      },
      "visibility": 10000,
      "pop": 0.09,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2025-03-30 03:00:00"
    },
    {
      "dt": 1743314400,
      "main": {
        "temp": 18.27,
        "feels_like": 18.27,
        "temp_min": 18.27,
        "temp_max": 18.27,
        "pressure": 1018,
        "sea_level": 1018,
        "grnd_level": 1016,
        "humidity": 81,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 802,
          "main": "Clouds",
          "description": "scattered clouds",
          "icon": "03d"
        }
      ],
      "clouds": {
        "all": 38
      },
      "wind": {
        "speed": 9.31,
        "deg": 159,
        "gust": 14.01
      },
      "visibility": 10000,
      "pop": 0.05,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2025-03-30 06:00:00"
    },
    {
      "dt": 1743325200,
      "main": {
        "temp": 19.68,
        "feels_like": 19.56,
        "temp_min": 19.68,
        "temp_max": 19.68,
        "pressure": 1018,
        "sea_level": 1018,
        "grnd_level": 1016,
        "humidity": 71,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 802,
          "main": "Clouds",
          "description": "scattered clouds",
          "icon": "03d"
        }
      ],
      "clouds": {
        "all": 44
      },
      "wind": {
        "speed": 11.09,
        "deg": 155,
        "gust": 13.86
      },
      "visibility": 10000,
      "pop": 0.07,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2025-03-30 09:00:00"
    },
    {
      "dt": 1743336000,
      "main": {
        "temp": 19.05,
        "feels_like": 18.89,
        "temp_min": 19.05,
        "temp_max": 19.05,
        "pressure": 1017,
        "sea_level": 1017,
        "grnd_level": 1015,
        "humidity": 72,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "broken clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 57
      },
      "wind": {
        "speed": 10.96,
        "deg": 153,
        "gust": 13.05
      },
      "visibility": 10000,
      "pop": 0.07,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2025-03-30 12:00:00"
    },
    {
      "dt": 1743346800,
      "main": {
        "temp": 18.38,
        "feels_like": 18.13,
        "temp_min": 18.38,
        "temp_max": 18.38,
        "pressure": 1017,
        "sea_level": 1017,
        "grnd_level": 1015,
        "humidity": 71,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 90
      },
      "wind": {
        "speed": 10.78,
        "deg": 148,
        "gust": 12.7
      },
      "visibility": 10000,
      "pop": 0.05,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2025-03-30 15:00:00"
    }
  ],
  "city": {
    "id": 7302538,
    "name": "De Waterkant",
    "coord": {
      "lat": -33.9189,
      "lon": 18.4233
    },
    "country": "ZA",
    "population": 0,
    "timezone": 7200,
    "sunrise": 1742878392,
    "sunset": 1742921471
  }
}
"""
