
import Foundation


extension NSMutableAttributedString {
    class func fromRTFURL(_ rtfurl: URL) -> NSMutableAttributedString? {
        let rtfString = try? NSMutableAttributedString(url: rtfurl, 
                                                       options: [:], 
                                                       documentAttributes: nil)
        return rtfString
    }
}
