//
//  QuizViewController.swift
//  Rightmind
//
//  Created by Jerry LaGore on 1/18/20.
//  Copyright © 2020 Jerry LaGore. All rights reserved.
//

import UIKit
import SnapKit

class QuizViewController: UIViewController {

    let questionLabel = UILabel()
    let timerLabel = UILabel()
    let answer1Button = AnswerButton()
    let answer2Button = AnswerButton()
    let answer3Button = AnswerButton()
    let answer4Button = AnswerButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        // Do any additional setup after loading the view.
    }
    
    func setUpUI() {
        view.addSubview(questionLabel)
        view.addSubview(timerLabel)
        view.addSubview(answer1Button)
        view.addSubview(answer2Button)
        view.addSubview(answer3Button)
        view.addSubview(answer4Button)
        
        answer1Button.addTarget(self, action: #selector(answer1Tapped), for: .touchUpInside)
        answer2Button.addTarget(self, action: #selector(answer2Tapped), for: .touchUpInside)
        answer3Button.addTarget(self, action: #selector(answer3Tapped), for: .touchUpInside)
        answer4Button.addTarget(self, action: #selector(answer4Tapped), for: .touchUpInside)
        
        setConstraints()
        
    }
    
    func setConstraints() {
        
        answer1Button.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.view)
            make.centerY.equalTo(self.view).offset(100)
            make.width.equalTo(200)
            make.height.equalTo(60)
        }
        
        answer2Button.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.view)
            make.centerY.equalTo(self.view).offset(200)
            make.width.equalTo(200)
            make.height.equalTo(60)
        }
        
        answer3Button.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.view)
            make.centerY.equalTo(self.view).offset(300)
            make.width.equalTo(200)
            make.height.equalTo(60)
        }
        
        answer4Button.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.view)
            make.centerY.equalTo(self.view).offset(400)
            make.width.equalTo(200)
            make.height.equalTo(60)
        }
        
    }

    @objc func answer1Tapped() {
        
    }
    
    @objc func answer2Tapped() {
        
    }
    
    @objc func answer3Tapped() {
        
    }
    
    @objc func answer4Tapped() {
        
    }
    
}
