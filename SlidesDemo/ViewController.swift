//
//  ViewController.swift
//  SlidesDemo
//
//  Created by Lucas Dahl on 10/20/18.
//  Copyright © 2018 Lucas Dahl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        scrollView.delegate = self
        
    }

    

}

extension ViewController: UIScrollViewDelegate {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        // Calculte the page index
        let pageIndex = Int(scrollView.contentOffset.x / 375)
        
        // Set the page control Index
        pageControl.currentPage = pageIndex
        
    }
    
}
