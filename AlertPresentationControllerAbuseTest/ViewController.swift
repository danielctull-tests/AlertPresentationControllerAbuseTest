
import UIKit

class ViewController: UIViewController {

	@IBAction func present(sender: UIView) {
		let vc = UIViewController()
		vc.view.backgroundColor = UIColor.orangeColor()
		let nav = NavigationController(rootViewController: vc)
		nav.popoverPresentationController?.sourceRect = sender.frame
		nav.popoverPresentationController?.sourceView = sender
		presentViewController(nav, animated: true, completion: nil)
	}
}
