//
//  ProjectsTableViewController.swift
//  Daniel Chen
//
//  Created by Daniel Chen on 4/24/15.
//  Copyright (c) 2015 Daniel Chen. All rights reserved.
//

import UIKit

class ProjectsTableViewController: UITableViewController {

    var detailViewController: DetailViewController? = nil

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let indexPath = self.tableView.indexPathForSelectedRow() {
            let projectViewController = (segue.destinationViewController as! DetailViewController)
            projectViewController.detailItem = tableView.cellForRowAtIndexPath(indexPath)?.textLabel?.text

            switch (segue.identifier!) {
            case ("hibar"):
                projectViewController.subviewToShow = Constants.SUBVIEW_HI_BAR
            case ("foodbaby"):
                projectViewController.subviewToShow = Constants.SUBVIEW_FOOD_BABY
            case ("interactivedirectory"):
                projectViewController.subviewToShow = Constants.SUBVIEW_INTERACTIVE_DIRECTORY
            case ("sportstat"):
                projectViewController.subviewToShow = Constants.SUBVIEW_SPORTSTAT
            case ("pebblebot"):
                projectViewController.subviewToShow = Constants.SUBVIEW_PEBBLE_BOT
            case ("hackathons"):
                projectViewController.subviewToShow = Constants.SUBVIEW_HACKATHONS
            case ("more"):
                projectViewController.subviewToShow = Constants.SUBVIEW_MORE
            default:
                println("Segue identifier not recognized")
                projectViewController.subviewToShow = Constants.SUBVIEW_NONE
            }
            
        }
    }
}
