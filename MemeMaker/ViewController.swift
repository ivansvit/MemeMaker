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
    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var topCaptionLabel: UILabel!
    @IBOutlet weak var bottomCaptionLabel: UILabel!
    
    var topChoices = [CaptionOption]()
    var bottomChoices = [CaptionOption]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureTopSegmentedControl()
        configureBottomSegmentedControl()
        selectInitValues()
    }

    
    @IBAction func topCaptionSegmentedControl(_ sender: UISegmentedControl) {
        let currentChoice = topChoices[sender.selectedSegmentIndex]
        topCaptionLabel.text = currentChoice.text
        print(currentChoice)
        mainImageView.image = UIImage(named: currentChoice.image)
    }
    
    @IBAction func bottomCaptionSegmentedControl(_ sender: UISegmentedControl) {
        let currentChoice = bottomChoices[sender.selectedSegmentIndex]
        bottomCaptionLabel.text = currentChoice.text
        print(currentChoice)
        mainImageView.image = UIImage(named: currentChoice.image)
    }
    
    func configureTopSegmentedControl() {
        topCaptionSegmentedControl.removeAllSegments()
        
        let optionOne = CaptionOption(emoji: "🕶", text: "You know what's cool?", image: "memeAppWonka")
        let optionTwo = CaptionOption(emoji: "💥", text: "You know what makes me mad?", image: "memeAppFrog")
        let optionThree = CaptionOption(emoji: "💕", text: "You know what I love?", image: "memeAppYao")
        
        topChoices = [optionOne, optionTwo, optionThree]
        
        for choice in topChoices {
            topCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
    }
    
    func configureBottomSegmentedControl() {
        bottomCaptionSegmentedControl.removeAllSegments()
        
        let optionFour = CaptionOption(emoji: "🐱", text: "Cats wearing hats", image: "memeAppCat")
        let optionFive = CaptionOption(emoji: "🐕", text: "Dogs carrying log", image: "memeAppDog")
        let optionSix = CaptionOption(emoji: "🐒", text: "Monkeys being funky", image: "memeAppMonkey")
        
        bottomChoices = [optionFour, optionFive, optionSix]
        
        for choice in bottomChoices {
            bottomCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: bottomChoices.count, animated: false)
        }
    }
    
    func selectInitValues() {
        topCaptionSegmentedControl.selectedSegmentIndex = 0
        bottomCaptionSegmentedControl.selectedSegmentIndex = 0
        topCaptionLabel.text = topChoices.first?.text
        bottomCaptionLabel.text = bottomChoices.first?.text
    }
    
}

