# KSCrash-Locking-Up-In-Swift-Example
KSCrash locks up in Swift but not in Objective-C (both example included)

## Behavior

For some reason when installing KSCrash in a Swift app (using CocoaPods with frameworks), the app seems to lock up and requires this user to force close the app. The crash is still reported.

When using the same setup in an Objective-C project, the app does force close properly.

Both of the above were tested when the device was not connect to the debugger as if the app was running wild and free from the App Store.

### Objective-C
```objc
@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];

	KSCrash *crash = [KSCrash sharedInstance];
	[crash install];
}

- (IBAction)onClickBreakSomething:(id)sender {
	// The app crash properly here
	// Nothing unusual to see
	//
	// KSCrash will do its thing and capture this report
	// before the app force closes
	NSMutableArray *array = @[].mutableCopy;
	[array addObject:nil];
}


@end
```

### Swift
```swift
class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()

		let crash = KSCrash.sharedInstance()
		crash.install()
	}

	@IBAction func onClickBreakSomething(sender: AnyObject) {
		// The app will lock up here completely (even when not
		// running in debug). The button text stays highlighted
		// and will stay like this until the user force closes
		// the app
		//
		// KSCrash still capture this report but the app needs
		// to be force closed by the user
		let string: String! = nil
		string.lowercaseString
	}

}
```
