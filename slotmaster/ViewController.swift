//
//  ViewController.swift
//  slotmaster
//
//  Created by jimmy on 2021-01-09.
//

import UIKit

class ViewController: UIViewController {
    
    let imageNames = ["lemon", "dollarsign", "cherries", "grapes", "number7"]

    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var imageView3: UIImageView!
    
    var total : Int = 0
    
    
    @IBOutlet weak var matchPoints: UILabel!
    @IBOutlet weak var totalPoints: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func playButtonTapped(_ sender: UIButton) {
        
        let randomImageName1 = imageNames.randomElement()
        let randomImageName2 = imageNames.randomElement()
        let randomImageName3 = imageNames.randomElement()

        if let imageName1 = randomImageName1,
           let imageName2 = randomImageName2,
           let imageName3 = randomImageName3
        {
            imageView1.image = UIImage(named: imageName1)
            imageView2.image = UIImage(named: imageName2)
            imageView3.image = UIImage(named: imageName3)
                        
            let roundPoints = getPoint(image1 : imageName1, image2 : imageName2, image3 : imageName3)
            
            matchPoints.text = ""
            if(roundPoints > 0)
            {
                matchPoints.text = "You got \(roundPoints) points"
            }
            
            total += roundPoints
            
            totalPoints.text = "total points : \(total)"
            
        }
    }
    
    func getPoint( image1 : String, image2 : String, image3 : String) -> Int {
        

          if( image1 == image2 && image2 == image3)
          {
            return  5
          }
          else if( image1 == image2 || image2 == image3 || image1 == image3)
          {
            return 3
          }
            else
            {
                return 0
            }
    }
    
}

