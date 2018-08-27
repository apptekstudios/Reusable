//
//  ObjCException.m
//  Pods
//
//

#import "ObjCException.h"

@implementation ObjCException
+ (BOOL)catch:(void(^)(void))tryBlock error:(__autoreleasing NSError **)error {
    @try {
        tryBlock();
        return YES;
    }
    @catch (NSException *exception) {
        *error = [[NSError alloc] initWithDomain:exception.name code:0 userInfo:exception.userInfo];
        return NO;
    }
}
@end
