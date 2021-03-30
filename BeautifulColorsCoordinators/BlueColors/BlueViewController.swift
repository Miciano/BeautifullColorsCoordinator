import Foundation
import UIKit

final class BlueViewController: UIViewController, Finishin {
    var finish: (() -> Void)?
    
    lazy var okButton: UIButton = {
        let button = UIButton()
        button.setTitle("Finalizar Tela", for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        buildView()
    }
    
    func buildView() {
        buildHierarchy()
        buildConstraints()
    }
    
    func buildHierarchy() {
        view.addSubview(okButton)
    }
    
    func buildConstraints() {
        okButton.translatesAutoresizingMaskIntoConstraints = false
        let centerX = NSLayoutConstraint(item: okButton, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0)
        let centerY = NSLayoutConstraint(item: okButton, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: 0)
        
        view.addConstraints([centerX, centerY])
    }
    
    @objc
    func buttonAction() {
        finish?()
    }
}
