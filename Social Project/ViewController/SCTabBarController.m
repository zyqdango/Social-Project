//
//  SCTabBarController.m
//  Social Project
//
//  Created by YONGQING ZHENG on 2017/8/22.
//  Copyright © 2017年 YONGQING ZHENG. All rights reserved.
//

#import "SCTabBarController.h"

@interface SCTabBarController ()

@end

@implementation SCTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.viewControllers = [self viewControllerArray];
    self.selectedIndex = 1;

}
-(NSArray <UIViewController *> *)viewControllerArray
{
    UIViewController *homeController = [self homeViewController];
    UIViewController *exploreController = [self exploreViewController];
    NSArray<UIViewController *> *array = @[homeController, exploreController];
    return array;
}

- (UIViewController *)homeViewController
{
    UIViewController *homeController = [[UIViewController alloc] init];
    homeController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Home" image:[UIImage imageNamed:@"Event"] tag:0];
    
    return homeController;
}

-(UIViewController *)exploreViewController
{
    UIViewController *exploreController =[[UIViewController alloc] init];
    exploreController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Explore" image:[UIImage imageNamed:@"Explore"] selectedImage:[UIImage imageNamed:@"Explore_selected"]];
    exploreController.tabBarItem.tag = 1;
    
    return exploreController;
}

@end
