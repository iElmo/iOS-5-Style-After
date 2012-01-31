//
//  AppDelegate.m
//  Style
//
//  Created by Dan on 27/01/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"
#import "DetailViewController.h"
#import "ViewController.h"

@implementation AppDelegate

@synthesize window;
@synthesize viewController;

-(void) makeGUI{
    
    UIImage *navImage = [[UIImage imageNamed:@"leather2.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 0, 0, 0) ];
    
    [[UINavigationBar appearance] setBackgroundImage:navImage forBarMetrics:UIBarMetricsDefault];
    
    [[UINavigationBar appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor], UITextAttributeTextColor, [UIFont fontWithName:@"Arial-Bold" size:0.0], UITextAttributeFont, nil]];
    
    UIImage *toolImage = [[UIImage imageNamed:@"bottomLeather.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 0, 0, 0)];
    
    [[UITabBar appearance] setBackgroundImage:toolImage];
    
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    ViewController *vc1 = [[ViewController alloc] initWithNibName:@"ViewController" bundle:nil];
    UINavigationController *nav1 = [[UINavigationController alloc] initWithRootViewController:vc1];
    [nav1 setTabBarItem:[[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemTopRated tag:1]];
    
    DetailViewController *vc2 = [[DetailViewController alloc] init];
    UINavigationController *nav2 = [[UINavigationController alloc] initWithRootViewController:vc2];
    [nav2 setTabBarItem:[[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemContacts tag:2]];
    
    DetailViewController *vc3 = [[DetailViewController alloc] init];
    UINavigationController *nav3 = [[UINavigationController alloc] initWithRootViewController:vc3];
    [nav3 setTabBarItem:[[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemFeatured tag:3]];
    
    UITabBarController *tabController = [[UITabBarController alloc] init];     
    
    NSArray *tabs_array = [[NSArray alloc] initWithObjects:nav1, nav2, nav3, nil];
    tabController.viewControllers = tabs_array;
    
    [self makeGUI];
    
    self.window.rootViewController = tabController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

@end
