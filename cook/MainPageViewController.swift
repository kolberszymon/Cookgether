//
//  ViewController.swift
//  cook
//
//  Created by Dominik Kolber on 3/23/19.
//  Copyright © 2019 Szymon Kolber. All rights reserved.
//

import UIKit

class MainPageViewController: UIViewController {
    
    //MARK: -File privates
    
    fileprivate let invitationCellId = "invCellId"
    
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
    
    let logoLabel: UILabel = {
       
        let label = UILabel()
        label.text = "Zjedzmy coś!"
        
        guard let customFont = UIFont(name: "Pacifico-Regular", size: UIFont.labelFontSize) else {
            fatalError("Font error")
        }
        label.font = UIFontMetrics.default.scaledFont(for: customFont)
        label.adjustsFontForContentSizeCategory = true
        label.textColor = UIColor(red: 209/255, green: 120/255, blue: 125/255, alpha: 1)
        label.font = label.font.withSize(30)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    let zaproszeniaLabel: UILabel = {
       
        let label = UILabel()
        label.text = "Zaproszenia:"
        label.textColor = UIColor(red: 209/255, green: 120/255, blue: 125/255, alpha: 1)
        
        guard let customFont = UIFont(name: "Pacifico-Regular", size: UIFont.labelFontSize) else {
            fatalError("Font error")
        }
        label.font = UIFontMetrics.default.scaledFont(for: customFont)
        label.adjustsFontForContentSizeCategory = true
        label.font = label.font.withSize(25)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
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
        view.addSubview(logoLabel)
        view.addSubview(zaproszeniaLabel)
        view.addSubview(invitationTable)
        
        invitationTable.register(UITableViewCell.self, forCellReuseIdentifier: invitationCellId)
        invitationTable.dataSource = self
        
        setUpItems()
        
    }
    
    

    
    //MARK: -Setup
    
    func setUpItems() {
        
        logoImg.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        logoImg.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 180).isActive = true
        logoImg.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        logoCircle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        logoCircle.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 180).isActive = true
        
        logoLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        logoLabel.topAnchor.constraint(equalTo: logoCircle.bottomAnchor, constant: 10).isActive = true
        
        zaproszeniaLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        zaproszeniaLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        
        invitationTable.topAnchor.constraint(equalTo: zaproszeniaLabel.bottomAnchor, constant: 15).isActive = true
        invitationTable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        invitationTable.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
        invitationTable.bottomAnchor.constraint(equalTo: logoCircle.topAnchor, constant: -40).isActive = true

        
    }
    
    
    
}

extension MainPageViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: invitationCellId, for: indexPath)
        
        cell.textLabel?.text = "Siemano"
        cell.textLabel?.textColor = .black
        
        return cell
    }
    
    
}


