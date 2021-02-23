//
//  ViewController.swift
//  TheLight
//
//  Created by Леонид Исраелян on 22.02.2021.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var light = 0
    var isTorch = false
    //MARK: - Properies
    
    //Hide status bar
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    //MARK: - Methods

    override func viewDidLoad() {
        updateUI()
    }
    //Screen color update function
    fileprivate func updateUI() {
        switch light{
        case 0:
            view.backgroundColor = .red
            light = 1
        case 1:
            view.backgroundColor = .yellow
            light = 2
        case 2:
            view.backgroundColor = .green
            light = 0
        default:
            print(" ")
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        updateUI()
    }
    
    //Turning on and off camera flash light function
    @IBAction func buttonPressed(_ sender: Any) {
        guard let device = AVCaptureDevice.default(for: AVMediaType.video) else {
            return
        }
        
        if device.hasTorch {
            isTorch = !isTorch
            
            do {
                try device.lockForConfiguration()
                
                if isTorch == true {
                    device.torchMode = .on
                }
                
                else {
                    device.torchMode = .off
                    
                }
                device.unlockForConfiguration()
                
                
            }
            catch {
                print("Torch is not working")
            }
            
        }
        else {
            print("Torch is not compatible with device")
        }
    }
}
