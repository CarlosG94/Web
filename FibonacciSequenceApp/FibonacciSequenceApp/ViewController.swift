//
//  ViewController.swift
//  FibonacciSequenceApp
//
//  Created by CarlosGutierrez on 11/1/14.
//  Copyright (c) 2014 Carlos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var fibonacciSequence = FibonacciSequence(maxNumber: 2, includesZero: true)
    
    @IBOutlet weak var includesZeroSwitch: UISwitch!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var includesZeroLabel: UILabel!
    @IBOutlet weak var numberOfItemsSlider: UISlider!
    @IBOutlet weak var numberOfItemsLabel: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        updateFibonacciSequence()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func updateFibonacciSequence() {
        
        if includesZeroSwitch.on {
            numberOfItemsSlider.maximumValue = 93
        } else {
            numberOfItemsSlider.maximumValue = 92
        }
        
        fibonacciSequence = FibonacciSequence(numberOfItemsInSequence: Int(numberOfItemsSlider.value), includesZero: includesZeroSwitch.on)
        
        textView.text = fibonacciSequence.values.description
        
        includesZeroLabel.text = includesZeroSwitch.on ? "Yes" : "No"
        
        numberOfItemsLabel.text = String(Int(numberOfItemsSlider.value))
        
        
        
    }
    
}

