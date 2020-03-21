import UIKit
import NotificationCenter

class TodayViewController: UIViewController {
    @IBOutlet var timerLabel: UILabel!

    private var isRequiredToUpdate: Bool {
        return timerLabel.text != ExtensionDataManager.label1Text  // :-|
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateUI()
    }

    func updateUI() {
        timerLabel.text = ExtensionDataManager.label1Text
    }
}


extension TodayViewController: NCWidgetProviding {

    func widgetPerformUpdate(completionHandler: (@escaping (NCUpdateResult) -> Void)) {
        // Perform any setup necessary in order to update the view.

        
        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData
        
        completionHandler(NCUpdateResult.newData)
    }
}

