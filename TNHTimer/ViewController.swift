
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var startTimeLabel: UILabel!
    @IBOutlet var elapsedTimeLabel: UILabel!
    @IBOutlet var startDoneButton: UIButton!
    
    private var running = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    private func updateUI() {
        startTimeLabel.isHidden = !running
        elapsedTimeLabel.isHidden = !running

        let buttonTitle = running ? "Done" : "Start"
        startDoneButton.setTitle(buttonTitle, for: .normal)
    }
    
    @IBAction func toggleStartDone() {
        running = !running
        updateUI()        
    }
}

