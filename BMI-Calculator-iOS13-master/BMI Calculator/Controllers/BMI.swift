import Foundation
import UIKit

struct BMI {
    let value: Float
    let advice: String
    let color: UIColor
    
    init(value: Float) {
        self.value = value
        if (value < 18.5) {
            self.advice = "Eat more pies!"
            self.color = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        } else if (value < 24.9) {
            self.advice = "Fit as a fiddle!"
            self.color = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        } else {
            self.advice = "Eat less pies!"
            self.color = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        }
    }
}
