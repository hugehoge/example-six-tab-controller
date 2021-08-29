//
//  TabBarController.swift
//  ExampleSixTabController
//

import UIKit

class TabBarController: UITabBarController {
    private let contents: [Content] = [
        Content(tabBarItem: UITabBarItem(title: "Tab 1",
                                         image: UIImage(systemName: "1.circle.fill"),
                                         tag: 1),
                backgroundColor: .white),
        Content(tabBarItem: UITabBarItem(title: "Tab 2",
                                         image: UIImage(systemName: "2.circle.fill"),
                                         tag: 2),
                backgroundColor: .cyan),
        Content(tabBarItem: UITabBarItem(title: "Tab 3",
                                         image: UIImage(systemName: "3.circle.fill"),
                                         tag: 3),
                backgroundColor: .yellow),
        Content(tabBarItem: UITabBarItem(title: "Tab 4",
                                         image: UIImage(systemName: "4.circle.fill"),
                                         tag: 4),
                backgroundColor: .orange),
        Content(tabBarItem: UITabBarItem(title: "Tab 5",
                                         image: UIImage(systemName: "5.circle.fill"),
                                         tag: 5),
                backgroundColor: .lightGray),
        Content(tabBarItem: UITabBarItem(title: "Tab 6",
                                         image: UIImage(systemName: "6.circle.fill"),
                                         tag: 6),
                backgroundColor: .green)
    ]

    private let originalTraitCollection: UITraitCollection

    init(originalTraitCollection: UITraitCollection) {
        self.originalTraitCollection = originalTraitCollection

        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        tabBar.isTranslucent = false

        let contentVCs = contents.map { ContentViewController.instantiate(content: $0) }
        for contentVC in contentVCs {
            // Restore the `UIViewController.traitCollection` to its original value to avoid the inheritance from the parent `UIViewController.traitCollection'.
            setOverrideTraitCollection(originalTraitCollection, forChild: contentVC)
        }
        setViewControllers(contentVCs, animated: false)

        selectedIndex = 0
    }
}
