//
//  ViewController14.m
//  iOSCoreAnimationDemo
//
//  Created by TailC on 16/6/12.
//  Copyright © 2016年 TailC. All rights reserved.
//

#import "ViewController14.h"

@interface ViewController14 ()

@property (nonatomic,readwrite,strong) UIImageView *imageView;

@end

@implementation ViewController14

- (void)viewDidLoad {
    [super viewDidLoad];
	
	self.imageView = ({
		UIImageView *var = [UIImageView new];
		[self.view addSubview:var];
		
#warning 使用autoLayout，需设置mask frame，在viewDidLoad中frame为空
//		[var mas_makeConstraints:^(MASConstraintMaker *make) {
//			make.size.mas_equalTo(CGSizeMake(200, 200));
//			make.center.mas_equalTo(var.superview);
//		}];
		
		var.frame = CGRectMake(0, 0, 200, 200);
		var.center = self.view.center;
		var.image = [UIImage imageNamed:@"topdesk"];
		
		CALayer *maskLayer = [CALayer layer];
		maskLayer.contents = (__bridge id _Nullable)([UIImage imageNamed:@"fenzhen"].CGImage);
		maskLayer.frame = var.bounds;
		
		var.layer.mask = maskLayer;
		
		var;
	});
	
}



@end
