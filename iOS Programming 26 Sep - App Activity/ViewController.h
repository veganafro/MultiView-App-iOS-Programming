//
//  ViewController.h
//  iOS Programming 26 Sep - App Activity
//
//  Created by Jeremia Muhia on 9/26/16.
//  Copyright © 2016 nyu.edu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <UIKit/UITextView.h>

@interface ViewController : UIViewController
{
    UITextView * textView;
    UIBarButtonItem * myInfo;
    UIBarButtonItem * myInfoTwo;
    
    int pageNumber;
    
    // this is for the segmented navigation bar
    UISegmentedControl * segmentedControl;
    UINavigationController * navigationController;
    
}

- (void) setPage;
- (id) initWithAppDelegate: (id) appDelegate;

@end



@interface InfoViewController : UIViewController
{
    UITextView * textView;
//    UIImageView * myViewPix;
    UINavigationController * navigationController;
    
}

- (id) initWithAppDelegate: (id) appDelegate;

@end



@interface InfoTwoViewController : UIViewController
{
    UITextView * textView;
//    UIImageView * myViewPix;
    UINavigationController * navigationController;
    
}

- (id) initWithAppDelegate: (id) appDelegate;
@end
