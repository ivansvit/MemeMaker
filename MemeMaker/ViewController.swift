//
//  ViewController.swift
//  MemeMaker
//
//  Created by Ivan Svit on 9/14/19.
//  Copyright © 2019 Ivan Svit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topCaptionSegmentedControl: UISegmentedControl!
    @IBOutlet weak var bottomCaptionSegmentedControl: UISegmentedControl!
    @IBOutlet weak var topCaptionLabel: UILabel!
    @IBOutlet weak var bottomCaptionLabel: UILabel!
    
    var topChoices = [CaptionOption]()
    var bottomChoices = [CaptionOption]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureTopSegmentedControl()
        configureBottomSegmentedControl()
    }

    
    @IBAction func captionSegmentedControl(_ sender: UISegmentedControl) {
        let currentChoice = topChoices[sender.selectedSegmentIndex ]
        topCaptionLabel.text = currentChoice.text
    }
    
    func configureTopSegmentedControl() {
        topCaptionSegmentedControl.removeAllSegments()
        
        let optionOne = CaptionOption(emoji: "🕶", text: "You know what's cool?")
        let optionTwo = CaptionOption(emoji: "💥", text: "You know what makes me mad?")
        let optionThree = CaptionOption(emoji: "💕", text: "You know what I love?")
        
        topChoices = [optionOne, optionTwo, optionThree]
        
        for choice in topChoices {
            topCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
    }
    
    func configureBottomSegmentedControl() {
        bottomCaptionSegmentedControl.removeAllSegments()
        
        let optionFour = CaptionOption(emoji: "🐱", text: "Cats wearing hats")
        let optionFive = CaptionOption(emoji: "🐕", text: "Dogs carrying log")
        let optionSix = CaptionOption(emoji: "🐒", text: "Monkeys being funky")
        
        bottomChoices = [optionFour, optionFive, optionSix]
        
        for choice in bottomChoices {
            bottomCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: bottomChoices.count, animated: false)
        }
    }
    
}

