# NDParallaxIntroView

[![CI Status](http://img.shields.io/travis/Simon Wicha/NDCollapsiveDatePicker.svg?style=flat)](https://travis-ci.org/Simon Wicha/NDCollapsiveDatePicker)
[![Version](https://img.shields.io/cocoapods/v/NDParallaxIntroView.svg?style=flat)](http://cocoadocs.org/docsets/NDCollapsiveDatePicker)
[![License](https://img.shields.io/cocoapods/l/NDParallaxIntroView.svg?style=flat)](http://cocoadocs.org/docsets/NDCollapsiveDatePicker)
[![Platform](https://img.shields.io/cocoapods/p/NDParallaxIntroView.svg?style=flat)](http://cocoadocs.org/docsets/NDCollapsiveDatePicker)

This is the pod version of NDParallaxIntroView, which provides a very easy to use and beautiful parallax IntroView for your App to onboard user.

## Installation

NDParallaxIntroView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:
```ruby
pod 'NDParallaxIntroView'
```

## Usage

Create a strong property of NDParallaxIntroView in your class from which you want to trigger your intro.
``` objective-c
#import <NDParallaxIntroView/NDIntroView.h>

@property (strong, nonatomic) NDParallaxIntroView *introView;

@interface ViewController : UIViewController <NDParallaxIntroViewDelegate>
```
Usage:
``` objective-c
self.introView = [[NDIntroView alloc] initWithFrame:self.view.frame parallaxImage:[UIImage imageNamed:@"parallaxBgImage"] andData:pageContentArray];
self.introView.delegate = self;
[self.view addSubview:self.introView];
```
Important - You need to create the pageContentArray first which follows an easy structure (see example below). All values are optional so don't worry about the app crashing when you forget something ;)
``` objective-c
NSArray *pageContentArray = @[@{kNDIntroPageTitle : @"NDParallaxIntroView",
kNDIntroPageDescription : @"Now you can easily add your beautiful intro into your app with no hassle.",
kNDIntroPageImageName : @"parallax"
},
@{kNDIntroPageTitle : @"Work-It-Out",
kNDIntroPageDescription : @"A great App to create your own personal workout and get instructed by your phone.",
kNDIntroPageImageName : @"workitout"
},
@{kNDIntroPageTitle : @"ColorSkill",
kNDIntroPageDescription : @"A small game while waiting for the bus. Easy, quick and addictive.",
kNDIntroPageImageName : @"colorskill"
},
@{kNDIntroPageTitle : @"Appreciate",
kNDIntroPageDescription : @"A little helper to make your life happier. Soon available on the AppStore",
kNDIntroPageImageName : @"appreciate"
},
@{kNDIntroPageTitle : @"Do you like it?",
kNDIntroPageImageName : @"firstImage",
kNDIntroPageTitleLabelHeightConstraintValue : @0,
kNDIntroPageImageHorizontalConstraintValue : @-40
}
];
self.introView = [[NDIntroView alloc] initWithFrame:self.view.frame parallaxImage:[UIImage imageNamed:@"parallaxBgImage"] andData:pageContentArray];
self.introView.delegate = self;
[self.view addSubview:self.introView];
```
Delegate method implementation is required
``` objective-c
-(void)launchAppButtonPressed
```

## Screenshot

Animated gif of working NDParallaxIntroView

![](https://github.com/s1m-0n/NDParallaxIntroView/blob/master/NDParallaxIntroViewExample/ndparallaxintroview.gif "NDParallaxIntroView")



## Author

Simon Wicha | simon.wicha@nomis-development.net

## License

NDParallaxIntroView is available under the MIT license. See the LICENSE file for more info.

