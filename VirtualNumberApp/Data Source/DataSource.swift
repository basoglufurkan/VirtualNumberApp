//
//  DataSource.swift
//  VirtualNumberApp
//
//  Created by Furkan BAŞOĞLU on 21.11.2023.
//

import Foundation
import UIKit

enum CountryList {
    case uk
    case usa
    case france
    case mexico
    case portugal
    case philipinse
    case vietnam

    func getName() -> String {
        switch self {
        case .uk:
            return "U.Kingdom"
        case .usa:
            return "United States"
        case .france:
            return "France"
        case .mexico:
            return "Mexico"
        case .portugal:
            return "Portugal"
        case .philipinse:
            return "Philippines"
        case .vietnam:
            return "Vietnam"
        }
    }

    func getPhoneNumber() -> String {
        switch self {
        case .uk:
            return "+44 7352 998717"
        case .usa:
            return "+1 222 334 6789"
        case .france:
            return "+33 27811 48 94"
        case .mexico:
            return "+52 987 254 837"
        case .portugal:
            return ""
        case .philipinse:
            return ""
        case .vietnam:
            return ""
        }
    }

    func getMaskedPhoneNumber() -> String {
        switch self {
        case .uk:
            return "+44 XXXX XXXXXX"
        case .usa:
            return "+1 XXX XXX XXXX"
        case .france:
            return "+33 X XX XX XX XX"
        case .mexico:
            return "+52 XXX XXX XXXX"
        case .portugal:
            return "+351 XXX XXX XXX"
        case .philipinse:
            return "+63 XXX XXX XXXX"
        case .vietnam:
            return "+84 XX XXX XX XX"
        }
    }

    func getTickIcon() -> UIImage? {
        switch self {
        case .uk:
            return UIImage(named: "tickGreen")
        case .usa:
            return UIImage(named: "tickGreen")
        case .france:
            return UIImage(named: "tickGreen")
        case .mexico:
            return UIImage(named: "tickCross")
        case .portugal:
            return UIImage(named: "tickGreen")
        case .philipinse:
            return UIImage(named: "tickGreen")
        case .vietnam:
            return UIImage(named: "tickGreen")
        }
    }

    func getFlagIcon() -> UIImage? {
        switch self {
        case .uk:
            return UIImage(named: "uk")
        case .usa:
            return UIImage(named: "usa")
        case .france:
            return UIImage(named: "france")
        case .mexico:
            return UIImage(named: "maxico")
        case .portugal:
            return UIImage(named: "portugas")
        case .philipinse:
            return UIImage(named: "philipines")
        case .vietnam:
            return UIImage(named: "vietnam")
        }
    }

    func getRightTextColor() -> UIColor {
        switch self {
        case .uk:
            return UIColor.green
        case .usa:
            return UIColor.green
        case .france:
            return UIColor.green
        case .mexico:
            return UIColor.red
        case .portugal:
            return UIColor.green
        case .philipinse:
            return UIColor.green
        case .vietnam:
            return UIColor.green
        }
    }

    func getRightText() -> String {
        switch self {
        case .uk:
            return "Başarılı"
        case .usa:
            return "Başarılı"
        case .france:
            return "Başarılı"
        case .mexico:
            return "Başarısız"
        case .portugal:
            return "Başarılı"
        case .philipinse:
            return "Başarılı"
        case .vietnam:
            return "Başarılı"
        }
    }

    func getPopularText() -> String {
        switch self {
        case .uk:
            return "POPÜLER"
        case .usa:
            return "POPÜLER"
        case .france:
            return "POPÜLER"
        case .mexico:
            return ""
        case .portugal:
            return ""
        case .philipinse:
            return ""
        case .vietnam:
            return ""
        }
    }

    func getPopularImage() -> UIImage? {
        switch self {
        case .uk:
            return UIImage(named: "popular")
        case .usa:
            return UIImage(named: "popular")
        case .france:
            return UIImage(named: "popular")
        case .mexico:
            return nil
        case .portugal:
            return nil
        case .philipinse:
            return nil
        case .vietnam:
            return nil
        }
    }

    func getPopularTrailing() -> CGFloat {
        switch self {
        case .france:
            return 130
        case .uk:
            return 150
        case .usa:
            return 175
        default:
            return 0
        }
    }

    

    func getGreenText() -> String {
        switch self {
        case .uk:
            return "8 mevcut numara"
        case .usa:
            return "7 mevcut numara"
        case .france:
            return "5 mevcut numara"
        case .mexico:
            return "4 mevcut numara"
        case .portugal:
            return "6 mevcut numara"
        case .philipinse:
            return "10 mevcut numara"
        case .vietnam:
            return "12 mevcut numara"
        }
    }
}
