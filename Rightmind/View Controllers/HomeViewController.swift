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
        
        setUpLabels(label: welcomeLabel, title: "Welcome!", size: 36)
        setUpLabels(label: videoLabel, title: "Video of the Day!", size: 24)
        setUpLabels(label: descriptionLabel, title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eget porta metus. Praesent eu urna libero.", size: 24)
        
        video.image = UIImage(named: "AlzheimersDay-Banner")!
        
        quizButton.setTitle("Begin Quiz", for: .normal)
        quizButton.addTarget(self, action: #selector(quizTapped), for: .touchUpInside)
        quizButton.layer.cornerRadius = 10
        quizButton.backgroundColor = .blue
        quizButton.setTitleColor(.white, for: .normal)
        
        setConstraints()
    }
    
    func setUpLabels(label: UILabel, title: String, size: CGFloat) {
        label.text = title
        label.textColor = .black
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 5
        label.font = UIFont(name: "AppleSDGothicNeo-Medium", size: size)
    }
    
    func setConstraints() {
        
        welcomeLabel.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.view)
            make.top.equalTo(170)
            make.width.equalTo(200)
            make.height.equalTo(70)
        }
        
        videoLabel.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.view)
            make.top.equalTo(self.welcomeLabel).offset(80)
            make.width.equalTo(250)
            make.height.equalTo(70)
        }
        
        video.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.view)
            make.top.equalTo(self.videoLabel).offset(70)
            make.width.equalTo(270)
            make.height.equalTo(270)
        }
        
        descriptionLabel.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.view)
            make.top.equalTo(self.video).offset(280)
            make.width.equalTo(300)
            make.height.equalTo(100)
        }
        
        quizButton.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.view)
            make.bottom.equalTo(-100)
            make.width.equalTo(150)
            make.height.equalTo(60)
        }
    }
    
    @objc func quizTapped() {
        navigationController?.pushViewController(QuizViewController(), animated: true)
    }

}
