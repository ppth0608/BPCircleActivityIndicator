# BPCircleActivityIndicator

**BPCircleActivityIndicator** is a clean and easy-to-use Activity Indicator meant to display the progress of an ongoing task on iOS. </br>

## Demo (no_interval, interval)

<img src="https://cloud.githubusercontent.com/assets/9531750/25071759/6a8b115c-22fa-11e7-8264-ef1db45357ef.gif" width="320" height="590" /> <img src="https://cloud.githubusercontent.com/assets/9531750/25071758/65e635b4-22fa-11e7-8b40-2b7d82a2ecbf.gif" width="320" height="590" />

## Requirements
 - Deployment Target - `iOS 8.0`
 - Swift Version - `Swift 3.1`

## Installation

### CocoaPods
BPCircleActivityIndicator is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "BPCircleActivityIndicator"
```

### Carthage
simply add the following line to your Cartfile:

``` ruby
github "ppth0608/BPCircleActivityIndicator"
```

### Manual
Copy the folder `Source/` to your project

## Usage
Using BPCircleActivityIndicator isn't difficult at all. There are two actual ways of implementing it in your project:
- Storyboard setup
- Manual setup

### Storyboard Setup
First, you're about to add 1 UIViews to your Storyboard and setup custom classes (You can set custom classes in **Identity Inspector**) as it shown in the picture below

(When you set custom class **BPCircleActivityIndicator**, you can see how view looks like cuz **@IBDesignable**)

<img src="https://cloud.githubusercontent.com/assets/9531750/25071753/416ae61c-22fa-11e7-90cd-92a5043ed10c.png" width="1000" height="650" />

and, add Outlet in to your code
```Swift
@IBOutlet weak var circleIndicator: BPCircleActivityIndicator!
```

### Menual setup
if for some reason you'd like to setup **BPCircleActivityIndicator** manually you have to do the following step
```Swift
var circleIndicator: BPCircleActivityIndicator!
    
override func viewDidLoad() {
    super.viewDidLoad()
    circleIndicator = BPCircleActivityIndicator(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
    view.addSubview(circleIndicator)
}
```

### Animate & Stop
You can easily animate and stop animation
```Swift
@IBAction func startButtonTapped(sender: UIButton) {
    circleIndicator.animate()
}
    
@IBAction func stopButtonTapped(sender: UIButton) {
    circleIndicator.stop()
}
```

### Customize
if you want to setup rotate speed or interval, you can call methods as it shown in the code below (Custom color is not suppoerted yet)
```Swift
@IBAction func startButtonTapped(sender: UIButton) {
    circleIndicator
        .rotateSpeed(0.6)
        .interval(0.3)
        .animate()
}
```

Default setting is shown in below
 - Rotate Speed : 0.6
 - Interval : 0.3

## TODO
 - [ ]  Custom Color Support

## Author

Ben.Park, ppth0608@naver.com

## Designed By

Suna.Shin, tjsdk2309@gmail.com

## Contribute

always welcome :)
please, pull request for **BPCircleActivityIndicator**

## License

BPCircleActivityIndicator is available under the MIT license. See the LICENSE file for more info.
