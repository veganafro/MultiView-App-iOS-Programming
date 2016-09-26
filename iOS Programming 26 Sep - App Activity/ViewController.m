//
//  ViewController.m
//  iOS Programming 26 Sep - App Activity
//
//  Created by Jeremia Muhia on 9/26/16.
//  Copyright © 2016 nyu.edu. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import <AudioToolbox/AudioToolbox.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (id) initWithAppDelegate:(id)appDelegate {
    self = [super init];
    
    if (self != nil) {
        // init the navigation buttons starting with the right
        myInfo = [[[UIBarButtonItem alloc] initWithTitle: @"Alien Info" style:UIBarButtonItemStylePlain target:appDelegate action:@selector(myInfo)] autorelease];
        
        self.navigationItem.rightBarButtonItem = myInfo;
        
        myInfoTwo = [[[UIBarButtonItem alloc] initWithTitle: @"Monster Info" style:UIBarButtonItemStylePlain target:appDelegate action:@selector(myInfoTwo)] autorelease];
        
        self.navigationItem.leftBarButtonItem = myInfoTwo;
        
        segmentedControl = [[UISegmentedControl alloc] initWithItems:nil];
        [segmentedControl insertSegmentWithTitle:@"Monsters" atIndex:0 animated:NO];
        [segmentedControl insertSegmentWithTitle:@"Aliens" atIndex:1 animated:NO];
        
        [segmentedControl addTarget:self action:@selector(controlPressed:) forControlEvents:UIControlEventValueChanged];
        
        self.navigationItem.titleView = segmentedControl;
        segmentedControl.selectedSegmentIndex = 0;
    }
    
    return self;
    
}

- (void) controlPressed: (id) sender {
    [self setPage];
    
}

- (void) setPage {
    long index = segmentedControl.selectedSegmentIndex;
    
    if (index == 0) {
        textView.text = [NSString stringWithFormat: @"\n\nIt's the Monsters"];
        textView.textColor = [UIColor greenColor];
        textView.font = [UIFont fontWithName:@"Helvetica" size:36];
        textView.textAlignment = NSTextAlignmentCenter;
    }
    else {
        textView.text = [NSString stringWithFormat: @"\n\nIt's the Aliens"];
        textView.textColor = [UIColor redColor];
        textView.font = [UIFont fontWithName:@"Helvetica" size:36];
        textView.textAlignment = NSTextAlignmentCenter;
    }
    
}

- (void) loadView {
    CGRect bounds = [[UIScreen mainScreen] applicationFrame];
    
    [super loadView];
    textView = [[UITextView alloc] initWithFrame:bounds];
    
}

@end


@implementation InfoViewController

- (id) initWithAppDelegate: (id) appDelegate {
    self = [super init];
    
    if (self != nil) {
        UIBarButtonItem * back = [[[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:appDelegate action:@selector(back)] autorelease];
        
        self.navigationItem.backBarButtonItem = back;
    }
    
}

@end
