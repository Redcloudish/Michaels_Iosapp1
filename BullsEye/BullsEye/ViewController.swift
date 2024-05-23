//
//  ViewController.swift
//  BullsEye
//
//  Created by mike brown on 2024-05-21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var slider: UISlider!
    
    @IBOutlet var targetLabel: UILabel!

    var currentValue: Int = 0
    var targetValue = 0
    
    override func viewDidLoad() {
      super.viewDidLoad()
      startNewRound()  // Replace previous code with this
    }

    
    
    @IBAction func showAlert() {
        var difference: Int
          
          if currentValue > targetValue {
            difference = currentValue - targetValue
          } else if targetValue > currentValue {
            difference = targetValue - currentValue
          } else {
            difference = 0
          }

          let message = "The value of the slider is: \(currentValue)" +
                        "\nThe target value is: \(targetValue)" +
                        "\nThe difference is: \(difference)" 
        
        let alert = UIAlertController(
            title: "Hello, World",
            message: message,    // changed
            preferredStyle: .alert)
        
        let action = UIAlertAction(
            title: "OK",          // changed
            style: .default,
            handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
        startNewRound()
}
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        currentValue = lroundf(slider.value)
    }
    
    func startNewRound() {
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)
        updateLabels()  // Add this line
    }

    
    func updateLabels() {
      targetLabel.text = String(targetValue)
    }
}

