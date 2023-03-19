//
//  ViewController.swift
//  HelloRxSwift
//
//  Created by 김지현 on 2023/03/18.
//

import UIKit
import RxSwift

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		
		_ = Observable.from([1,2,3,4,5])
	}


}

