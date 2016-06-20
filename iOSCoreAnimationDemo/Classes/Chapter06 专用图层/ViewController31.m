//
//  ViewController31.m
//  iOSCoreAnimationDemo
//
//  Created by TailC on 16/6/20.
//  Copyright © 2016年 TailC. All rights reserved.
//

#import "ViewController31.h"

@interface ViewController31 ()

@property (nonatomic,readwrite,strong) UIView *containView;

@end

@implementation ViewController31

- (void)viewDidLoad {
    [super viewDidLoad];
	
	self.containView = ({
		UIView *var = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];
		[self.view addSubview:var];
		var.center = var.superview.center;
		
		CAGradientLayer *gradientLayer = [CAGradientLayer layer];
		gradientLayer.frame = var.bounds;
		[var.layer addSublayer:gradientLayer];
		
		gradientLayer.colors = @[
								 (__bridge id)[UIColor redColor].CGColor,
								 (__bridge id)[UIColor blueColor].CGColor
								 ];
		
		gradientLayer.startPoint = CGPointMake(0, 0);
		gradientLayer.endPoint = CGPointMake(1, 1);
		
		var;
	});
	
}

@end
