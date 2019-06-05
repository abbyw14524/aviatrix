//
//  Aviatrix.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//

import Foundation

class Aviatrix {
    
    var authorName = ""
    var running = false
    var currentLocation = "St. Louis"
    var data = AviatrixData()
    
    
    init(author : String){
        authorName = author
    }
    
    func start () -> Bool {
        running = true
        return running
    }
   
    func refuel() {
        
    }
    
    func flyTo(destination : String) {
        currentLocation = destination
    }
    
    func distanceTo(target: String, current: String) -> Int{
        let distance = AviatrixData()
        return distance.knownDistances[current]![target]!
        //return data.knownDistances["St. Louis"]!["Phoenix"]!
    }
    
    func knownDestinations() -> [String] {
       return ["St. Louis", "Phoenix", "Denver", "SLC"]
    }
   
}
