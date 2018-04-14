//
//  ViewController.swift
//  CacheImage
//
//  Created by Vu Ngoc Cong on 4/13/18.
//  Copyright © 2018 Vu Ngoc Cong. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let url = URL(string: "http://i.imgur.com/qV5uuOz.jpg") {
            do{
                let contents = try Data(contentsOf: url)
                self.imageView.image = UIImage(data: contents)
            }catch{
                print("abc")
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


