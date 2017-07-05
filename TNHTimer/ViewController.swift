
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var startTimeLabel: UILabel!
    @IBOutlet var elapsedTimeLabel: UILabel!
    @IBOutlet var startDoneButton: UIButton!
    
    private var isRunning = false
    private var startDate: Date?
    
    private func start() {
        isRunning = true
        startDate = Date()
    }
    
    private func stop() {
        isRunning = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    private func updateUI() {
        startTimeLabel.isHidden = !isRunning
        elapsedTimeLabel.isHidden = !isRunning

        let buttonTitle = isRunning ? "Done" : "Start"
        startDoneButton.setTitle(buttonTitle, for: .normal)
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

