//
//  ViewController26.m
//  iOSCoreAnimationDemo
//
//  Created by TailC on 16/6/17.
//  Copyright © 2016年 TailC. All rights reserved.
//

#import "ViewController26.h"

@interface ViewController26 ()

@property (nonatomic,readwrite,strong) UIView *rectView;

@end

@implementation ViewController26

- (void)viewDidLoad {
    [super viewDidLoad];

	self.rectView = ({
		UIView *var = [UIView new];
		[self.view addSubview:var];
		var.frame = CGRectMake(100, 100, 200, 200);
		var.backgroundColor = [UIColor redColor];
		
		CGRect rect = CGRectMake(0, 0, 200, 200);
		CGSize radii = CGSizeMake(20, 20);
		UIRectCorner corners = UIRectCornerTopLeft | UIRectCornerTopRight | UIRectCornerBottomLeft;
		UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:rect byRoundingCorners:corners cornerRadii:radii];
		
		CAShapeLayer *shapeLayer = [CAShapeLayer layer];
		shapeLayer.path = path.CGPath;
		shapeLayer.backgroundColor = [UIColor clearColor].CGColor;
		
		var.layer.mask = shapeLayer;
		
		var;
	});
	
	
	
}


@end
