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
        view.backgroundColor = .white
        answer1Button.addTarget(self, action: #selector(answer1Tapped), for: .touchUpInside)
        answer2Button.addTarget(self, action: #selector(answer2Tapped), for: .touchUpInside)
        answer3Button.addTarget(self, action: #selector(answer3Tapped), for: .touchUpInside)
        answer4Button.addTarget(self, action: #selector(answer4Tapped), for: .touchUpInside)
        setUpLabels(label: questionLabel, title: "Where was the Hindenburg trying to land when it was destroyed?", size: 30)
        
        setConstraints()
        
    }
    
    func setUpLabels(label: UILabel, title: String, size: CGFloat) {
        label.text = title
        label.textColor = .black
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 15
        label.font = UIFont(name: "AppleSDGothicNeo-Medium", size: size)
    }
    
    func setConstraints() {
        
        questionLabel.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.view)
            make.centerY.equalTo(self.view).offset(-30)
            make.width.equalTo(345)
            make.height.equalTo(200)
        }
        
        answer1Button.snp.makeConstraints { (make) in
            make.left.equalTo(40)
            make.width.equalTo(150)
            make.height.equalTo(80)
            make.bottom.equalTo(self.answer3Button).offset(-120)
        }
        
        answer2Button.snp.makeConstraints { (make) in
            make.right.equalTo(-40)
            make.width.equalTo(150)
            make.height.equalTo(80)
            make.bottom.equalTo(self.answer4Button).offset(-120)
        }
        
        answer3Button.snp.makeConstraints { (make) in
            make.left.equalTo(40)
            make.width.equalTo(150)
            make.height.equalTo(80)
            make.bottom.equalTo(-150)
        }
        
        answer4Button.snp.makeConstraints { (make) in
            make.right.equalTo(-40)
            make.width.equalTo(150)
            make.height.equalTo(80)
            make.bottom.equalTo(-150)
        }
        
    }

    @objc func answer1Tapped() {
        print("Answer 1")
    }
    
    @objc func answer2Tapped() {
        print("Answer 2")
    }
    
    @objc func answer3Tapped() {
        print("Answer 3")
    }
    
    @objc func answer4Tapped() {
        print("Answer 4")
    }
    
}
