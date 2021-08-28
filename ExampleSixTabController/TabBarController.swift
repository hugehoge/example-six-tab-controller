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

    override func viewDidLoad() {
        super.viewDidLoad()

        tabBar.isTranslucent = false
        setViewControllers(contents.map { ContentViewController.instantiate(content: $0) }, animated: false)

        selectedIndex = 0
    }
}
