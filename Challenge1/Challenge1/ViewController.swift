//
//  ViewController.swift
//  Challenge1
//  Created by yagom.
//  Copyright © yagom. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var profileView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(systemName: "person.fill")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var labelView1: UILabel = {
        let view = UILabel()
        view.text = "yagom"
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private lazy var labelView2: UILabel = {
        let view = UILabel()
        view.text = "23-3895-2311"
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var labelView3: UILabel = {
        let view = UILabel()
        view.text = "email@example.com"
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
        }()
    
    private lazy var textView: UITextView = {
        let view = UITextView()
        view.text = """
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla dapibus pretium nisi, non posuere turpis luctus quis. Cras sodales risus porttitor quam tincidunt volutpat. Curabitur faucibus, enim maximus gravida varius, felis erat pharetra lorem, sed egestas mi augue sed dui. Phasellus vitae quam quam. Aliquam faucibus libero vitae nulla pretium, a mollis velit accumsan. Ut efficitur, enim id fermentum tincidunt, metus est elementum ipsum, at aliquam elit quam posuere diam. Nam ac nisl iaculis, efficitur odio eget, sodales nunc. Sed interdum porttitor magna, ut fringilla diam vulputate nec. Donec hendrerit eget elit vel aliquet. Sed scelerisque sollicitudin enim aliquet ullamcorper. Vivamus pharetra ligula in magna ullamcorper, vel tristique velit dignissim. Curabitur interdum tristique eleifend. Pellentesque placerat placerat diam vel posuere. Donec eget fermentum nibh. Nam commodo accumsan dolor sed hendrerit. Pellentesque sollicitudin nisl id iaculis feugiat. Sed porta scelerisque nisl, id fermentum est fermentum ultricies. Nam maximus auctor porttitor. Aenean in rutrum metus, ac tristique libero. Aenean at viverra lorem. Nulla pulvinar dapibus enim, at congue nisi eleifend sit amet.

Etiam faucibus pharetra finibus. Phasellus euismod egestas turpis, vel vestibulum magna pulvinar nec. Sed eu semper risus. Suspendisse ac venenatis neque, a sollicitudin libero. Sed fringilla ultrices tellus, eget cursus lectus commodo in. Morbi vel mi nibh. In et vestibulum ante.

Maecenas vel orci et erat ornare semper. Nunc eget iaculis erat, ac maximus metus. Donec rhoncus arcu magna, nec luctus nunc iaculis vel. Sed quis odio ac ligula scelerisque consequat eget in dui. Nam sed fringilla ex. Fusce vitae dictum velit, ac elementum risus. Sed sit amet purus eget orci ultrices sagittis viverra finibus dui. Nam imperdiet placerat orci, nec dapibus nibh consequat a. Nullam cursus libero blandit ante cursus, sit amet condimentum justo ornare. Phasellus sed dignissim ligula, et mattis ante. Mauris faucibus, elit sed suscipit porta, lorem lacus faucibus metus, sed imperdiet arcu ante id eros. Praesent rutrum ante sed ex dignissim, ut volutpat orci bibendum.

Cras vehicula tempus lorem, sed dictum tortor tristique vitae. Morbi et ligula ullamcorper, tempor eros nec, pellentesque enim. Suspendisse in ornare sapien, ut sodales mi. Maecenas ornare urna ut leo laoreet molestie. Vivamus quam enim, tincidunt a ullamcorper eget, blandit id lacus. Proin rutrum aliquet tempor. Pellentesque efficitur nibh vitae viverra placerat. Donec rutrum purus dolor, non sodales neque volutpat eu. Integer elementum volutpat lorem, mattis facilisis massa pretium eu. Sed sapien nibh, lacinia et interdum nec, placerat accumsan lacus.

"""
        
        view.backgroundColor = .lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
        }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureHierarchy()
        configureConstraints()
        }
    
    func configureHierarchy() {
        [profileView, labelView1, labelView2, labelView3, textView].forEach { v in
            view.addSubview(v)
        }
        
    }
    
    
    func configureConstraints() {
        let profileViewWidthConstraint150: NSLayoutConstraint = profileView.widthAnchor.constraint(lessThanOrEqualToConstant: 150)
        
        let profileViewWidthConstraint30per: NSLayoutConstraint = profileView.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.3)
        profileViewWidthConstraint30per.priority = UILayoutPriority(750)
        
        NSLayoutConstraint.activate([
            profileView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            profileView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            profileViewWidthConstraint150,
            profileViewWidthConstraint30per,
            
            profileView.heightAnchor.constraint(equalTo: profileView.widthAnchor, multiplier: 1.0),
            labelView1.topAnchor.constraint(equalTo: profileView.topAnchor),
            labelView1.leadingAnchor.constraint(equalTo: profileView.trailingAnchor, constant: 20),
           
            labelView2.topAnchor.constraint(equalTo: labelView1.bottomAnchor, constant: 30),
            labelView2.leadingAnchor.constraint(equalTo: labelView1.leadingAnchor),
            
            labelView3.topAnchor.constraint(equalTo: labelView2.bottomAnchor, constant: 30),
            labelView3.leadingAnchor.constraint(equalTo: labelView2.leadingAnchor),
            
            textView.topAnchor.constraint(equalTo: profileView.bottomAnchor, constant: 30),
            textView.leadingAnchor.constraint(equalTo: profileView.leadingAnchor),
            textView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            textView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
        ])
        
    }
    
}
