//
//  UIAlertController+MKBError.m
//  Pods
//
//  Created by Mark Bridges on 17/08/2015.
//
//

#import "UIAlertController+MKBError.h"

@implementation UIAlertController (MKBError)

+ (void)showError:(NSError *)error inViewController:(UIViewController*)viewController
{
    [UIAlertController showError:error withTitle:nil retryBlock:nil cancelBlock:nil inViewController:viewController];
}

+ (void)showError:(NSError *)error retryBlock:(void (^)(void))retryBlock inViewController:(UIViewController*)viewController
{
    [UIAlertController showError:error withTitle:nil retryBlock:retryBlock cancelBlock:nil inViewController:viewController];
}

+ (void)showError:(NSError *)error retryBlock:(void (^)(void))retryBlock cancelBlock:(void (^)(void))cancelBlock inViewController:(UIViewController*)viewController
{
    [UIAlertController showError:error withTitle:nil retryBlock:retryBlock cancelBlock:cancelBlock inViewController:viewController];
}

+ (void)showError:(NSError *)error withTitle:(NSString*)title retryBlock:(void (^)(void))retryBlock cancelBlock:(void (^)(void))cancelBlock inViewController:(UIViewController*)viewController
{
    if (error == nil)
    {
        return;
    }
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:(title) ? : @"Error"
                                                                             message:error.localizedDescription
                                                                      preferredStyle:UIAlertControllerStyleAlert];
    
    [alertController addAction:[UIAlertAction actionWithTitle:@"OK"
                                                        style:UIAlertActionStyleCancel
                                                      handler:^(UIAlertAction *action) {
                                                          if (cancelBlock)
                                                          {
                                                              cancelBlock();
                                                          }
                                                      }]];
    if (retryBlock)
    {
        [alertController addAction:[UIAlertAction actionWithTitle:@"Retry"
                                                            style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction *action) {
                                                              retryBlock();
                                                          }]];
    }
    
    [viewController presentViewController:alertController animated:YES completion:nil];
}

@end
