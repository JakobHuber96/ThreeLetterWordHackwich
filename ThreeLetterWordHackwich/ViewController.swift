//
//  ViewController.swift
//  ThreeLetterWordHackwich
//
//  Created by Huber, Jakob - Student on 11/3/22.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        currentLetter = letters[counter]
        currentLetterLabel.text = currentLetter
        
        
    }
    @IBOutlet var letterOne: [UILabel]!
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var currentLetterLabel: UILabel!
    
    
//MARK: DECLARED VARIABLES
    var letters: [String] =
    ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    var counter: Int = 0
    var currentLetter: String!
    
    @IBAction func whenTapped(_ sender: UITapGestureRecognizer) {
        let selectedPoint = ((sender as! AnyObject).location(in: stackView))
        getAndSetCurrentLetter()
        
        currentLetter = letters[counter]
        currentLetterLabel.text = currentLetter
        
       
        print(selectedPoint)
        counter += 1
        currentLetter = letters[counter]
        currentLetterLabel.text = currentLetter
        counter += 1
        getAndSetCurrentLetter()
        
        if counter == 26 {
            for label in self.letterOne
            {
                label.text = "?"
            }
   
    }
        
        func resetCounter () -> Int {
            let alert = UIAlertController(title: "Resetting Counter", message: nil, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default)
            
            
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil)
            return 0
        }
        
          
        func getAndSetCurrentLetter() {
            for label in letterOne
            {
                
                
                
                func getAndSetCurrentLetter() {
                    currentLetter = letters[counter]
                    currentLetterLabel.text = currentLetter
                }
                
                for label in letterOne {
                    if label.frame.contains(selectedPoint) {
                       label.text = "\(currentLetter!)"
                
                    }
                }
                
                if label.frame.contains(selectedPoint) {
                    label.text = "\(currentLetter!)"
                }
            }
            counter += 1
            if counter == 26 {
                counter = resetCounter()
            }
           
        }
                
                
                
                
                
                
            }
        
        
        
        
    }
    
    
    
    
    
    
    
    
    

