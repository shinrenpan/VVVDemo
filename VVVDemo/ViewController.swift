//
// Copyright (c) 2020 shinren.pan@gmail.com All rights reserved.
//

import Combine
import UIKit

final class ViewController: UIViewController {

    private var _bindings = Set<AnyCancellable>()
    private let _viewModel = ViewModel()

    private lazy var _viewOutlet: ViewOutlet = {
        let result = ViewOutlet()
        Bundle.main.loadNibNamed("ViewOutlet", owner: result, options: nil)
        return result
    }()
}

extension ViewController {

    override func loadView() {
        view = _viewOutlet.mainView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        __setupViewModelBinding()
        __setupViewOutletActions()
    }
}

private extension ViewController {

    func __setupViewModelBinding() {
        _viewModel.$count
            .receive(on: DispatchQueue.main)
            .sink { [weak self] in
                self?._viewOutlet.reloadUIWithCount($0)
            }
            .store(in: &_bindings)
    }

    func __setupViewOutletActions() {
        _viewOutlet.stepper.addTarget(
            self,
            action: #selector(__steperClicked(_:)),
            for: .valueChanged
        )
    }

    @objc func __steperClicked(_ sender: UIStepper) {
        _viewModel.updateCount(Int(sender.value))
    }
}
