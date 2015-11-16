
import UIKit

class NavigationController: UINavigationController {

	override init(nibName: String?, bundle: NSBundle?) {
		super.init(nibName: nibName, bundle: bundle)
		setup()
	}

	override init(rootViewController: UIViewController) {
		super.init(rootViewController: rootViewController)
		setup()
	}

	required init?(coder: NSCoder) {
		super.init(coder: coder)
		setup()
	}

	func setup() {
		modalPresentationStyle = .Custom
		transitioningDelegate = self
		preferredContentSize = CGSize(width: 250, height: 250)
	}

	let alert = UIAlertController(title: "", message: "", preferredStyle: .ActionSheet)
	override var popoverPresentationController: UIPopoverPresentationController? {
		return alert.popoverPresentationController
	}
}



extension NavigationController: UIViewControllerTransitioningDelegate {

	func presentationControllerForPresentedViewController(presented: UIViewController, presentingViewController presenting: UIViewController, sourceViewController source: UIViewController) -> UIPresentationController? {

		if let pc = alert.popoverPresentationController {
			return pc
		}

		return alert.presentationController
	}
}
