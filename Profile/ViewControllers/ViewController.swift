//
//  ViewController.swift
//  Profile
//
//  Created by William Wung on 9/20/21.
//

import UIKit

class ViewController: UIViewController {
    
    var about:UIButton = MenuButton(text: "About me")
    var projects:UIButton = MenuButton(text: "Projects")
    var resume:UIButton = MenuButton(text: "Resume")
    
   
    
    var stack: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 109/255, green: 109/255, blue: 109/255, alpha: 1)
        setUpStack()
        
        about.addTarget(self, action: #selector(pressAbout), for: .touchUpInside)
        projects.addTarget(self, action: #selector(pressProjects), for: .touchUpInside)
        resume.addTarget(self, action: #selector(pressResume), for: .touchUpInside)
        
        // Do any additional setup after loading the view.
    }

    func setUpStack() {
        stack = UIStackView(arrangedSubviews: [about, projects, resume])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.spacing = UIScreen.main.bounds.height*3/50
        stack.alignment = .center
        stack.distribution = .fillEqually
        stack.axis = .vertical
        
        self.view.addSubview(stack)
        
        stack.topAnchor.constraint(equalTo: view.topAnchor, constant: UIScreen.main.bounds.height/4).isActive = true
        stack.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        stack.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        stack.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: (UIScreen.main.bounds.height * -1)/4).isActive = true
    }
    
    @objc func pressAbout() {
        present(AboutViewController(), animated: true)
    }
    @objc func pressProjects() {
        present(ProjectsViewController(), animated: true)
    }
    @objc func pressResume() {
        present(ResumeViewController(), animated: true)
    }

}

