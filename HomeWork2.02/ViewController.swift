//
//  ViewController.swift
//  HomeWork2.02
//
//  Created by автосалон on 21.09.2023.
//

import UIKit

private enum TrafficLight {
    case redLight
    case yellowLight
    case greenLight
    case trafficLightOff
}

class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var trafficLightButton: UIButton!
    
    private var trafficLight = TrafficLight.redLight
    
    override func viewDidLayoutSubviews() {
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        yellowLightView.layer.cornerRadius = redLightView.frame.width / 2
        greenLightView.layer.cornerRadius = redLightView.frame.width / 2
    
    }

    override func viewDidLoad() {
        trafficLightButton.setTitle("START", for: .normal)
        
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
    }

    @IBAction func trafficLightsButton() {
        trafficLightButton.setTitle("NEXT", for: .normal)
        
        switch trafficLight {
        case .redLight:
            redLightView.alpha = 1
            //yellowLightView.alpha = 0.3
            //greenLightView.alpha = 0.3
            trafficLight = .yellowLight
        case .yellowLight:
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
            //greenLightView.alpha = 0.3
            trafficLight = .greenLight
        case .greenLight:
            //redLightView.alpha = 0.3
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
            trafficLight = .trafficLightOff
        case .trafficLightOff:
            //redLightView.alpha = 0.3
            //yellowLightView.alpha = 0.3
            greenLightView.alpha = 0.3
            trafficLight = .redLight
            trafficLightButton.setTitle("START", for: .normal)
        }
    }
    
    
}

