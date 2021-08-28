//
//  RootViewController.swift
//  ExampleSixTabController
//

import UIKit

class RootViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        transitionToFirstView()
    }

    private func transitionToFirstView() {
        let firstVC = TabBarController()

        // `UITabbarController` can fully display six tabs in the device where `UITraitCollection.horizontalSizeClass` is `.regular`, such as iPad.
        // This workaround uses `UIViewController.setOverrideTraitCollection` to force set `UITabBarController.traitCollection`.
        // The `traitCollection` settings using `setOverrideTraitCollection` requires affect from the parent `UIViewControlller`.
        setOverrideTraitCollection(UITraitCollection(horizontalSizeClass: .regular),
                                   forChild: firstVC)

        addChild(firstVC)
        view.addSubview(firstVC.view)
        firstVC.didMove(toParent: self)
    }
}
