//
//  ViewController.swift
//  anektod
//
//  Created by Артём Коротков on 29.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        gradientLayer = CAGradientLayer()
//        view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
//    override func viewDidLayoutSubviews() {
//        gradientLayer.frame = CGRect(x: 0, y: 0, width: self.view.bounds.size.width, height: self.view.bounds.size.height)
//    }
//
//    var gradientLayer: CAGradientLayer! {
//        didSet {
//            gradientLayer.startPoint = CGPoint(x: 0, y: 0)
//            gradientLayer.endPoint = CGPoint(x: 1, y: 1)
//            let startColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
//            let endColor = #colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)
//            gradientLayer.colors = [startColor,endColor]
//        }
//    }
    
    @IBOutlet var dizButt: UIButton! {
        didSet {
            dizButt.layer.shadowOffset = CGSize(width: 0, height: 0)
            dizButt.layer.shadowOpacity = 0.5
            dizButt.layer.shadowRadius = 2.5
            dizButt.layer.cornerRadius = dizButt.frame.height / 2
            
        }
    }
    
    
    @IBOutlet var dizButTwo: UIButton! {
        didSet {
            dizButTwo.layer.shadowOffset = CGSize(width: 0, height: 0)
            dizButTwo.layer.shadowOpacity = 0.5
            dizButTwo.layer.shadowRadius = 2.5
            dizButTwo.layer.cornerRadius = dizButTwo.frame.height / 2
        }
    }
    
    @IBAction func singleTapped() {
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
    
    
    
  
  
    
    
    
}

































