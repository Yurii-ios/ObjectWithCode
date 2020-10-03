//
//  ViewController.swift
//  ObjectWithCode
//
//  Created by Yurii Sameliuk on 01/02/2020.
//  Copyright © 2020 Yurii Sameliuk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let width = view.frame.size.width
        let height = view.frame.size.height
       
        let myLable = UILabel()
        myLable.text = "test"
        myLable.textAlignment = .center
        myLable.frame = CGRect(x: width * 0.5 - width * 0.8 / 2, y: height * 0.5 - 50/2, width: 100, height: 100)
        view.addSubview(myLable)
        
        
        let myButton = UISwitch()
        myButton.isOn = true
        myButton.onImage = UIImage(systemName: "add")
        myButton.frame = CGRect(x: 200, y: 200, width: 100, height: 100)
        view.addSubview(myButton)
        
        let image = UIImageView()
        image.image = UIImage(named: "IMAGE.jpg")
        image.frame = CGRect(x: 50, y: 400, width: 200, height: 400)
        view.contentMode = .scaleToFill
        //view.addSubview(image)
        
        let button = UIButton()
        button.setTitle("press", for: UIControl.State.normal)
        button.setTitleColor(.cyan, for: UIControl.State.normal)
        button.frame = CGRect(x: width * 0.4, y: height * 0.7, width: 200, height: 100)
        view.addSubview(button)
        button.addTarget(self, action: #selector(myFunc), for: .touchUpInside)
    }
    
    @objc func myFunc() {
        print("tapped")
    }


}

