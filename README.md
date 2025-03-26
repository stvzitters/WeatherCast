# WeatherCast

### WeatherCast is a native iOS application that provides very basic current and forecasted weather information.

#### The following features are provided:

- Current weather information based on the user's current location (via the device GPS).
- Weather information provided:
  - Current temperature and weather conditions.
  - Min and max temperatures for the day.
  - A 5-day weather forecast for the user's current location.
    - The maximum temperature and weather conditions for each day is provided.
- Weather information is saved on-device for offline use (a timestamp is presented).

#### Design

The forest design was implemented, according to the provided assets.

#### Technical

- No third-party dependencies were used.
- Built with SwiftUI only.
- Swift 6 in all its concurrent glory.
- In the interest of time, I chose to support iOS 18 and iPhone only.
- Architecture:
  - **View/Appliation Layer**: MVVM - A SwiftUI view would, if necessary, have a view model which performs the heavy lifting regarding the presentation logic and user actions. Binding between the view and the view model is achieved through the 'Observable' macro. The view model would update its properties and the view would rerender accordingly.
  - **Domain Layer**: This layer contains all the required business logic, models, and service and service worker abstactions (protocols). Additionally, the concrete implementations of the services are contained in the domain layer. An important thing to note is that the domain layer does NOT depend on any other layer. None whatsoever. The other layers depend on the domain layer.
  - **Integration Layer**: This layer, as its name suggests, handles the integration points between the app and external providers. E.g. Apple's CLLocationManager, network requests and third party dependencies like Firebase and so on. The purpose of the integration layer is to encapsulate the implementation detail required for working with the aforementioned external providers in such a way that the integration becomes hot-swapable. All this is achieved via the service worker interfaces. These interfaces are defined by the domain layer and implemented by the integration layer. Typically, a domain layer service would take in a service worker as a dependency via the appropriate protocol.
  - **Database Layer**: This is an optional layer that lives next to the domain layer, yet it does still depend on the domain layer like the rest. The purpose of the database layer is to, via the necessary abstractions, provide data persistence to the domain layer models. The database layer is accessible to the view layer.
  - **Additional Notes**:
    - Naturally, dependency injection is key and a basic implementation (via constructor injection) was implemented. A factory was implemented to create the necessary services and service workers.
    - This particular project combines the application and view layers, which is fine for most small to medium-sized projects, but for larger projects and teams it would be better to split them into their own layers.
    - The domain, integration and database layers have their own Swift packages within the application's Xcode project. This improves modularity and provides seperation of concerns.
- Testing:
  - The Swift Testing framework was used. Only the integration layer contains a couple of unit tests - mainly for demonstration purposes. I would have loved to do more here, but time did not allow.
- Localisation:
  - All user-facing strings, including error messages, have been localized. The only supported languagge is English for now, but the ground work has been layed so that additional language support would be trivial.
- General Notes:
  - I have noticed that often (particularly when running the app on a physical device) the current day minimum, maximum and current temperatures provided by OpenWeather are basically the same for the device location. This does not seem to happen when running on a simulator. I've double-checked this and can provide a sample JSON response received from OpenWeather to demonstrate.

#### Building the project

- Open the WeatherCast Xcode project file (WeatherCast.xcodeproj)
- Select the WeatherCast scheme and choose an iPhone simulator of your choice. You can also use a phycial iPhone, but you'll have to set the Team in the WeatherCast target's Signing & Capabilities panel.
- Once you have the WeatherCast scheme and device of choice selected, build and run the the project (CMD+R)
- Enjoy!

## License

[MIT](https://choosealicense.com/licenses/mit/)
