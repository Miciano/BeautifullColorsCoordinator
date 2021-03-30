import Foundation

final class AppCoordinator: Coordinating {
    let router: Presentable
    var childCoordinator: [Coordinating] = []
    
    init(router: Presentable) {
        self.router = router
    }
    
    func start() {
        showRedFlow()
    }
    
    func showRedFlow() {
        let coordinator = RedColorCoordinator(router: router)
        coordinator.finish = { [weak self] in
            self?.showBlueFlow()
        }
        childCoordinator.append(coordinator)
        coordinator.start()
    }
    
    func showBlueFlow() {
        let coordinator = BlueColorCoordinator(router: router)
        coordinator.finish = {
            fatalError("O app acabou aqui, valeu...")
        }
        childCoordinator.append(coordinator)
        coordinator.start()
    }
}
