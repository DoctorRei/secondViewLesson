//
//  ViewController.swift
//  secondViewLesson
//
//  Created by Акира on 06.06.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var labelMinimumValue: UILabel!
    @IBOutlet var labelMaximumValue: UILabel!
    @IBOutlet var labelResultValue: UILabel!
    @IBOutlet var buttonResult: UIButton!
    
    
    override func viewDidLoad() {
      
        super.viewDidLoad()
    }

    @IBAction func buttonResultTapped() {
        let labelMinimumValue = Int(labelMinimumValue.text ?? "") ?? 0
        let labelMaximumValue = Int(labelMaximumValue.text ?? "") ?? 100
        
        labelResultValue.text = Int.random(in: labelMinimumValue...labelMaximumValue).formatted()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return}
        settingsVC.minimumValue = labelMinimumValue.text
        settingsVC.maximumValue = labelMaximumValue.text
    }

}

