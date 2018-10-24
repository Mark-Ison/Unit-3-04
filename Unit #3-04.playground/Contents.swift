// Created on: OCT 2018
// Created by: Mark Ison
// Created for: ICS3CR
// This program calculates if its a leap year
// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let instructionLabel = UILabel()
    let instructionTextField = UITextField()
    let checkButton = UIButton()
    let answerLabel = UILabel()
    
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        instructionLabel.text = "Enter the year"
        view.addSubview(instructionLabel)
        instructionLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        instructionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        
        instructionTextField.borderStyle = UITextBorderStyle.roundedRect
        instructionTextField.placeholder = "  year  "
        view.addSubview(instructionTextField)
        instructionTextField.translatesAutoresizingMaskIntoConstraints = false
        instructionTextField.topAnchor.constraint(equalTo: instructionLabel.bottomAnchor, constant: 20).isActive = true
        instructionTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        checkButton.setTitle("Calculate", for: .normal)
        checkButton.setTitleColor(.blue, for: .normal)
        checkButton.titleLabel?.textAlignment = .center
        checkButton.addTarget(self, action: #selector(leapYear), for: .touchUpInside)
        view.addSubview(checkButton)
        checkButton.translatesAutoresizingMaskIntoConstraints = false
        checkButton.topAnchor.constraint(equalTo: instructionTextField.bottomAnchor, constant: 20).isActive = true
        checkButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        answerLabel.text = nil
        view.addSubview(answerLabel)
        answerLabel.translatesAutoresizingMaskIntoConstraints = false
        answerLabel.topAnchor.constraint(equalTo: checkButton.bottomAnchor, constant: 20).isActive = true
        answerLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
    }
    
    @objc func leapYear() {
        
        var year: Int = Int(instructionTextField.text!)!
        
        var  leapYear = year%4
        
        if leapYear == 0 {
            var leapYear = year%100
            
            if leapYear == 0 {
                var leapYear = year%400
                
                if leapYear == 0 {
                    answerLabel.text = "Yes, it is a leap year."
                }
                else {
                    answerLabel.text = "No, it is not a leap year."
                }
            }
            else {
                answerLabel.text = "Yes, it is a leap year."
            }
        }
        else {
            answerLabel.text = "No, it is not a leap year."
        }
    }
}
        
        
        
        
        
    
        var prefersStatusBarHidden: Bool {
        return true
    }


// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
