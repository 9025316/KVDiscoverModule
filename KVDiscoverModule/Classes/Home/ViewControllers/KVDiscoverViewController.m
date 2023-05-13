//
//  KVDiscoverViewController.m
//  KVDiscoverModule
//
//  Created by MacBook Pro on 2023/4/6.
//

#import "KVDiscoverViewController.h"
#import "KVDiscoverServiceProtocol.h"
#import "BeeHive.h"

@BeeHiveService(KVDiscoverServiceProtocol,KVDiscoverViewController)
@interface KVDiscoverViewController ()<KVDiscoverServiceProtocol>

@end

@implementation KVDiscoverViewController
@synthesize itemId;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.backgroundColor = UIColor.systemPinkColor;
    imageView.frame = CGRectMake(0, 60, self.view.frame.size.width, 300);
    [self.view addSubview:imageView];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
