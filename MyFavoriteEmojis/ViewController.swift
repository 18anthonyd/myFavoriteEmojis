//
//  ViewController.swift
//  MyFavoriteEmojis
//
//  Created by BHSRam6 on 9/30/16.
//  Copyright © 2016 BHSRam6. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

  
    @IBOutlet weak var CoolTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        CoolTableView.dataSource = self
        //that is used to define the table.
        CoolTableView.delegate = self
        // And contents
    }
    
    var emoji = ["🌝 The Full Moon", "🌚 The New Moon", "🌞 The Sun", "🐙 The Octopus" ,"👽 The Alien", "👾 The Space Invader", "🌛 The Crescent Moon"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emoji.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        cell.textLabel?.text = emoji[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier:"moveSegue", sender: "🌞")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

