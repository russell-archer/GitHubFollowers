//
//  SearchVC.swift
//  GitHubFollowers
//
//  Created by Russell Archer on 06/04/2020.
//  Copyright © 2020 Russell Archer. All rights reserved.
//

import UIKit

class SearchVC: UIViewController {

    let logoImageView = UIImageView()
    let usernameTextField = GFTextField()
    let callToActionButton = GFButton(backgroundColor: .systemGreen, title: "Get Followers")
    
    var isUsernameEntered: Bool {
        return usernameTextField.text?.count ?? 0 > 0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        configureLogoImageView()
        configureTextField()
        configureCallToActionButton()
        createDismissKeyboardTapGesture()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.isNavigationBarHidden = true  // Hide the nav bar on just the search screen
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    func configureLogoImageView() {
        view.addSubview(logoImageView)  // The equivalent of dragging a text field onto the storyboard
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        logoImageView.image = UIImage(named: "gh-logo")!
        
        // Autolayout constraints...
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80),  // 80 from the top
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor), // Center horizontally
            logoImageView.heightAnchor.constraint(equalToConstant: 200),  // Constrain the image to be 200 height
            logoImageView.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    func createDismissKeyboardTapGesture() {
        // view.endEditing() causes the view (or one of its embedded text fields) to resign the first
        // responder status. This dismisses the keyboard
        let tap = UITapGestureRecognizer(target: view, action: #selector(view.endEditing(_:)))
        view.addGestureRecognizer(tap)  // Add the tap gesture recognizer to the overall view of the view controller
    }
    
    // Target for the "Get Followers" button (and the text field return ("Go") key)
    // Has to be an @objc method for use with the #selector() method
    @objc func pushFollowerListVC() {
        guard isUsernameEntered else {
            presentGFAlertOnMainThread(title: "Empty user name", message: "Please enter a username. We need to know who to look for 😀", buttonTitle: "OK")
            return
        }
        
        let followersVC = FollowerListVC()
        followersVC.username = usernameTextField.text!
        followersVC.title = usernameTextField.text!
        
        navigationController?.pushViewController(followersVC, animated: true)
    }
    
    func configureTextField() {
        view.addSubview(usernameTextField)
        
        // Tell the text field we want to be a delegate
        usernameTextField.delegate = self
        
        NSLayoutConstraint.activate([
            usernameTextField.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 48),  // Pin to bottom of the logo
            usernameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),      // Pin to left edge
            usernameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),   // Pin to right edge (trailing & bottom use negative numbers)
            usernameTextField.heightAnchor.constraint(equalToConstant: 50)  // Make the text field 50 points in height
        ])
    }
    
    func configureCallToActionButton() {
        view.addSubview(callToActionButton)
        
        // Define what happens when the button's tapped
        callToActionButton.addTarget(self, action: #selector(pushFollowerListVC), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            callToActionButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            callToActionButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            callToActionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            callToActionButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}

extension SearchVC: UITextFieldDelegate {
    // This method's called when the Return key is tapped
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        pushFollowerListVC()
        return true
    }
}
