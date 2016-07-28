# MMNumberKeyboard
A simple keyboard to use with numbers and, optionally, a decimal point.

![And it works great on the iPad too](https://github.com/matmartinez/MMNumberKeyboard/blob/master/UniversalScreenshot.png)

## Installation

### From CocoaPods 
[CocoaPods](http://cocoapods.org) is a dependency manager for Objective-C, which automates and simplifies the process of using 3rd-party libraries like `MMNumberKeyboard` in your projects. First, add the following line to your [Podfile](http://guides.cocoapods.org/using/using-cocoapods.html):

```ruby
pod 'MMNumberKeyboard'
```

Second, install `MMNumberKeyboard` into your project:

```ruby
pod install
```

## Usage

There is a sample Xcode project available. Just build & run. And profit.

Basically you instantiate your own keyboard view to use as an `.inputView` of your `UITextField`, `UITextView` or whatever view that supports text editing.

```objective-c
// Create and configure the keyboard.
MMNumberKeyboard *keyboard = [[MMNumberKeyboard alloc] initWithFrame:CGRectZero];
keyboard.allowsDecimalPoint = YES;
keyboard.delegate = self;

// Configure an example UITextField.
UITextField *textField = [[UITextField alloc] initWithFrame:CGRectZero];
textField.inputView = keyboard;
```

You can adopt the `MMNumberKeyboardDelegate` protocol to handle the return key or whether text should be inserted or not.

## Development

Pull requests are welcome and mostly appreciated.

## Credits

Thanks to [Pedro Burón](https://github.com/pedroburon/) for the encouragement and moral support to make this `README` file possible.
