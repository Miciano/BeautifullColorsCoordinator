import UIKit

protocol Coordinatable {
    var router: Presentable { get }
    init(router: Presentable)
    func start()
}

protocol Finishable {
    var finish: (()->Void)? { get set }
}

typealias FinishController = UIViewController & Finishable
