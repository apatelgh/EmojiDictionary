//
//  EmojiDefintionViewController.swift
//  Emoji Dictionary
//
//  Created by Anil Patel on 02/05/2018.
//  Copyright © 2018 Anil Patel. All rights reserved.
//

import UIKit

class EmojiDefintionViewController: UIViewController {
    
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var birthLabel: UILabel!
    @IBOutlet weak var emojiDefinitionLabel: UILabel!
    @IBOutlet weak var eMojiLabel: UILabel!
    
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        eMojiLabel.text = emoji.theEmoji
        emojiDefinitionLabel.text = emoji.def
        birthLabel.text = "Release Date: \(emoji.birthYear)"
        categoryLabel.text = "Category: \(emoji.category)"
        
    }

}
