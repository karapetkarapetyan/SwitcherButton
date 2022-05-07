//
//  ViewController.swift
//  SwitcherButton
//
//  Created by Karapet on 03.05.22.
//

import UIKit

class ViewController: UIViewController {
    var button: UIButton!
    var switcher: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()
        initbutton()
        initswitcher()
        constructHierarchy()
        activateConstraints()
        
        switcher.addTarget(
            self, action: #selector(switcherPressed), for: .valueChanged
        )
    }
    
    @objc func switcherPressed(sender: UISwitch) {
        if sender.isOn {
            button.isEnabled = true
        } else {
            button.isEnabled = false
        }
    }
}

extension ViewController {
    private func initbutton() {
        button = UIButton()
        button.setTitle("Push", for: .normal)
        button.backgroundColor = .red
        button.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func initswitcher() {
        switcher = UISwitch()
        switcher.translatesAutoresizingMaskIntoConstraints = false
    }
        
    
    
    private func constructHierarchy() {
        view.addSubview(button)
        view.addSubview(switcher)
    }
    
    private func activateConstraints() {
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 100),
            button.heightAnchor.constraint(equalToConstant: 50),
            
            switcher.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 30),
            switcher.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 100),
            switcher.widthAnchor.constraint(equalToConstant: 100),
            switcher.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
}


