//
//  ViewController22.m
//  iOSCoreAnimationDemo
//
//  Created by TailC on 16/6/13.
//  Copyright © 2016年 TailC. All rights reserved.
//

#import "ViewController22.h"

@interface ViewController22 ()


@property (nonatomic,readwrite,strong) UIView *innerView;
@property (nonatomic,readwrite,strong) UIView *outerView;

@end

@implementation ViewController22

- (void)viewDidLoad {
    [super viewDidLoad];

	self.outerView = ({
		UIView *var = [UIView new];
		[self.view addSubview:var];
		[var mas_makeConstraints:^(MASConstraintMaker *make) {
			make.center.mas_equalTo(var.superview);
			make.size.mas_equalTo(CGSizeMake(200, 200));
		}];
		var.backgroundColor = [UIColor darkGrayColor];
		
		CATransform3D transform = CATransform3DMakeRotation(M_PI_4, 0, 0, 1);
		var.layer.transform = transform;
		
		var;
	});
	
	self.innerView = ({
		UIView *var = [UIView new];
		[self.outerView addSubview:var];
		[var mas_makeConstraints:^(MASConstraintMaker *make) {
			make.center.mas_equalTo(var.superview);
			make.size.mas_equalTo(CGSizeMake(100, 100));
		}];
		var.backgroundColor = [UIColor redColor];
		
		CATransform3D transform = CATransform3DMakeRotation(-M_PI_4, 0, 0, 1);
		var.layer.transform = transform;
		
		var;
	});
	
}


@end
