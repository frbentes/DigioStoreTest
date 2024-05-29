
import UIKit

public protocol CoordinatorDelegate: AnyObject {
    func didFinish(_ coordinator: Coordinator)
}

extension CoordinatorDelegate {
    public func didFinish(_ coordinator: Coordinator) {}
}

public protocol Coordinator: CoordinatorDelegate {
    var delegate: CoordinatorDelegate? { get set }
    var navigationController: UINavigationController? { get set }
    var viewController: UIViewController! { get set }
    var childCoordinator: Coordinator? { get set }
    
    func start()
    func stop()
}

extension Coordinator {
    public func start() {
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    public func stop() {
        delegate = nil
        navigationController = nil
        viewController = nil
        childCoordinator = nil
    }
    
    public func didFinish(_ coordinator: Coordinator) {
        coordinator.stop()
    }
}
