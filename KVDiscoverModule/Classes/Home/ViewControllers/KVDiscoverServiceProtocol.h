//
//  KVDiscoverServiceProtocol.h
//  KVDiscoverModule
//
//  Created by MacBook Pro on 2023/4/19.
//

#import <Foundation/Foundation.h>
#import "BHServiceProtocol.h"


NS_ASSUME_NONNULL_BEGIN

@protocol KVDiscoverServiceProtocol <NSObject,BHServiceProtocol>

@property (nonatomic, strong) NSString *itemId;

//- (UIViewController *)getDiscoverViewContoller;

@end

NS_ASSUME_NONNULL_END
