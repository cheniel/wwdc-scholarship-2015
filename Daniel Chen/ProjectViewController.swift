//
//  HiBarViewController.swift
//  Daniel Chen
//
//  Created by Daniel Chen on 4/24/15.
//  Copyright (c) 2015 Daniel Chen. All rights reserved.
//

import UIKit

class ProjectViewController: UIViewController {

    @IBAction func openHiBarLink() {
        openLink("http://challengepost.com/software/hibar")
    }

    @IBAction func openFoodBabyLink() {
        openLink("https://github.com/cheniel/food-baby")
    }

    @IBAction func openInteractiveDirectoryLink() {
        openLink("https://github.com/dali-lab/interactive-directory")
    }

    @IBAction func openSportstatLink() {
        openLink("http://sportstat.herokuapp.com/final")
    }

    @IBAction func openPebbleBotLink() {
        openLink("https://github.com/cheniel/pebble-bot")
    }

    @IBAction func openHugeFanLink() {
        openLink("https://github.com/vietjew/HugeFan")
    }

    @IBAction func openDispatchrLink() {
        openLink("https://github.com/cheniel/dispatchr-django")
    }

    @IBAction func openGithub() {
        openLink("https://github.com/cheniel/")
    }

    func openLink(urlString: String) {
        if let url = NSURL(string: urlString) {
            UIApplication.sharedApplication().openURL(url)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
