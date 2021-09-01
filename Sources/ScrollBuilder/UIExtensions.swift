//
//  UIExtensions.swift
//  
//
//  Created by eddiekwon on 2021/09/01.
//

 
import Foundation
 
#if os(iOS) || os(tvOS)
import UIKit

private extension ViewController {
    
    func setupDebug(to destView: UIView, label: UILabel) {
        destView.addSubview(label)
        label.autoEdgeLayout(top: 100, left: 0)
        label.textColor = .red
        label.text = "And let’s end all this nonsense about how long sentences = run-on sentences. You can have a six-word run-on sentence (“I went shopping I ate donuts.”), while most of the sentences below are much, much longer than that and are not run-ons (except for a few examples like Jose Saramago).  But whether the sentence is grammatically correct isn’t nearly as important as whether the sentence is fun or beautiful.."
        
        
    }
    
    func addScaleLabel(to destView: UIView, label: UILabel) {
        destView.addSubview(label)
        label.autoEdgeLayout(bottom: 50, left: 0)
        label.textColor = .red
        label.text = "And let’s end all this nonsense about how long sentences = run-on sentences. You can have a six-word run-on sentence (“I went shopping I ate donuts.”), while most of the sentences below are much, much longer than that and are not run-ons (except for a few examples like Jose Saramago).  But whether the sentence is grammatically correct isn’t nearly as important as whether the sentence is fun or beautiful.."
    }
}

extension UIView {
    func autoEdgeLayout(top: CGFloat, left: CGFloat) {
        guard let superView = self.superview else {
            assert(false, "add to superview first")
        }
        translatesAutoresizingMaskIntoConstraints = false
        
        let edges: [NSLayoutConstraint] = [
            topAnchor.constraint(equalTo: superView.topAnchor, constant: top),
            leftAnchor.constraint(equalTo: superView.leftAnchor, constant: left)
        ]
        
        NSLayoutConstraint.activate(edges)
    }
    
    func autoEdgeLayout(bottom: CGFloat, left: CGFloat) {
        guard let superView = self.superview else {
            assert(false, "add to superview first")
        }
        translatesAutoresizingMaskIntoConstraints = false
        
        let edges: [NSLayoutConstraint] = [
            
            leftAnchor.constraint(equalTo: superView.leftAnchor, constant: left),
            bottomAnchor.constraint(equalTo: superView.bottomAnchor, constant: -bottom)
             
        ]
        
        NSLayoutConstraint.activate(edges)
    }
}

#endif
