//
//  EmojiDefintionViewController.swift
//  Emoji Dictionary
//
//  Created by Anil Patel on 02/05/2018.
//  Copyright © 2018 Anil Patel. All rights reserved.
//

import UIKit

class EmojiDefintionViewController: UIViewController {
    
    @IBOutlet weak var emojiDefinitionLabel: UILabel!
    @IBOutlet weak var eMojiLabel: UILabel!
    
    var emoji = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        eMojiLabel.text = emoji
 
        if emoji  == "😀" {
            print("Smiley")
            emojiDefinitionLabel.text = "Smiley"
        } else if emoji == "💩"{
            emojiDefinitionLabel.text = "Turd"
        } else if emoji == "🏎" {
            emojiDefinitionLabel.text = "Racing Car with Swift logo"
        } else if emoji == "💒" {
            emojiDefinitionLabel.text = "Church for Love"
        } else if emoji == "🍎" {
            emojiDefinitionLabel.text = "Apple"
        } else if emoji == "🥑" {
            emojiDefinitionLabel.text = "Avocado"
        } else if emoji == "⛪️" {
            emojiDefinitionLabel.text = "Church with Stained Glass"
        } else if emoji == "🕍" {
            emojiDefinitionLabel.text = "Church with Steps"
        }
        
    }

}
