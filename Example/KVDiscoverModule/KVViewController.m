//
//  KVViewController.m
//  KVDiscoverModule
//
//  Created by MacBook Pro on 05/13/2023.
//  Copyright (c) 2023 MacBook Pro. All rights reserved.
//

#import "KVViewController.h"
#import "KVDiscoverServiceProtocol.h"

@interface KVViewController ()

@end

@implementation KVViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    id<KVDiscoverServiceProtocol> v4 = [[BeeHive shareInstance] createService:@protocol(KVDiscoverServiceProtocol)];
    if ([v4 isKindOfClass:[UIViewController class]]) {
        [self presentViewController:(UIViewController *)v4 animated:YES completion:nil];
    }
}

@end
