//
//  ViewController32.m
//  iOSCoreAnimationDemo
//
//  Created by TailC on 16/6/20.
//  Copyright © 2016年 TailC. All rights reserved.
//

#import "ViewController32.h"

@interface ViewController32 ()

@property (nonatomic,readwrite,strong) UIView *containView;

@end

@implementation ViewController32

- (void)viewDidLoad {
    [super viewDidLoad];

	self.containView = ({
		UIView *var = [UIView new];
		[self.view addSubview:var];
		var.frame = CGRectMake(0, 0, 300, 300);
		var.center = var.superview.center;
		
		CAGradientLayer *gradientLayer = [CAGradientLayer layer];
		gradientLayer.frame = var.bounds;
		[var.layer addSublayer:gradientLayer];
		
		gradientLayer.colors = @[
								 (__bridge id)[UIColor redColor].CGColor,
								 (__bridge id)[UIColor orangeColor].CGColor,
								 (__bridge id)[UIColor blueColor].CGColor,
								 (__bridge id)[UIColor greenColor].CGColor,
								 ];
		gradientLayer.locations = @[
									@0.0,@0.25,@0.5,@1
									];
		
		gradientLayer.startPoint = CGPointMake(0, 0);
		gradientLayer.endPoint = CGPointMake(1, 1);
		
		var;
	});
	
}


@end
