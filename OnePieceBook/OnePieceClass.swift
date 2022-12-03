//
//  OnePieceClass.swift
//  OnePieceBook
//
//  Created by Yakup Suda on 3.12.2022.
//

import Foundation
import UIKit

enum Yetenek : String {
    case Captain = "Captain"
    case ViceCaptain = "ViceCaptain"
    case Navigator = "Navigator"
    case Doctor = "Doctor"
    case Lier = "Lier"
    case Chef = "Chef"
    case Archaeologist = "Archaeologist"
    
}

class onepiece{
    var name : String
    var skils : String
    var image : UIImage
    var title : Yetenek
    
    
    init(oneName: String, oneskils: String, oneimage: UIImage, onetitle: Yetenek) {
        name  = oneName
        skils = oneskils
        image = oneimage
        title = onetitle
    }
    
}
