//
//  EmojiTableViewController.swift
//  Emoji Dictionary
//
//  Created by Anil Patel on 01/05/2018.
//  Copyright © 2018 Anil Patel. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {

    var emojis:[Emoji] = []
    // ["😀","💩","🏎", "💒","🍎", "🥑", "⛪️", "🕍"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emojis = createEmojis()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          return emojis.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        let emoji = emojis[indexPath.row]
        
        cell.textLabel?.text = "\(emoji.theEmoji) - \(emoji.category)"
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let emoji = emojis[indexPath.row]
        
        performSegue(withIdentifier: "ourSegue", sender: emoji)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let emojiDefVC = segue.destination as! EmojiDefintionViewController
        emojiDefVC.emoji = sender as! Emoji
        
    }

    func createEmojis() -> [Emoji] {
        let smiley = Emoji()
        smiley.theEmoji = "😀"
        smiley.def = "A happy smiling face"
        smiley.birthYear = 2010
        smiley.category = "Category: Faces"
        
       let avo = Emoji()
        avo.theEmoji = "🥑"
        avo.def = "A nice green avocado"
        avo.birthYear = 2017
        avo.category = "Category: Food"

        let turd = Emoji()
        turd.theEmoji = "💩"
        turd.def = "A lump of smiley smelly dung"
        turd.birthYear = 2012
        turd.category = "Category: Faces"
    
        let car = Emoji()
        car.theEmoji = "🏎"
        car.def = "Racing Car with Swift logo"
        car.birthYear = 2013
        car.category = "Category: Transportation"

        let churchHeart = Emoji()
        churchHeart.theEmoji = "💒"
        churchHeart.def = "Church with a heart"
        churchHeart.birthYear = 2011
        churchHeart.category = "Category: Buildings"

        let apple = Emoji()
        apple.theEmoji = "🍎"
        apple.def = "A shiny red apple"
        apple.birthYear = 2014
        apple.category = "Category: Food"

        let churchStainedGlass = Emoji()
        churchStainedGlass.theEmoji = "⛪️"
        churchStainedGlass.def = "Church with Stained Glass window"
        churchStainedGlass.birthYear = 2015
        churchStainedGlass.category = "Category: Buildings"

        let churchSteps = Emoji()
        churchSteps.theEmoji = "🕍"
        churchSteps.def = "Church with Steps on entrance"
        churchSteps.birthYear = 2016
        churchSteps.category = "Category: Buildings"

        return [smiley, avo, turd, car, churchHeart, apple, churchStainedGlass, churchSteps]
    }
}
