//
//  FinalViewController.swift
//  AboutMeApp
//
//  Created by Дмитрий Логачёв on 31.08.2021.
//

import UIKit

class FinalViewController: UIViewController {

    @IBOutlet weak var finalLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        finalLabel.text = user.person.finale
    }
}
