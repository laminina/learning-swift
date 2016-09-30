//
//  SettingsViewController.swift
//  Calculator
//
//  Created by Jennifer Mendez on 9/29/16.
//  Copyright © 2016 Jennifer Mendez. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
     
    }
    */

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let defaults = UserDefaults.standard
        let percentageIndex = defaults.integer(forKey: "default_tip")
        defaultTipControl.selectedSegmentIndex = percentageIndex
    }

    
    @IBAction func onDefaultTipChanged(_ sender: AnyObject) {
        
        let defaults = UserDefaults.standard
        
        defaults.setValue(defaultTipControl.selectedSegmentIndex, forKeyPath: "default_tip")
    }
}
