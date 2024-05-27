//
//  ViewController.swift
//  ios_app1
//
//  Created by mike brown on 2024-05-23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var fortuneLabel: UILabel!
    @IBOutlet weak var getFortuneButton: UIButton!
    
    let fortunes = [
        "You will have a great day!",
        "Something unexpected will happen.",
        "You will achieve your goals.",
        "A surprise is waiting for you.",
        "You will meet someone special.",
        "An old friend will contact you.",
        "Happiness is in your future.",
        "You will overcome a challenge.",
        "Good news is on the way.",
        "A new opportunity will arise."
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Set initial fortune
        fortuneLabel.text = "Press the button to get your fortune."
    }
    
    @IBAction func getFortunePressed(_ sender: UIButton) {
        let randomIndex = Int.random(in: 0..<fortunes.count)
        let fortune = fortunes[randomIndex]
        
        let alert = UIAlertController(
            title: "Your Fortune",
            message: fortune,
            preferredStyle: .alert)
        
        let action = UIAlertAction(
            title: "OK",
            style: .default,
            handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
        // Update the label with the new fortune
        fortuneLabel.text = fortune
    }
}
