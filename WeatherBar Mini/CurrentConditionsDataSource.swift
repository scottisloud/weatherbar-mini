//
//  CurrentConditionsDataSource.swift
//  WeatherBar Mini
//
//  Created by Scott Lougheed on 2020/04/23.
//  Copyright © 2020 Scott Lougheed. All rights reserved.
//

import Foundation


class CurrentConditionsDataSource: NSObject {
    let locationClient = Location()
    let dataClient = DarkSkyClient()
    let defaults = UserDefaults.standard
    

    
}
