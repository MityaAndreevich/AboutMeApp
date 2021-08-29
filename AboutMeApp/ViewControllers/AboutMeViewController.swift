//
//  AboutMeViewController.swift
//  AboutMeApp
//
//  Created by Дмитрий Логачёв on 29.08.2021.
//

import UIKit

class AboutMeViewController: UIViewController {

    @IBOutlet weak var firstFact: UILabel!
    @IBOutlet weak var secondFact: UILabel!
    @IBOutlet weak var thirdFact: UILabel!
    
    let user = User.getInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstFact.text = user.person.eduation
        secondFact.text = user.person.job
        thirdFact.text = user.person.hobby
    }
    @IBAction func unwind(for lastSegue: UIStoryboardSegue) {
    }
    
}
