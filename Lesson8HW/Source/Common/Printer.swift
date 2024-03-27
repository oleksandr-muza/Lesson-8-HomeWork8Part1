//
//  Logger.swift
//  Lesson8HW
//

//

import Foundation

class Printer {
    
    var delegate: ColoredViews? = nil
       
    private var timer: Timer?
    private var seconds: Int = 0
    
    
    func startPrinting() {
        
        stop()
        
        timer = Timer.scheduledTimer(
            timeInterval: 1,
            target: self,
            selector: #selector(timerAction),
            userInfo: nil,
            repeats: true
        )
    }
    
    func stop() {
        timer?.invalidate()
    }
    
    @objc private func timerAction() {
        
        let secondsText = "\(seconds) секунд"
        
        if let textToPrint = delegate?.yellow {
            print("\(textToPrint) \(secondsText)")
        }
        
        if let textToPrint = delegate?.blue {
            print("\(textToPrint) \(secondsText)")
        }
        
        if let textToPrint = delegate?.red {
            print("\(textToPrint) \(secondsText)")
        }
        
        seconds += 1
    }
    
    
}
