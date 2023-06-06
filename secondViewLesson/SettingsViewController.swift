//
//  SettingsViewController.swift
//  secondViewLesson
//
//  Created by Акира on 06.06.2023.
//

import UIKit

final class SettingsViewController: UIViewController {

    @IBOutlet var minimumValueTF: UITextField!
    @IBOutlet var maximumValueTF: UITextField!
    
    var minimumValue: String!
    var maximumValue: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        minimumValueTF.text = minimumValue
        maximumValueTF.text = maximumValue
    }
    
    @IBAction func buttonCancelDidTapped() {
        dismiss(animated: true)
    }
    
    
    
}
