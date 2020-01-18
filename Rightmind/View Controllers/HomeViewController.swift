//
//  HomeViewController.swift
//  Rightmind
//
//  Created by Jerry LaGore on 1/18/20.
//  Copyright © 2020 Jerry LaGore. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    let welcomeLabel = UILabel()
    let videoLabel = UILabel()
    let descriptionLabel = UILabel()
    let video = UIImageView()
    let quizButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        // Do any additional setup after loading the view.
    }
    
    func setUpUI() {
        view.addSubview(welcomeLabel)
        view.addSubview(videoLabel)
        view.addSubview(descriptionLabel)
        view.addSubview(video)
        view.addSubview(quizButton)
        view.backgroundColor = .white
        
        title = "Rightminds"
        navigationController?.navigationBar.prefersLargeTitles = true
    }

}
