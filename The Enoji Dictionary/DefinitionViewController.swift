//
//  DefinitionViewController.swift
//  The Enoji Dictionary
//
//  Created by Adam Reynolds on 08/01/2018.
//  Copyright © 2018 Adam Reynolds. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var emoji = ""

    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var emojiDefinition: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "😡" {
            emojiDefinition.text = "Grumpy"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
