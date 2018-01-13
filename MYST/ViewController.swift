//
//  ViewController.swift
//  MYST
//
//  Created by Apple on 13/01/2018.
//  Copyright © 2018 omnibyt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var randomAlphaLabel: UIButton!
    @IBOutlet weak var squareOneLabel: UILabel!
    @IBOutlet weak var squareTwoLabel: UILabel!
    @IBOutlet weak var squareThreeLabel: UILabel!
    @IBOutlet weak var squareFourLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    let uppercaseLetters = Array(65...90).map {String(UnicodeScalar($0))}
    func randomLetter() -> String {
    let randomIndex = arc4random_uniform(UInt32(uppercaseLetters.count))
        return uppercaseLetters[Int(randomIndex)]
        }

    @IBAction func randomButton(_ sender: UIButton)
    {
        //generate random alphabet on 'letter' button click
        randomAlphaLabel.setTitle("\(randomLetter())", for: UIControlState.normal)
    }
    
    @IBAction func randAlphaAction(_ sender: UIButton)
    {
        if let label1 = squareOneLabel.text, label1.isEmpty
        {
            squareOneLabel.text = randomAlphaLabel.currentTitle
        }
        else if let label2 = squareTwoLabel.text, label2.isEmpty
        {
            squareTwoLabel.text = randomAlphaLabel.currentTitle
        }
        else if let label3 = squareThreeLabel.text, label3.isEmpty
        {
            squareThreeLabel.text = randomAlphaLabel.currentTitle
        }
        else if let label4 = squareFourLabel.text, label4.isEmpty
        {
            squareFourLabel.text = randomAlphaLabel.currentTitle
        }
        
    }//end of rand alpha action
    
}// end of view controller

