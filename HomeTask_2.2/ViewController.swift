//
//  ViewController.swift
//  HomeTask_2.2
//
//  Created by Александр Полочанин on 16.03.23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var redSignalView: UIView!
    @IBOutlet var yellowSignalView: UIView!
    @IBOutlet var greenSignalView: UIView!
    @IBOutlet var startButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setStartingConfigurationsForViews()
        
    }
    
    
    
    private func setStartingConfigurationsForViews() {
        redSignalView.alpha = 0.3
        redSignalView.layer.cornerRadius = 50

        yellowSignalView.alpha = 0.3
        yellowSignalView.layer.cornerRadius = 50

        greenSignalView.alpha = 0.3
        greenSignalView.layer.cornerRadius = 50

        startButton.layer.cornerRadius = 12
    }


    @IBAction func startedSignalAction(_ sender: Any) {
        startButton.setTitle("NEXT", for: .normal)
        
        
        
        
    }
}

