//
//  ViewController.swift
//  The Enoji Dictionary
//
//  Created by Adam Reynolds on 08/01/2018.
//  Copyright © 2018 Adam Reynolds. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var emojiList: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        emojiList.dataSource = self
        emojiList.delegate = self
        
        emojis = makeEmojiArray()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😡"
        emoji1.birthYear = 2010
        emoji1.category = "Smlley"
        emoji1.definition = "Grumpy"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "🤞"
        emoji2.birthYear = 2011
        emoji2.category = "Body Parts"
        emoji2.definition = "Crossed Fingers"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "😳"
        emoji3.birthYear = 2012
        emoji3.category = "Smlley"
        emoji3.definition = "Wide eyes"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "🙀"
        emoji4.birthYear = 2010
        emoji4.category = "Animal"
        emoji4.definition = "Shocked Cat"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "👹"
        emoji5.birthYear = 2015
        emoji5.category = "Smiley"
        emoji5.definition = "The Devil"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "🙌🏼"
        emoji6.birthYear = 2015
        emoji6.category = "Body Parts"
        emoji6.definition = "Two Hands"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
    }

}

