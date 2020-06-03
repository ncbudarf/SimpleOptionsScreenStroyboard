//
//  RoundedUIView.swift
//  SimpleOptionsScreenStoryboard
//
//  Created by Noah budarf on 2020-06-01.
//  Copyright © 2020 Noah budarf. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
final class Rounded: UIView {
        
    @IBInspectable
    var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }
}
