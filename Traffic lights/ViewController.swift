//
//  ViewController.swift
//  Traffic lights
//
//  Created by Irina Moiseeva on 26.01.2021.
//

import UIKit

enum LightNow {
    case red, yellow, green
}

class ViewController: UIViewController {
    
    @IBOutlet weak var redColour: UIView!
    @IBOutlet weak var yelloColour: UIView!
    @IBOutlet weak var greenColour: UIView!
    
    @IBOutlet weak var showText: UIButton!
    private var lightNow = LightNow.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showText.layer.cornerRadius = 10
        
        redColour.alpha = 0.3
        yelloColour.alpha = 0.3
        greenColour.alpha = 0.3
        
    }
    
    override func viewWillLayoutSubviews() {
        redColour.layer.cornerRadius = redColour.frame.width / 2
        yelloColour.layer.cornerRadius = yelloColour.frame.width / 2
        greenColour.layer.cornerRadius = greenColour.frame.width / 2
        
    }
    
    
    @IBAction func startButtom(_ sender: Any) {
        
        redColour.alpha = 1
        showText.setTitle("NEXT", for: .normal)
        
        switch lightNow {
        case .red:
            greenColour.alpha = 0.3
            redColour.alpha = 1
            lightNow = .yellow
        case .yellow:
            redColour.alpha = 0.3
            yelloColour.alpha = 1
            lightNow = .green
        case .green:
            lightNow = .red
            yelloColour.alpha = 0.3
            greenColour.alpha = 1
        }
        
        
    }
}

