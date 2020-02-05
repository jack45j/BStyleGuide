//: A UIKit based Playground for presenting user interface
  
import UIKit
//import BStyleGuide
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let label = UILabel()
        label.frame = CGRect(x: 100, y: 250, width: 200, height: 150)
        label.text = "Hello World!"
        label.textColor = .black
		label.textAlignment = .center
//		label.apply(.background(color: .yellow))
		
        view.addSubview(label)
        self.view = view
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
