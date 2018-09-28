//
//  WeatherResult.swift
//  iOS-Weather-App
//
//  Created by Bridgetech on 28/09/18.
//  Copyright © 2018 Bridgetech. All rights reserved.
//

import Foundation
import ObjectMapper

class WeatherResult: NSObject, Mappable{
    var current: Current!
    var location: Location!
    
    override init() {
        super.init()
    }
    
    convenience required init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        current <- map["current"]
        location <- map["location"]
    }
}

class Current: NSObject, Mappable{
    var temp_c: Double!
    var temp_f: Double!
    var cloud: Double!
    var wind_kph: Double!
    var condition: Condition!
    var humidity: Double!
    var wind_degree: Double!
    
    override init() {
        super.init()
    }
    
    convenience required init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        temp_c <- map["temp_c"]
        temp_f <- map["temp_f"]
        cloud <- map["cloud"]
        wind_kph <- map["wind_kph"]
        condition <- map["condition"]
        humidity <- map["humidity"]
        wind_degree <- map["wind_degree"]
    }
}

class Condition: NSObject, Mappable{
    var code: Int!
    var text: String!
    var icon: String!
    
    override init() {
        super.init()
    }
    
    convenience required init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        code <- map["code"]
        text <- map["text"]
        icon <- map["icon"]
    }
}

class Location: NSObject, Mappable{
    var tz_id: String!
    var localtime: String!
    var country: String!
    var lat: Double!
    var lon: Double!
    var region: String!
    var name: String!
    
    override init() {
        super.init()
    }
    
    convenience required init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        tz_id <- map["tz_id"]
        localtime <- map["localtime"]
        country <- map["country"]
        lat <- map["lat"]
        lon <- map["lon"]
        region <- map["region"]
        name <- map["name"]
    }
}

class WeatherForcast: NSObject, Mappable{
    var current: Current!
    var location: Location!
    var forecast: Forecast!
    
    override init() {
        super.init()
    }
    
    convenience required init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        current <- map["current"]
        location <- map["location"]
        forecast <- map["forecast"]
    }
}

class Forecast: NSObject, Mappable{
    var forecastday: [Forecastday]!
    
    override init() {
        super.init()
    }
    
    convenience required init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        forecastday <- map["forecastday"]
    }
}

class Forecastday: NSObject, Mappable{
    var date: String!
    var date_epoch: Int!
    var day: Day!
    
    override init() {
        super.init()
    }
    
    convenience required init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        date <- map["date"]
        date_epoch <- map["date_epoch"]
        day <- map["day"]
    }
}

class Day: NSObject, Mappable{
    var maxtemp_c: Double!
    var maxtemp_f: Double!
    var mintemp_c: Double!
    var mintemp_f: Double!
    var avgtemp_c: Double!
    var avgtemp_f: Double!
    var maxwind_mph: Double!
    var maxwind_kph: Double!
    var totalprecip_mm: Double!
    var totalprecip_in: Double!
    var avgvis_km: Double!
    var avgvis_miles: Double!
    var avghumidity: Double!
    var uv: Double!
    var condition: Condition!
    
    override init() {
        super.init()
    }
    
    convenience required init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        maxtemp_c <- map["maxtemp_c"]
        maxtemp_f <- map["maxtemp_f"]
        mintemp_c <- map["mintemp_c"]
        mintemp_f <- map["mintemp_f"]
        avgtemp_c <- map["avgtemp_c"]
        avgtemp_f <- map["avgtemp_f"]
        maxwind_mph <- map["maxwind_mph"]
        maxwind_kph <- map["maxwind_kph"]
        totalprecip_mm <- map["totalprecip_mm"]
        totalprecip_in <- map["totalprecip_in"]
        avgvis_km <- map["avgvis_km"]
        avgvis_miles <- map["avgvis_miles"]
        avghumidity <- map["avghumidity"]
        uv <- map["uv"]
        condition <- map["condition"]
    }
}
