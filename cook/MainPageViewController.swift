//
//  ViewController.swift
//  cook
//
//  Created by Dominik Kolber on 3/23/19.
//  Copyright © 2019 Szymon Kolber. All rights reserved.
//

import UIKit

class MainPageViewController: UIViewController {
    
    //MARK: -Items
    
    let logoImg: UIButton = {
       
        let logoImg = UIButton()
        
        //Safely unwraping image
        if let logo = UIImage(named: "logo") {
            logoImg.setImage(logo, for: .normal)
    
        }
        
        logoImg.translatesAutoresizingMaskIntoConstraints = false
        logoImg.addTarget(self, action: #selector(createMeal), for: .touchUpInside)
        
        
        return logoImg
    }()
    
    let logoCircle: UIImageView = {
       
        let logoImg = UIImage(named: "logoCircle")!
        let circle = UIImageView(image: logoImg)
        circle.translatesAutoresizingMaskIntoConstraints = false
        
        
        return circle
    }()
    
    //MARK: -functions
    
    @objc func createMeal() {
        print("HELO")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(logoImg)
        view.addSubview(logoCircle)
        
        setUpItems()
    }


    
    //MARK: -Setup
    
    func setUpItems() {
        
        logoImg.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        logoImg.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 120).isActive = true
        logoImg.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        logoCircle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        logoCircle.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 120).isActive = true
        
    }
    
}

