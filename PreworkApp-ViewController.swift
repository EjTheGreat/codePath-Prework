//  Created by Edwin Joseph  on 1/9/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func didTapButton(_ sender: Any) {
        // This Function changes the text "Hello" to orange
        print("Hello")
        textLabel.textColor = UIColor.orange
    }//End of didTap Button
    
    @IBAction func didTapViewButton(_ sender: Any) {
        //This changes the background to orange
        view.backgroundColor = UIColor.gray
    }//end of didTapViewButton
    
    
    @IBAction func didTapTextButton(_ sender: Any) {
        /* this changes the textlabel to (goodbye) user
         input*/
        //textLabel.text = "Goodbye!"
        
        textLabel.text = textField.text
        view.endEditing(true) // makes the keyboard go away!!
        textField.text = ""
    }//End of didTapTextButton
    
    
    @IBAction func onResetGesture(_ sender: Any) {
        // this resets everything to defult
        textLabel.text = "Hello"
        textLabel.textColor = UIColor.white
        view.backgroundColor = UIColor.black
    }// end of onResetsGesture
}//End of class

