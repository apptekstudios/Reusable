//
//  ObjCException.h
//  Pods
//
//

#import <Foundation/Foundation.h>

@interface ObjCException : NSObject
+ (BOOL)catch:(void(^)(void))tryBlock error:(__autoreleasing NSError **)error;
@end
