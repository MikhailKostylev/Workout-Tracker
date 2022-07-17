//
//  Resources.swift
//  Workout-Tracker
//
//  Created by Mikhail Kostylev on 04.07.2022.
//

import UIKit

enum R {
    enum Colors {
        static let activeBlue = UIColor(named: "activeBlue")!
        static let inactiveGray = UIColor(named: "inactiveGray")!
        
        static let background = UIColor(named: "background")!
        static let separator = UIColor(named: "separator")!
        static let secondary = UIColor(named: "secondary")!
        
        static let titleGray = UIColor(named: "titleGray")!
    }
    
    enum Strings {
        enum TabBar {
            static func title(for tab: Tabs) -> String {
                switch tab {
                case .overview: return "Overview"
                case .session: return "Session"
                case .progress: return "Progress"
                case .settings: return "Settings"
                }
            }
        }
        
        enum NavBar {
            enum Overview {
                static let title = "Today"
                static let allWorkoutsButtonTitle = "All Workouts"
            }
            
            enum Session {
                static let title = "High Intensity Cardio"
                static let leftBarStart = "Start   "
                static let leftBarPause = "Pause"
                static let rightBarFinish = "Finish"
            }
            
            enum Progress {
                static let title = "Workout Progress"
                static let leftBarButton = "Export"
                static let rightBarButton = "Details"
            }
            
            enum Settings {
                static let title = "Settings"
            }
        }
    }
    
    enum Images {
        enum TabBar {
            static func icon(for tab: Tabs) -> UIImage? {
                switch tab {
                case .overview: return UIImage(named: "overview_icon")
                case .session: return UIImage(named: "session_icon")
                case .progress: return UIImage(named: "progress_icon")
                case .settings: return UIImage(named: "settings_icon")
                }
            }
        }
        
        enum NavBar {
            static let allWorkoutsButtonIcon = UIImage(named: "down_arrow")
            static let addButton = UIImage(named: "add_button")
        }
    }
    
    enum Fonts {
        static func helveticaRegular(with size: CGFloat) -> UIFont {
            return UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
}
