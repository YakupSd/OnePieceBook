//
//  detailsVC.swift
//  OnePieceBook
//
//  Created by Yakup Suda on 3.12.2022.
//

import UIKit

class detailsVC: UIViewController {

    @IBOutlet weak var yetenekLabel: UILabel!
    @IBOutlet weak var classLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var selecetedOne : onepiece?
    var selectedYet : Yetenek?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = selecetedOne?.name
        classLabel.text = selecetedOne?.skils
        imageView.image = selecetedOne?.image
        yetenekLabel.text = selectedYet?.rawValue
        
        
    }


}

