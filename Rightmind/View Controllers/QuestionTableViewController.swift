//
//  QuestionTableViewController.swift
//
//  Each "question" is a grouped table view controller with each header being
//  a question and each cell beneath being an answer, all done with
//  Navigation Controllers pushing over each other.
//
//  Rightmind
//
//  Created by Jerry LaGore on 8/7/19.
//  Copyright © 2019 Jerry LaGore. All rights reserved.
//

import UIKit
import SnapKit

class QuestionTableViewController: UITableViewController {
    
    let cellId = "cellId"
    var timer = Timer()
    let scoreLabel = UILabel()
    let nameLabel = UILabel()
    let timerLabel = UILabel()
    
    var score: Int = 0 {
        didSet {
            scoreLabel.text = "\(score)"
        }
    }
    
    // Instantiates question and sets questionIndex to 0 to be used below
    var questionIndex = 0
    var question: Question {
        return questionsList[questionIndex]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    func setUpUI() {
        view.addSubview(nameLabel)
        view.addSubview(timerLabel)
        view.addSubview(scoreLabel)
        
        // Each question gets its own number for convenience to users
        navigationItem.title = "Question \(questionIndex + 1) / \(questionsList.count)"
        // Back button for users if they chose the wrong answer
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: nil, action: nil)
        
        //navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Score: \(score)", style: .plain, target: nil, action: Selector(("updateScore")))
        
        setUpLabel(label: scoreLabel)
        
        nameLabel.text = question.questionString
        nameLabel.font = UIFont.boldSystemFont(ofSize: 18)
        nameLabel.numberOfLines = 3
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        timerLabel.text = "Timer"
        timerLabel.font = UIFont.boldSystemFont(ofSize: 18)
        timerLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(scoreLabel)
        tableView.register(AnswerCell.self, forCellReuseIdentifier: cellId)
        
        // Allocates space for question header
        tableView.sectionHeaderHeight = 100
        tableView.sectionFooterHeight = 100
        
        // Removes extra cell lines beneath question answers
        tableView.tableFooterView = UIView()
        setConstraints()
    }
    
    func setUpLabel(label: UILabel) {
        
        label.text = "0"
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func setConstraints() {
        
        nameLabel.snp.makeConstraints { (make) in
            make.top.left.equalTo(15)
            make.width.equalTo(345)
            make.height.equalTo(60)
        }
        
        timerLabel.snp.makeConstraints { (make) in
            make.centerX.centerY.equalTo(self.view)
            make.width.equalTo(200)
            make.height.equalTo(60)
        }
        
        scoreLabel.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.view)
            make.centerY.equalTo(self.view).offset(30)
            make.height.equalTo(50)
            make.width.equalTo(200)
        }
    }
    
    @objc func updateScore() {
        for question in questionsList {
            if question.selectedAnswerIndex == question.correctAnswerIndex {
                score += 1
            }
        }
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Score: \(score)", style: .plain, target: nil, action: Selector(("updateScore")))
    }
    
}

    // MARK: - Table view data source


// Table View Delegate
extension QuestionTableViewController {

    // Sets up question answers by inserting answer at each cell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! AnswerCell
        
        // Sets cell's text to answer property of class Question
        cell.nameLabel.text = question.answers[indexPath.row]
        
        return cell
    }
    
    // Returns number of question answers per section
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return question.answers.count
    }
    
}

// Table View Data Source
extension QuestionTableViewController {
    
    // Decides whether to push next question table view or results view
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Pushes next question
        if questionIndex < questionsList.count - 1 {
            
            let questionTableViewController = QuestionTableViewController()
            questionTableViewController.questionIndex = questionIndex + 1
            navigationController?.pushViewController(questionTableViewController, animated: true)
        
        // Pushes results view controller
        } else {
            navigationController?.pushViewController(ResultsViewController(), animated: true)
        }
    }
}


