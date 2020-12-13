//
//  ProfileView.swift
//  Authentication
//
//  Created by Кирилл Бахаровский on 12/13/20.
//

import UIKit


class ProfileView : UIViewController {
    var username: String?

    @IBOutlet var usernameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let username = username else { return }
        usernameLabel.text = "Hello, \(username)"
    }
    
}
