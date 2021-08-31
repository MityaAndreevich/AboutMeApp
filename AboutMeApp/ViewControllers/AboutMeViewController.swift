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
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstFact.text = user.person.eduation
        secondFact.text = user.person.job
        thirdFact.text = user.person.hobby
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let finalVC = segue.destination as? FinalViewController else { return }
        finalVC.user = user
    }
    
    @IBAction func unwind(for lastSegue: UIStoryboardSegue) {
    }
    
}
