//
//  TrafficLightService.swift
//  firstMVP
//
//  Created by Smithers on 08/10/2019.
//  Copyright © 2019 Smithers. All rights reserved.
//

import Foundation

class TrafficLightService {

func getTrafficLight(colorName:(String), callBack:(TrafficLight?) -> Void){
        
        let trafficLights = [TrafficLight(colorName: "Red", description: "Stop"),
                                               TrafficLight(colorName: "Green", description: "Go"),
                                               TrafficLight(colorName: "Orange", description: "About to change to red")]
             
             if let foundTrafficLight = trafficLights.first(where: { $0.colorName == colorName}){
                 callBack(foundTrafficLight)
             }else{callBack(nil)}
        
    }
    
}
