//
//  ViewController.swift
//  Traffic lights
//
//  Created by Irina Moiseeva on 26.01.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redColour: UIView!
    @IBOutlet weak var yelloColour: UIView!
    @IBOutlet weak var greenColour: UIView!
    
    @IBOutlet weak var showText: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redColour.alpha = 0.3
        yelloColour.alpha = 0.3
        greenColour.alpha = 0.3
        
        redColour.layer.cornerRadius = 60
        yelloColour.layer.cornerRadius = 60
        greenColour.layer.cornerRadius = 60
        
       // chengedColour()
        
    }

    @IBAction func startButtom(_ sender: Any) {
        
        redColour.alpha = 1
        showText.setTitle("NEXT", for: .normal)
        
        chengedColour()
    }

    func chengedColour(){

    
    
                if redColour.alpha == 1 {
                    redColour.alpha = 0.3
                    yelloColour.alpha = 1

                } else if yelloColour.alpha == 1{
                    redColour.alpha = 0.3
                    yelloColour.alpha = 0.3
                    greenColour.alpha = 1
                } else if greenColour.alpha == 1 {
                    redColour.alpha = 1
                    yelloColour.alpha = 0.3
                    greenColour.alpha = 0.3
                }
    }
}

