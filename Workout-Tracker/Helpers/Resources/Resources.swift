//
//  Resources.swift
//  Workout-Tracker
//
//  Created by Mikhail Kostylev on 04.07.2022.
//

import UIKit

enum Resources {
    enum Colors {
        static let activeBlue = UIColor(named: "activeBlue")!
        static let inactiveGray = UIColor(named: "inactiveGray")!
        static let separator = UIColor(named: "separator")!
    }
    
    enum Strings {
        enum TabBar {
            static let overview = "Overview"
            static let session = "Session"
            static let progress = "Progress"
            static let settings = "Settings"
        }
    }
    
    enum Images {
        enum TabBar {
            static let overview = UIImage(named: "overview")
            static let session = UIImage(named: "session")
            static let progress = UIImage(named: "progress")
            static let settings = UIImage(named: "settings")
        }
    }
}
