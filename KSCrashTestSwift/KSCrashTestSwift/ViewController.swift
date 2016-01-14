//
//  ViewController.swift
//  KSCrashTestSwift
//
//  Created by Josh Holtz on 1/13/16.
//  Copyright © 2016 Josh Holtz. All rights reserved.
//

import UIKit

import KSCrash

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()

		let crash = KSCrash.sharedInstance()
		crash.install()
	}

	@IBAction func onClickBreakSomething(sender: AnyObject) {
		// The app will lock up here completely (even when not
		// running in debug). The button text stays highlighted
		// and will stay like this until the user force closes
		// the app
		//
		// KSCrash still capture this report but the app needs
		// to be force closed by the user
		let string: String! = nil
		string.lowercaseString
	}

}

