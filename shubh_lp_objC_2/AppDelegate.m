//
//  AppDelegate.m
//  shubh_lp_objC_2
//
//  Created by Shubhansh Rai on 14/08/23.
//

#import "AppDelegate.h"
#import <Leanplum/Leanplum.h>

@interface AppDelegate ()

@end

@implementation AppDelegate



- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

   
#ifdef DEBUG
  [Leanplum setAppId:@"app_PMtXD9BDoOM9fGR3vMfdTKfkQsaTg9ekHZOza4f0YkI"
   withDevelopmentKey:@"dev_Xczg4fOZRaXiZGvwRnyUSyRebOabMHEMboWEDVGRWdk"];
#else
  [Leanplum setAppId:@"app_PMtXD9BDoOM9fGR3vMfdTKfkQsaTg9ekHZOza4f0YkI"
   withProductionKey:@"prod_FcKFwPjFXiB0d7Xc0Ai5miU9b6YHGu6uS8OzW9d9gis"];
#endif
    [Leanplum start];
    [Leanplum inbox];
    [Leanplum trackInAppPurchases];
    
    [[UNUserNotificationCenter currentNotificationCenter] requestAuthorizationWithOptions:
        UNAuthorizationOptionAlert|UNAuthorizationOptionBadge|UNAuthorizationOptionSound
               completionHandler:^(BOOL granted, NSError * _Nullable error) {
                 NSLog(@"Granted? %@", granted ? @"YES" : @"NO");
                 NSLog(@"Error: %@", error);
               }];
    return YES;
}

//Note: You can choose any combination of formats — this is just an example.
//NSString *registerForRemoteNotifications = @"Welcome to CT";

        - (void)applicationWillResignActive:(UIApplication *)application {
            // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
            // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
        }
        
        - (void)applicationDidEnterBackground:(UIApplication *)application {
            // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
            // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
        }
        
        - (void)applicationWillEnterForeground:(UIApplication *)application {
            // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
        }
        
        - (void)applicationDidBecomeActive:(UIApplication *)application {
            // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
            // Clear app badge on start or resume.
            [[UIApplication sharedApplication] setApplicationIconBadgeNumber:0];
        }
        
        - (void)applicationWillTerminate:(UIApplication *)application {
            // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        }
        
        
        //(Optional) You may choose to enable the Remote Notifications background mode on iOS 7+ to preload the notification action. This is configurable in your XCode project settings > Capabilities > Background Modes. If you have this enabled, you must tell Leanplum to explicitly handle notifications in your app delegate:
        
        - (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo fetchCompletionHandler:(void (^)(UIBackgroundFetchResult))completionHandler {
            
            completionHandler(UIBackgroundFetchResultNewData);
            
            NSInteger badge = [[UIApplication sharedApplication] applicationIconBadgeNumber];
            [[UIApplication sharedApplication] setApplicationIconBadgeNumber: badge + 1];
            
            
            
            completionHandler(UIBackgroundFetchResultNewData);
        }
        
    
    @end
           
