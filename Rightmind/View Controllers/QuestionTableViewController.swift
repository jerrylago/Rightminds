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

class QuestionTableViewController: UITableViewController {
    
    let cellId = "cellId"
    var timer = Timer()
    var score = 0
    
    // Instantiates question and sets questionIndex to 0 to be used below
    var questionIndex = 0
    var question: Question {
        return questionsList[questionIndex]
    }
    
    @objc func updateScore() {
        for question in questionsList {
            if question.selectedAnswerIndex == question.correctAnswerIndex {
                score += 1
            }
        }
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Score: \(score)", style: .plain, target: nil, action: Selector(("updateScore")))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Each question gets its own number for convenience to users
        navigationItem.title = "Question \(questionIndex + 1) / \(questionsList.count)"
        // Back button for users if they chose the wrong answer
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: nil, action: nil)
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Score \(score)", style: .plain, target: nil, action: Selector(("updateScore")))
        
        tableView.register(AnswerCell.self, forCellReuseIdentifier: cellId)
        
        // Allocates space for question header
        tableView.sectionHeaderHeight = 100
        tableView.sectionFooterHeight = 100
        
        // Removes extra cell lines beneath question answers
        tableView.tableFooterView = UIView()
        
    }
    
    // MARK: - Table view data source
}

// Table View Delegate
extension QuestionTableViewController {
    
    // Sets up question header for each section.
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        // Creates nameLabel with appropriate properties.
        let nameLabel = UILabel()
        nameLabel.text = question.questionString
        nameLabel.font = UIFont.boldSystemFont(ofSize: 18)
        nameLabel.numberOfLines = 0
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Creates headerView of nameLabel inside with appropriate constraints.
        let headerView = UIView()
        headerView.addSubview(nameLabel)
        headerView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-16-[v0]-16-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":nameLabel]))
        headerView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-12-[v0]-12-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":nameLabel]))
        
        return headerView
    }
    
    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let timerLabel = UILabel()
        timerLabel.text = "Timer"
        timerLabel.font = UIFont.boldSystemFont(ofSize: 18)
        timerLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let footerView = UIView()
        footerView.addSubview(timerLabel)
        footerView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-16-[v0]-16-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":timerLabel]))
        footerView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-12-[v0]-12-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":timerLabel]))
        
        return footerView
    }
    
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


