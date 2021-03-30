import UIKit

protocol Presentable {
    func push(controller: UIViewController)
    func pop()
}
