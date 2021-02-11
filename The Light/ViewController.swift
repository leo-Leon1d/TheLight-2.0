//
//  ViewController.swift
//  The Light
//
//  Created by Леонид Исраелян on 11.02.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var isLightOn: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
    }
    
    
    
    fileprivate func updateUI() {
        
        view.backgroundColor = isLightOn ? .white : .black
    }
    @IBAction func button() {
        isLightOn.toggle()
        updateUI()
    }
}
