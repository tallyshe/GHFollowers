//
//  Date+Ext.swift
//  GHFollers
//
//  Created by Kar Ho She on 5/10/2020.
//  Copyright © 2020 Kar Ho She. All rights reserved.
//

import Foundation

extension Date {
    
    func convertToMonthYearFromat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
}
