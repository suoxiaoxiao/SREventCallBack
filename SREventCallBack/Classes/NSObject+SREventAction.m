//
//  NSObject+SREventAction.m
//  SREventCallBack_Example
//
//  Created by 索晓晓 on 2018/3/8.
//  Copyright © 2018年 suoxiaoxiao. All rights reserved.
//

#import "NSObject+SREventAction.h"

@implementation NSObject (SREventAction)

- (void)touchHandlewithEvent:(UIEvent *)event
{
    
    NSLog(@"shigeshenmegui");
    
    //双层View
    if ([self isKindOfClass:[UIWindow class]]) {
        // do nothing
    }else if ([self isKindOfClass:[UIView class]]) {
        
        
        //如何判断当前view是VC的view VC的view。superView是nil  其他的View都会有SuperView（除了UIWindow）  走到这一步就继续走VC 之后再走VC的父控件的View
        UIView *viewself = (UIView *)self;
        if (!viewself.superview) {
            
            NSLog(@"!viewself.superview");
            
        }
        
        if ([viewself.superview isKindOfClass:[UIWindow class]]) {
            UIViewController *vc = [NSObject currentViewController];
            event.eventPractitioners = vc;
            [vc touchHandlewithEvent:event];
            
        }else{
            
            [viewself.superview touchHandlewithEvent:event];
        }
    }else if([self isKindOfClass:[UIViewController class]]){
        
        UIViewController *vc = (UIViewController *)self;
        UIViewController *parvc = [NSObject partentViewControllerFromVC:vc];
        [parvc touchHandlewithEvent:event];
    }
    
    //当期view回调到父控件
    
    
//    if ([self isKindOfClass:[NSObject class]]) {//调用父类的
//
//        if ([event.eventPractitioners isKindOfClass:[UIView class]]) {//是否是UIview
//
//            UIView *eventPract = (UIView *)event.eventPractitioners;
//
//            if (eventPract.superview == nil) {//可能是自己创建的， 也有可能是VC中的
//
//            }
//
//        }
//
//    }


}

+ (UIViewController *)rootViewControllerOfVC:(UIViewController *)vc
{
    if ([vc isKindOfClass:[UINavigationController class]]) {
        UINavigationController *navivc =  (UINavigationController *)vc;
        if (navivc.viewControllers.count) {
            return [self rootViewControllerOfVC:navivc.viewControllers[0]];
        }
    }else if ([vc isKindOfClass:[UITabBarController class]]) {
        UITabBarController *navivc =  (UITabBarController *)vc;
        if (navivc.selectedViewController) {
            return [self rootViewControllerOfVC:navivc.selectedViewController];
        }
    }else{
        return vc;
    }
    return nil;
}


+ (UIViewController *)partentViewControllerFromVC:(UIViewController *)fromVC
{
    if ([fromVC.parentViewController isKindOfClass:[UINavigationController class]]) {
        UINavigationController *navi = (UINavigationController *)fromVC.parentViewController;
        if (![fromVC isEqual:navi.viewControllers[0]]) {
            
            if ([navi.viewControllers[0] isKindOfClass:[UINavigationController class]] ||  [navi.viewControllers[0] isKindOfClass:[UITabBarController class]]) {
                return [self rootViewControllerOfVC: navi.viewControllers[0]];
            }else{
                return navi.viewControllers[0];
            }
            
            
        }else{
            return [self partentViewControllerFromVC:navi];
        }
    }else if ([fromVC.parentViewController isKindOfClass:[UITabBarController class]]){
        
        UITabBarController *tabbar = (UITabBarController *)fromVC.parentViewController;
        if ([fromVC isEqual:tabbar.selectedViewController]) {
            return [self partentViewControllerFromVC:tabbar];
        }else{
            
            if ([tabbar.selectedViewController isKindOfClass:[UINavigationController class]] ||  [tabbar.viewControllers[0] isKindOfClass:[UITabBarController class]]) {
                return [self rootViewControllerOfVC:tabbar.selectedViewController];
            }else{
                return tabbar.selectedViewController;
            }
            
            
        }
        
    }else if([fromVC isKindOfClass:[UIViewController class]]){
        return fromVC;
    }
    return nil;
}


+ (UIViewController*)currentViewController{
    
    UIViewController* viewController = [UIApplication sharedApplication].delegate.window.rootViewController;
    return[self findBestViewController:viewController];
    
}
//递归方法
+ (UIViewController*)findBestViewController:(UIViewController*)vc {
    
     if (vc.presentedViewController) {
         return [self findBestViewController:vc.presentedViewController];
         
     }else if ([vc isKindOfClass:[UISplitViewController class]]) {
         // Return right hand side
         UISplitViewController* svc = (UISplitViewController*) vc;
         if (svc.viewControllers.count > 0)
             return [self findBestViewController:svc.viewControllers.lastObject];
         else
             return vc;
         
     }else if ([vc isKindOfClass:[UINavigationController class]]) {
         UINavigationController* svc = (UINavigationController*) vc;
         if (svc.viewControllers.count > 0)
             return [self findBestViewController:svc.topViewController];
         else
             return vc;
         
     }else if ([vc isKindOfClass:[UITabBarController class]]) {
         UITabBarController* svc = (UITabBarController*) vc;
         if (svc.viewControllers.count > 0)
             return [self findBestViewController:svc.selectedViewController];
         else
             return vc;
         
     }else{
         return vc;
         
     }
}

@end
