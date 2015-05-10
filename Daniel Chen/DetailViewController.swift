//
//  DetailViewController.swift
//  test
//
//  Created by Daniel Chen on 4/24/15.
//  Copyright (c) 2015 Daniel Chen. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!
    @IBOutlet weak var subview: UIView!

    var subviewToShow = Constants.SUBVIEW_NONE
    var subviewController: UIViewController? = nil

    var detailItem: AnyObject? {
        didSet {
            self.configureView()
        }
    }

    func configureView() {
        if let detail: AnyObject = self.detailItem {
            if let label = self.detailDescriptionLabel {
                label.text = detail.description

                var subviewString: String? = nil

                switch (self.subviewToShow) {
                case (Constants.SUBVIEW_HI_BAR):
                    subviewString = "HiBarView"
                case (Constants.SUBVIEW_FOOD_BABY):
                    subviewString = "FoodBabyView"
                case (Constants.SUBVIEW_INTERACTIVE_DIRECTORY):
                    subviewString = "InteractiveDirectoryView"
                case (Constants.SUBVIEW_SPORTSTAT):
                    subviewString = "SportstatView"
                case (Constants.SUBVIEW_PEBBLE_BOT):
                    subviewString = "PebbleBotView"
                case (Constants.SUBVIEW_HACKATHONS):
                    subviewString = "HackathonsView"
                case (Constants.SUBVIEW_MORE):
                    subviewString = "MoreView"
                default:
                    label.text = "Please select a project"

                    for subview in self.subview.subviews as! [UIView] {
                        subview.removeFromSuperview()
                    }
                }

                if (subviewString != nil) {
                    subviewController = ProjectViewController(nibName: subviewString, bundle: NSBundle.mainBundle())
                    self.subview.addSubview(subviewController!.view);
                }
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

