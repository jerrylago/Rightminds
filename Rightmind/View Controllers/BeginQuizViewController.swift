//
//  BeginQuizViewController.swift
//  Rightmind
//
//  Created by Jerry LaGore on 8/6/19.
//  Copyright © 2019 Jerry LaGore. All rights reserved.
//

import UIKit

class BeginQuizViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func beginQuizTapped(_ sender: Any) {
        let vc = QuizViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
