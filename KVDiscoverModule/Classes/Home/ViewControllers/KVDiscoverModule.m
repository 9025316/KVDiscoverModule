//
//  KVDiscoverModule.m
//  KVDiscoverModule
//
//  Created by MacBook Pro on 2023/4/19.
//

#import "KVDiscoverModule.h"
#import "BHAnnotation.h"

@BeeHiveMod(KVDiscoverModule)
@interface KVDiscoverModule()<BHModuleProtocol>

@end

@implementation KVDiscoverModule

- (id)init{
    if (self = [super init])
    {
        NSLog(@"ShopModule init");
    }
    
    return self;
}

- (NSUInteger)moduleLevel
{
    return 0;
}


- (void)modSetUp:(BHContext *)context
{
    NSLog(@"KVDiscoverModule setup");
}


-(void)modInit:(BHContext *)context
{

//    [[BeeHive shareInstance] registerService:@protocol(UserTrackServiceProtocol) service:[BHUserTrackViewController class]];
}

@end
