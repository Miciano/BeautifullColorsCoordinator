import UIKit

protocol Coordinating {
    var router: Presentable { get }
    init(router: Presentable)
    func start()
}

protocol Finishin {
    var finish: (()->Void)? { get set }
}

typealias FinishController = UIViewController & Finishin
