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

        setOverrideTraitCollection(UITraitCollection(horizontalSizeClass: .regular),
                                   forChild: firstVC)

        addChild(firstVC)
        view.addSubview(firstVC.view)
        firstVC.didMove(toParent: self)
    }
}
