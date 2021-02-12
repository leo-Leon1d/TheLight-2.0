//
//  ViewController.swift
//  The Light
//
//  Created by Леонид Исраелян on 11.02.2021.
//

import UIKit

class ViewController: UIViewController {
    
//Hide status bar
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
//Switch variable
    var isLightOn: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
    }
    
//Function color update on the screen
    fileprivate func updateUI() {
        
        view.backgroundColor = isLightOn ? .white : .black
    }
    @IBAction func button() {
        isLightOn.toggle()
        updateUI()
    }
}
