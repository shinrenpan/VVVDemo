//
// Copyright (c) 2020 shinren.pan@gmail.com All rights reserved.
//

import Combine
import Foundation

final class ViewModel {

    @Published private(set) var count = 0
}

extension ViewModel {

    func updateCount(_ newValue: Int) {
        count = newValue
    }
}
