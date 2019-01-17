//
//  ViewController.swift
//  Junk
//
//  Created by Instructor on 1/17/19.
//  Copyright © 2019 Instructor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func respondToTapGesture(_ sender: UITapGestureRecognizer) {
        let location: CGPoint = sender.location(in: view);
        print(location);
        let rect: CGRect = CGRect(x: location.x, y: location.y, width: 80, height: 40);
        
        if let image: UIImage = UIImage(named: "skull.jpeg") {
            let newImageView: UIImageView = UIImageView(image: image);
            newImageView.frame = rect;
            newImageView.backgroundColor = .yellow;
            newImageView.contentMode = .scaleAspectFill;
            view.addSubview(newImageView);
        }
    }
    
}

