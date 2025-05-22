import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageViewOne:UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    let diceArr = ["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"]
    var leftDiceNumber = 0
    var rightDiceNumber = 0

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func rollDicesButton(_ sender: UIButton) {
        leftDiceNumber = Int.random(in: 0...5)
        rightDiceNumber = Int.random(in: 0...5)
        
        while rightDiceNumber == leftDiceNumber{
            rightDiceNumber = Int.random(in: 0...5)
        }
        
        diceImageViewOne.image = UIImage(imageLiteralResourceName: diceArr[leftDiceNumber])
        diceImageViewTwo.image = UIImage(imageLiteralResourceName: diceArr[rightDiceNumber])
    }
}
