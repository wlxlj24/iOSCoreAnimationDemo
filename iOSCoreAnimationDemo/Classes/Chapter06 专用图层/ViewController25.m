//
//  ViewController25.m
//  iOSCoreAnimationDemo
//
//  Created by TailC on 16/6/15.
//  Copyright © 2016年 TailC. All rights reserved.
//

#import "ViewController25.h"

@interface ViewController25 ()

@property (nonatomic,readwrite,strong) UIView *containView;

@end

@implementation ViewController25

- (void)viewDidLoad {
    [super viewDidLoad];
	
	self.containView = ({
		UIView *var = [UIView new];
		[self.view addSubview:var];
		[var mas_makeConstraints:^(MASConstraintMaker *make) {
			make.left.mas_equalTo(var.superview.mas_left);
			make.right.mas_equalTo(var.superview.mas_right);
			make.top.mas_equalTo(var.superview.mas_top).mas_offset(100);
			make.bottom.mas_equalTo(var.superview.mas_bottom).mas_offset(-100);
		}];
		var.backgroundColor = [UIColor groupTableViewBackgroundColor];
		
		var;
	});
	
	UIBezierPath *path = [[UIBezierPath alloc] init];
	[path moveToPoint:CGPointMake(175, 100)];
	
	[path addArcWithCenter:CGPointMake(150, 100) radius:25 startAngle:0 endAngle:2*M_PI clockwise:YES];
	[path moveToPoint:CGPointMake(150, 125)];
	[path addLineToPoint:CGPointMake(150, 175)];
	[path addLineToPoint:CGPointMake(125, 225)];
	[path moveToPoint:CGPointMake(150, 175)];
	[path addLineToPoint:CGPointMake(175, 225)];
	[path moveToPoint:CGPointMake(100, 150)];
	[path addLineToPoint:CGPointMake(200, 150)];
	
	CAShapeLayer *shapeLayer = [CAShapeLayer layer];
	shapeLayer.strokeColor = [UIColor redColor].CGColor;
	shapeLayer.fillColor = [UIColor clearColor].CGColor;
	shapeLayer.lineWidth = 5.0f;
	shapeLayer.lineJoin = kCALineJoinRound;
	shapeLayer.lineCap = kCALineCapRound;
	shapeLayer.path = path.CGPath;
	[self.containView.layer addSublayer:shapeLayer];
	

}

@end
