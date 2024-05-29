
import UIKit

class HomeCoordinator: Coordinator {
    weak var delegate: CoordinatorDelegate?
    var navigationController: UINavigationController?
    var viewController: UIViewController!
    var childCoordinator: Coordinator?
    var viewModel: HomeViewModel?
    
    init(with navigationController: UINavigationController) {
        self.navigationController = navigationController
        viewModel = HomeViewModel()
        guard let viewModel = viewModel else { return }
        viewController = HomeViewController(viewModel: viewModel)
    }
    
    func closeHome() {
        self.didFinish(self)
    }
}
