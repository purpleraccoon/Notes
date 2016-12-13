//
//  DetailViewController.swift
//  Notes
//
//  Created by Jeremy Kemery on 5/19/16.
//  Copyright © 2016 Jeremy Kemery. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var contentViewWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var contentViewHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var scrollView: UIScrollView!
    
    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }
    
    var contentItems: [AnyObject] = []
    
    var contentSize = CGSize(width: 800, height: 1000)

    func configureView() {
        // Update the user interface for the detail item.
//        if let detail = self.detailItem {
//            
//        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        
        
        weak var ws = self
        coordinator.animateAlongsideTransition(in: scrollView, animation: { (cc) in
            
        }) { (c) in
            ws?.contentSize = CGSize(width: (ws?.scrollView.bounds.size.width)!, height: 1000.0)
            ws?.setContentView()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setContentView() {
        print(scrollView.bounds.size, contentSize)
        contentViewWidthConstraint.constant = contentSize.width
        contentViewHeightConstraint.constant = contentSize.height
        scrollView.contentSize = contentSize
    }
    
    func addText() {
        
        //contentView.addSubview(<#T##view: UIView##UIView#>)
    }
}

//class contentItem {
//    var item: AnyObject
//    var type: ObjectType
//    var topConstraint: NSLayoutConstraint
//    var bottomConstraint: NSLayoutConstraint
//    var leftConstraint: NSLayoutConstraint
//    var rightConstraint: NSLayoutConstraint
//    
//    enum ObjectType {
//        case Text
//        case Image
//        case Canvas
//    }
//    
//    init(item i: AnyObject, type t: ObjectType) {
//        item = i
//        type = t
//    }
//}
