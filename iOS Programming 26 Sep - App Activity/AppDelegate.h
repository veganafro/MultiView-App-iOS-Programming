//
//  AppDelegate.h
//  iOS Programming 26 Sep - App Activity
//
//  Created by Jeremia Muhia on 9/26/16.
//  Copyright © 2016 nyu.edu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "ViewController.h"

@interface AppDelegate : NSObject <UIApplicationDelegate> //UIResponder <UIApplicationDelegate>
{
    UIWindow * myWindow;
    ViewController * viewController;
    InfoViewController * infoViewController;
    InfoTwoViewController * infoTwoViewController;
    UINavigationController * navigationController;
}

@property (nonatomic, retain) IBOutlet UIWindow * myWindow;

@property (nonatomic, retain) IBOutlet ViewController * viewController;

@property (nonatomic, retain) IBOutlet InfoViewController * infoViewController;

@property (nonatomic, retain) IBOutlet InfoTwoViewController * infoTwoViewController;

@property (nonatomic, retain) IBOutlet UINavigationController * navigationController;


@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;

@end

