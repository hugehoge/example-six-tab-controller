//
//  ContentViewController.swift
//  ExampleSixTabController
//

import UIKit

struct Content {
    let tabBarItem: UITabBarItem
    let backgroundColor: UIColor
}

class ContentViewController: UIViewController {
    private let backgroundColor: UIColor

    @IBOutlet private weak var badgeTextField: UITextField!

    static func instantiate(content: Content) -> ContentViewController {
        let storyboard = UIStoryboard(name: "ContentView", bundle: nil)

        return storyboard.instantiateInitialViewController { coder in
            ContentViewController(coder: coder, content: content)
        }!
    }

    private init?(coder: NSCoder, content: Content) {
        backgroundColor = content.backgroundColor

        super.init(coder: coder)

        tabBarItem = content.tabBarItem
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = backgroundColor
    }

    @IBAction private func setBadge(_ sender: Any) {
        tabBarItem.badgeValue = badgeTextField.text

        badgeTextField.text = nil
        badgeTextField.resignFirstResponder()
    }

    @IBAction private func clearBadge(_ sender: Any) {
        tabBarItem.badgeValue = nil
    }
}
