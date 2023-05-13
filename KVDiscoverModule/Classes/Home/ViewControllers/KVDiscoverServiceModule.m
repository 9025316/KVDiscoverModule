//
//  KVDiscoverServiceModule.m
//  KVDiscoverModule
//
//  Created by MacBook Pro on 2023/4/19.
//

#import "KVDiscoverServiceModule.h"
#import "KVDiscoverViewController.h"
#import "KVDiscoverServiceProtocol.h"

//@BeeHiveService(KVDiscoverServiceProtocol,KVDiscoverServiceModule)
//@interface KVDiscoverServiceModule ()<KVDiscoverServiceProtocol>
//
//@end

@interface KVDiscoverServiceModule ()<BHModuleProtocol>

@end

@implementation KVDiscoverServiceModule
//@synthesize itemId = _itemId;

//- (void)pringItemId {
//    
//    NSLog(@"%@",_itemId);
//}

//- (UIViewController *)getDiscoverViewContoller {
//    [self pringItemId];
//    return KVDiscoverViewController.new;
//}


+ (void)load
{
    [BeeHive registerDynamicModule:[self class]];
}

- (id)init{
    if (self = [super init])
    {
        NSLog(@"TradeModule init");
    }
    
    return self;
}



-(void)modInit:(BHContext *)context
{
    NSLog(@"模块初始化中");
    NSLog(@"%@",context.moduleConfigName);
    
    
    id<KVDiscoverServiceProtocol> service = [[BeeHive shareInstance] createService:@protocol(KVDiscoverServiceProtocol)];
    
    service.itemId = @"我是单例";
}


- (void)modSetUp:(BHContext *)context
{
    [[BeeHive shareInstance]  registerService:@protocol(KVDiscoverServiceProtocol) service:[KVDiscoverViewController class]];
    
    NSLog(@"TradeModule setup");

}

- (void)basicModuleLevel
{
    
}

@end
