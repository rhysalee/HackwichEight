//
//  ViewController.swift
//  HackwichEight
//
//  Created by Rhysa Lee on 3/10/20.
//  Copyright © 2020 Rhysa Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var slider: UISlider!
    //creating a variable that can hold the value of the slider
    var currentValue: Int = 0
    var targetValue: Int = 0
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        currentValue = lroundf(slider.value)
        targetValue = Int.random(in: 0...100)
        
        startNewRound()
    }
    
    @IBAction func guessButtonPressed(_ sender: Any)
    {
        //5. new variable message that displays a message that includes currentValue
         let message = "The value is: \(currentValue)" + "\nThe target value is: \(targetValue)"
        
        //1. create alert view
        let alert = UIAlertController(title: "Hello World!", message: message, preferredStyle: .alert)
        
        //2. button that user taps to dismiss view controller
        let action = UIAlertAction(title: "New Round", style: .default, handler: nil)
        
        //3. add the button to the alertview
        alert.addAction(action)
        
        //4. present alertview on the screen
        present(alert, animated: true, completion: nil)
        
        startNewRound()
        
    }
    
    @IBOutlet weak var targetLabel: UILabel!
    
    func updateTargetLabel ()
    {
        targetLabel.text = "\(targetValue)"
    }
    @IBAction func sliderHasMoved(_ sender: Any)
    {
        
        print("The value of the slider is:\(slider.value)")
        
        currentValue = lroundf(slider.value)
    }
    
    func startNewRound()
        {
            targetValue = Int.random(in: 0...100)
            currentValue = lroundf(slider.value)
            updateTargetLabel()
        }
    
}
