//
//
//  Created by zzxxx on 12/9/16.
//  Copyright © 2016 All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {

    class func storyboard() -> Self? {
        return storyboardInstance(self)
    }
    
    private class func storyboardInstance<T>(_ viewController: T.Type) -> T? {
        if let viewControllerNameString = "\(type(of: viewController))".components(separatedBy: ".").first {
            let storyboard = UIStoryboard(name: viewControllerNameString, bundle: nil)
            return storyboard.instantiateInitialViewController() as? T
        }
        return nil
    }
    
}
