
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var startTimeLabel: UILabel!
    @IBOutlet var elapsedTimeLabel: UILabel!
    @IBOutlet var startDoneButton: UIButton!
    
    private var isRunning = false
    private var startDate: Date?
    private var heartbeatTimer: Timer?
    
    private let dateFormatter = DateFormatter()
    
    private func start() {
        isRunning = true
        startDate = Date()

        startTimeLabel.isHidden = false
        elapsedTimeLabel.isHidden = false

        startTimer()
    }
    
    private func stop() {
        isRunning = false
        stopTimer()
    }
    
    
    private func startTimer() {
        // Should not be starting a timer that's already started.
        precondition(heartbeatTimer == nil)
        
        // I run iOS 9 on my precioussss gold 5s.  The nice block version of scheduledTimer came in iOS10.
        heartbeatTimer = Timer.scheduledTimer(timeInterval: 0.5, 
                                              target: self, 
                                              selector: #selector(self.lubdub), 
                                              userInfo: nil, 
                                              repeats: true)
    }
    
    private func stopTimer() {
        // Should not be stopping a timer that's not started
        precondition(heartbeatTimer != nil)
        
        heartbeatTimer?.invalidate()
        heartbeatTimer = nil
    }
    

    // Timer callback
    @objc private func lubdub() {
        precondition(startDate != nil)
        precondition(isRunning)
        
        updateElapsedTimeLabel()
    }
    
    private func updateElapsedTimeLabel() {
        guard let startDate = startDate else {
            elapsedTimeLabel.text = "0:00:00"
            return   
        }
        let time = abs(startDate.timeIntervalSinceNow)
        elapsedTimeLabel.text = time.HHMMSS()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Fresh run, hide the timer label and elapsed time label
        startTimeLabel.isHidden = true
        elapsedTimeLabel.isHidden = true

        updateUI()
    }
    
    private func updateUI() {
        let buttonTitle = isRunning ? "Done" : "Start"
        startDoneButton.setTitle(buttonTitle, for: .normal)
        
        if let startDate = startDate {
            dateFormatter.dateFormat = "h:mm:ss"
            dateFormatter.timeZone = TimeZone.current
            let dateString = dateFormatter.string(from: startDate)

            let labelText = "Started at: " + dateString
            startTimeLabel.text = labelText
        }
        
        updateElapsedTimeLabel()
    }
    
    @IBAction func toggleStartDone() {
        if !isRunning {
            start()    
        } else {
            stop()   
        }
        updateUI()        
    }
}



extension TimeInterval {
    func HHMMSS() -> String {
        let hours = Int(self) / (60*60)
        let minutes = (Int(self) - hours * 60*60) / 60
        let seconds = Int(self) % 60
        let timeString = String.init(format: "%02d:%02d:%02d", hours, minutes, seconds)
        return timeString
    }
}


