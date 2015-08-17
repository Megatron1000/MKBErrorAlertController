//
//  UIAlertController+MKBError.h
//  Pods
//
//  Created by Mark Bridges on 17/08/2015.
//
//

#import <UIKit/UIKit.h>

@interface UIAlertController (MKBError)

+ (void)showError:(NSError *)error inViewController:(UIViewController*)viewController;

+ (void)showError:(NSError *)error retryBlock:(void (^)(void))retryBlock inViewController:(UIViewController*)viewController;

+ (void)showError:(NSError *)error retryBlock:(void (^)(void))retryBlock cancelBlock:(void (^)(void))cancelBlock inViewController:(UIViewController*)viewController;

+ (void)showError:(NSError *)error withTitle:(NSString*)title retryBlock:(void (^)(void))retryBlock cancelBlock:(void (^)(void))cancelBlock inViewController:(UIViewController*)viewController;

@end
