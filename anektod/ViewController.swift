//
//  ViewController.swift
//  anektod
//
//  Created by Артём Коротков on 29.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    static var array = [String]()
    
    @IBAction func alsoone() {
        APIManager.shared.singleJoke { jokeSingles in
            DispatchQueue.main.async {
                self.textOfAnecdot.text = jokeSingles.joke
            }
        }
    }
    
    
    @IBAction func twoPartTapped(_ sender: UIButton) {
        APIManager.shared.twoPartJoke { jokeTwoPart in
            DispatchQueue.main.async {
                self.textOfAnecdot.text = "\(String(describing: jokeTwoPart.setup!))\n \n \(String(describing: jokeTwoPart.delivery!))"
            }
        }
    }
    
    
    @IBOutlet var textOfAnecdot: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    //        print(ViewController.array.isEmpty)
    
    
    
}

































