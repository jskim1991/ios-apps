import UIKit
import AVFoundation

class ViewController: UIViewController {
        
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var labelText: UILabel!
    
    let eggTimes: [String: Int] = ["Soft": 5, "Medium": 7, "Hard": 12]
    var seconds = 60
    var totalSeconds = 60
    var timer : Timer = Timer()
    var soundPlayer: AVAudioPlayer?

    @IBAction func onSelect(_ sender: UIButton) {
        
        progressBar.progress = 0.0
        labelText.text = sender.currentTitle!
        let hardness = sender.currentTitle!
        
        seconds = eggTimes[hardness]!
        totalSeconds = eggTimes[hardness]!
        
        timer.invalidate()
        

        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            if (self.seconds > 0) {
                print("\(self.seconds)s remaining")
                self.seconds -= 1
                let progressPercentage = 1.0 -  Float(self.seconds) / Float(self.totalSeconds)
                self.progressBar.progress = progressPercentage
            } else {
                self.timer.invalidate()
                self.labelText.text = "DONE"
                self.alarm()
            }
        }
    }
    
    func alarm() {
        let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
        soundPlayer = try! AVAudioPlayer(contentsOf: url!)
        soundPlayer!.play()
    }
}
