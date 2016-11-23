//
//  ConstraintManager.swift
//  ConstraintManager
//
//  Created by Alexsander Khitev on 11/23/16.
//  Copyright © 2016 Alexsander Khitev. All rights reserved.
//

import Foundation
import UIKit

/// This class is used to optimize the image (expansion or contraction). The basis of 4.7-inch screen is taken. 2x
class ConstraintManager {
    
    // Resolution 4.7 inch  (0.0, 0.0, 375.0, 667.0)
    
    enum Axis {
        case Width, Height
    }
    
    func transformedValue(_ value: CGFloat, axis: Axis) -> CGFloat {
        var mainScreenValue: CGFloat!
        var onePercent: CGFloat!
        if axis == .Width {
            mainScreenValue = UIScreen.main.bounds.width
            onePercent = 375 / 100
        } else if axis == .Height {
            mainScreenValue = UIScreen.main.bounds.height
            onePercent = 667 / 100
        }
        // the value we get from the fact at what point is the current X Interest
        let percentValue = value / onePercent
        let currentScreenOnePercent: CGFloat = mainScreenValue / 100
        let summaryValue = currentScreenOnePercent * percentValue
        return summaryValue
    }
    
}
