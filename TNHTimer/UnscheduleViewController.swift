import UIKit

class UnscheduleViewController: UIViewController {
    
    @IBOutlet var blurbTextView: UITextView!
    
    private func populateBlurbBox() {
        let bundle = Bundle.main
        guard let releaseNotesUrl = bundle.url(forResource: "Unschedule", withExtension: "rtf"),
            let releaseNotes = NSMutableAttributedString.fromRTFURL(releaseNotesUrl) else {
                return
        }
        
        blurbTextView.attributedText = releaseNotes
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        populateBlurbBox()
    }
    
    @IBAction func back() {
        dismiss(animated: true, completion: nil)
    }
    
}
