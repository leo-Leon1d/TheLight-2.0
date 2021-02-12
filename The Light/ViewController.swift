//
//  ViewController.swift
//  The Light
//
//  Created by Леонид Исраелян on 11.02.2021.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - Properies
    
    //Hide status bar
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    //Switch variable
    var isLightOn: Bool = false
    
    //MARK: - Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
    }
    
    //Function color update on the screen
    fileprivate func updateUI() {
        
        view.backgroundColor = isLightOn ? .white : .black
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        isLightOn.toggle()
        updateUI()
   
    }
}
