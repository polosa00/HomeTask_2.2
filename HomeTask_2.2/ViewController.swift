//
//  ViewController.swift
//  HomeTask_2.2
//
//  Created by Александр Полочанин on 16.03.23.
//

import UIKit

enum CurrentColor {
    case red
    case yellow
    case green
}


class ViewController: UIViewController {
    
    @IBOutlet var redSignalView: UIView!
    @IBOutlet var yellowSignalView: UIView!
    @IBOutlet var greenSignalView: UIView!
    @IBOutlet var startButton: UIButton!
    
    private var currentColor = CurrentColor.red
    private var lightIsOn: CGFloat = 1
    private var lightIsOff:CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setStartingConfigurationsForViews()
    }
    
    private func setStartingConfigurationsForViews() {
        redSignalView.alpha = lightIsOff
        yellowSignalView.alpha = lightIsOff
        greenSignalView.alpha = lightIsOff
        
        redSignalView.layer.cornerRadius = 50
        yellowSignalView.layer.cornerRadius = 50
        greenSignalView.layer.cornerRadius = 50

        startButton.layer.cornerRadius = 12
        startButton.setTitle("START", for: .normal)
    }

    @IBAction func startedSignalAction(_ sender: Any) {
        startButton.setTitle("NEXT", for: .normal)
        
        switch currentColor {
        case .red:
            redSignalView.alpha = lightIsOn
            greenSignalView.alpha = lightIsOff
            currentColor = .yellow
        case .yellow:
            yellowSignalView.alpha = lightIsOn
            redSignalView.alpha = lightIsOff
            currentColor = .green
        case .green:
            greenSignalView.alpha = lightIsOn
            yellowSignalView.alpha = lightIsOff
            currentColor = .red
        }
    }
}

