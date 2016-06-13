//
//  ViewController19.m
//  iOSCoreAnimationDemo
//
//  Created by TailC on 16/6/12.
//  Copyright © 2016年 TailC. All rights reserved.
//

#import "ViewController19.h"

@interface ViewController19 ()

@property (nonatomic,readwrite,strong) UIImageView *imageView;

@end

@implementation ViewController19

- (void)viewDidLoad {
    [super viewDidLoad];

	self.imageView = ({
		UIImageView *var = [UIImageView new];
		[self.view addSubview:var];
		[var mas_makeConstraints:^(MASConstraintMaker *make) {
			make.center.mas_equalTo(var.superview);
			make.size.mas_equalTo(CGSizeMake(200, 200));
		}];
		var.image = [UIImage imageNamed:@"meiyangyang"];
		var.backgroundColor = [UIColor redColor];
		
		//绕Y轴旋转45°
		CATransform3D tansform = CATransform3DMakeRotation(M_PI_4, 0, 1, 0);
		var.layer.transform = tansform;
		
		var;
	});
	
}

@end
