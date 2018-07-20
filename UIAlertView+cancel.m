
#import "UIAlertView+cancel.h"
#import <objc/runtime.h>

@implementation UIAlertView (cancel)

+ (void)load
{
    Method method = class_getInstanceMethod(self, @selector(show));
    Method newMethod = class_getInstanceMethod(self, @selector(newShow));
    method_exchangeImplementations(method, newMethod);
}

- (void)newShow
{
}

@end
