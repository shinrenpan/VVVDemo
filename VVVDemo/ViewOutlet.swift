//
// Copyright (c) 2020 shinren.pan@gmail.com All rights reserved.
//

import UIKit

final class ViewOutlet: NSObject {

    @IBOutlet private(set) var mainView: UIView!
    @IBOutlet private(set) var countLabel: UILabel!
    @IBOutlet private(set) var stepper: UIStepper!
}

extension ViewOutlet {

    func reloadUIWithCount(_ count: Int) {
        countLabel.text = "\(count)"
    }
}
