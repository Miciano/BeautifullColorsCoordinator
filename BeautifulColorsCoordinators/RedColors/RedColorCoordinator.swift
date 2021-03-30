import Foundation
import UIKit

final class RedColorCoordinator: Coordinatable, Finishable {
    var finish: (() -> Void)?
    var router: Presentable
    
    init(router: Presentable) {
        self.router = router
    }
    
    func start() {
        var controller = RedFactory.makeRed()
        controller.finish = { [weak self] in
            self?.showMagenta()
        }
        router.push(controller: controller)
    }
    
    func showMagenta() {
        var controller = RedFactory.makeMagenta()
        controller.finish = { [weak self] in
            self?.finish?()
        }
        router.push(controller: controller)
    }
}
