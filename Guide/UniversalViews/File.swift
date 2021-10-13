//
//  File.swift
//  Guide
//
//  Created by Александра Мельникова on 11.10.2021.
//

import SwiftUI

extension Button {
    func pulsate() {
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        
        pulse.duration = 0.6
        pulse.fromValue = 0.9
        pulse.toValue = 1
        pulse.autoreverses = true
        pulse.initialVelocity = 0.5
        pulse.damping = 1
    
    }
}

