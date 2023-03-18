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
    
    
    @IBAction func colorLightsButtonDidTapped() {
        startButton.setTitle("NEXT", for: .normal)
        setLogicSettingsForColorLightsButton()
    }
}


extension ViewController {
    private func setStartingConfigurationsForViews() {
        redSignalView.alpha = lightIsOff
        yellowSignalView.alpha = lightIsOff
        greenSignalView.alpha = lightIsOff
        
        redSignalView.layer.cornerRadius = redSignalView.frame.height / 2
        yellowSignalView.layer.cornerRadius = yellowSignalView.frame.height / 2
        greenSignalView.layer.cornerRadius = greenSignalView.frame.height / 2

        startButton.layer.cornerRadius = 12
        startButton.setTitle("START", for: .normal)
    }
    
    private func setLogicSettingsForColorLightsButton() {
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
