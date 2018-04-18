//
//  DataServices.swift
//  CacheImage
//
//  Created by Vu Ngoc Cong on 4/16/18.
//  Copyright © 2018 Vu Ngoc Cong. All rights reserved.
//

import UIKit

class DataServices{
    static let shared: DataServices = DataServices()
    
    private var _meals: [Meal]?
    
    var meal: [Meal]{
        set{
            _meals = newValue
        }
        get{
            if _meals == nil {
                updateData()
            }
            return _meals ?? []
        }
    }
    
    func updateData(){
        _meals = []
        let meal1 = Meal(photo: "http://i.imgur.com/qV5uuOz.jpg")!
        let meal2 = Meal(photo: "http://i.imgur.com/qV5uuOz.jpg")!
        let meal3 = Meal(photo: "http://cdn.apixu.com/weather/64x64/day/176.png")!
        _meals = [meal1, meal2, meal3]
    }
}
