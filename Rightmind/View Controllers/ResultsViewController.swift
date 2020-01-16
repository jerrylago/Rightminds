//
//  ResultsViewController.swift
//  Rightmind
//
//  Created by Jerry LaGore on 8/7/19.
//  Copyright © 2019 Jerry LaGore. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    // Creates resultsLabel with appropriate properties.
    let resultsLabel: UILabel = {
        let label = UILabel()
        label.text = "Good Job!"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 24)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Sets up bar button items with their actions
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: Selector(("done")))
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Restart", style: .done, target: self, action: Selector(("restart")))
        
        navigationItem.title = "Results"
        // Hide navigation controller back button so users can't go back
        self.navigationItem.setHidesBackButton(true, animated: false)
        
        view.backgroundColor = UIColor.white
        
        // Places resultsLabel into view
        view.addSubview(resultsLabel)
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":resultsLabel]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":resultsLabel]))
 
    }
    
    // Action for done bar button item. Pops to begin quiz screen.
    @objc func done() {
        navigationController?.popToViewController(ofClass: BeginQuizViewController.self, animated: true)
    }
    
    // Action for restart bar button item. Pops to first question in quiz.
    @objc func restart() {
        for controller in self.navigationController!.viewControllers {
            if controller.isKind(of: QuestionTableViewController.self) {
                self.navigationController!.popToViewController(controller, animated: true)
                break
            }
        }
    }
}

// Modified popToViewController function to pop to a specific view controller.
extension UINavigationController {
    func popToViewController(ofClass: AnyClass, animated: Bool = true) {
        if let vc = viewControllers.filter({$0.isKind(of: ofClass)}).last {
            popToViewController(vc, animated: animated)
        }
    }
}


