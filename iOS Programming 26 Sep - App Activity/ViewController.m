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
        myInfo = [[UIBarButtonItem alloc] initWithTitle: @"Alien Info" style:UIBarButtonItemStylePlain target:appDelegate action:@selector(myInfo)];
        
        self.navigationItem.rightBarButtonItem = myInfo;
        
        myInfoTwo = [[UIBarButtonItem alloc] initWithTitle: @"Monster Info" style:UIBarButtonItemStylePlain target:appDelegate action:@selector(myInfoTwo)];
        
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
    int index = (int) segmentedControl.selectedSegmentIndex;
    
    if (index == 0) {
        textView.text = [NSString stringWithFormat: @"\n\nIt's the Monsters"];
        textView.textColor = [UIColor greenColor];
        textView.font = [UIFont fontWithName:@"Helvetica" size:20];
        textView.textAlignment = NSTextAlignmentCenter;
    }
    else {
        textView.text = [NSString stringWithFormat: @"\n\nIt's the Aliens"];
        textView.textColor = [UIColor redColor];
        textView.font = [UIFont fontWithName:@"Helvetica" size:20];
        textView.textAlignment = NSTextAlignmentCenter;
    }
    
}

- (void) loadView {
    CGRect bounds = [[UIScreen mainScreen] bounds];
    
    [super loadView];
    textView = [[UITextView alloc] initWithFrame:bounds];
    textView.editable = NO;
    
    [self setPage];
    self.view = textView;
    
}

@end


@implementation InfoViewController

- (id) initWithAppDelegate: (id) appDelegate {
    self = [super init];
    
    if (self != nil) {
        UIBarButtonItem * back = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:appDelegate action:@selector(back)];
        
        self.navigationItem.backBarButtonItem = back;
    }
    
    return self;
    
}

- (void) loadView {
    [super loadView];
    
    textView = [[UITextView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    textView.editable = NO;
    textView.text = @"\n\n\n\n\n\nYou won't find any information on Aliens here, either!\nSorry!";
    textView.textColor = [UIColor blueColor];
    textView.font = [UIFont fontWithName:@"Helvetica" size:20];
    textView.textAlignment = NSTextAlignmentCenter;
    
//    UIImage * alienImage = [UIImage imageNamed:@"alien_pix.png"];
//    
//    myViewPix = [[UIImageView alloc] initWithImage:alienImage];
//    
//    self.view = textView;
//    [self.view addSubview:myViewPix];

}

@end

@implementation InfoTwoViewController

- (id) initWithAppDelegate: (id) appDelegate {
    self = [super init];
    
    if (self != nil) {
        UIBarButtonItem * back = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:appDelegate action:@selector(back)];
        
        self.navigationItem.backBarButtonItem = back;
    }
    
    return self;
    
}

- (void) loadView {
    [super loadView];
    
    textView = [[UITextView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    textView.editable = NO;
    textView.text = @"\n\n\n\n\n\nYou won't find any information on Monsters here, either!\nSorry!";
    textView.textColor = [UIColor blueColor];
    textView.font = [UIFont fontWithName:@"Helvetica" size:20];
    textView.textAlignment = NSTextAlignmentCenter;
    
//    UIImage * monsterImage = [UIImage imageNamed:@"monster_pix.png"];
//    
//    myViewPix = [[UIImageView alloc] initWithImage:monsterImage];
//    
//    self.view = textView;
//    [self.view addSubview:myViewPix];
    
}


@end
