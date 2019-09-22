//
//  Utilities.swift
//  Back to the Future
//
//  Created by Grant on 22/06/2016.
//  Copyright © 2016 Grant. All rights reserved.
//

import Foundation

class Utilities {
    
    
    func GetCurrentYear () -> String {
        let date = Date()
        let calendar = Calendar.current()
        return String(calendar.component(.year, from: date))
        
    }
    
    func GetLetterAtIndex (str: String, location: Int) -> String {
        let index = str.index(str.startIndex, offsetBy: location)
        return String(str[index])
    }
    
    func GetCurrentTime() -> String {
        let date = Date()
        
        let formatter = DateFormatter()
        formatter.dateStyle = .noStyle
        formatter.timeStyle = .mediumStyle
        
        let timeString = formatter.string(from: date)
        
        return timeString
    }
    
    func GetRandomYear () -> String {
        return String( arc4random_uniform(8999) + 1000)
    }
    
    
}






