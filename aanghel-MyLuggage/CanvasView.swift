//
//  CanvasView.swift
//  aanghel-MyLuggage
//
//  Created by Ana Anghel on 3/11/21.
//

import UIKit

class CanvasView: UIView {
    
    var x: CGFloat = 0, y: CGFloat = 0, r: CGFloat = 25
    var velocity: CGFloat = 1
    var dx: CGFloat = 1, dy: CGFloat = 1
    var done = false
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        let color = UIColor(red: 0.740, green: 0.637, blue: 0.894, alpha: 0.6)
        
        if let context = UIGraphicsGetCurrentContext() {
            context.setFillColor(color.cgColor)
            let rect = CGRect(x: x - r, y: y - r, width: 2 * r, height: 2 * r)
            context.fillEllipse(in: rect)
            
        }
        if !done {
            DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(5)) {
                self.update()
            }
        }
    }
    
    func start(_ center: Bool = true) {
        if center {
            x = bounds.width / 2
            y = bounds.height / 2
        }
        done = false
        self.setNeedsDisplay()
    }
    
    func stop() {
        done = true
    }
    
    func update() {
        x += dx * velocity
        y += dy * velocity
        if x < r || x > bounds.width - r {
            dx = -dx
        }
        if y < r || y > bounds.height - r {
            dy = -dy
        }
        self.setNeedsDisplay()
    }

}
