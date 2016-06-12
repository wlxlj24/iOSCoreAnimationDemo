//
//  ViewController13.m
//  iOSCoreAnimationDemo
//
//  Created by TailC on 16/6/12.
//  Copyright © 2016年 TailC. All rights reserved.
//

#import "ViewController13.h"

@interface ViewController13 ()

@property (nonatomic,readwrite,strong) UIImageView *IV1;
@property (nonatomic,readwrite,strong) UIImageView *IV2;

@end

@implementation ViewController13

- (void)viewDidLoad {
    [super viewDidLoad];

	self.IV1 = ({
		UIImageView *var = [UIImageView new];
		[self.view addSubview:var];
		[var mas_makeConstraints:^(MASConstraintMaker *make) {
			make.size.mas_equalTo(CGSizeMake(200, 200));
			make.centerY.mas_equalTo(var.superview).multipliedBy(2/3.0);
			make.centerX.mas_equalTo(var.superview);
		}];
		var.image = [UIImage imageNamed:@"meiyangyang"];
		
		var.layer.shadowOpacity = 1.0f;
		
		var;
	});
	
	self.IV2 = ({
		UIImageView *var = [UIImageView new];
		[self.view addSubview:var];
		[var mas_makeConstraints:^(MASConstraintMaker *make) {
			make.size.mas_equalTo(CGSizeMake(200, 200));
			make.centerY.mas_equalTo(var.superview).multipliedBy(4/3.0);
			make.centerX.mas_equalTo(var.superview);
		}];
		var.image = [UIImage imageNamed:@"lanyangyang"];
		
		var;
	});
	
}

-(void)viewDidAppear:(BOOL)animated{
	[super viewDidAppear:animated];
	
	//square shadow
	CGMutablePathRef squarePath = CGPathCreateMutable();
	CGPathAddRect(squarePath, NULL, self.IV1.bounds);
	self.IV1.layer.shadowPath = squarePath;
	CGPathRelease(squarePath);
	
	//shadow
	CGMutablePathRef circlePath = CGPathCreateMutable();
	CGPathAddEllipseInRect(circlePath, NULL, self.IV2.bounds);
	self.IV2.layer.shadowPath = circlePath;
	CGPathRelease(circlePath);
	
}


@end
