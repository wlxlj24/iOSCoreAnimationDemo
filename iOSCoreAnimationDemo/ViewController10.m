//
//  ViewController10.m
//  iOSCoreAnimationDemo
//
//  Created by TailC on 16/6/3.
//  Copyright © 2016年 TailC. All rights reserved.
//

#import "ViewController10.h"

@interface ViewController10 ()

@property (nonatomic,readwrite,strong) UIView *grayView1;
@property (nonatomic,readwrite,strong) UIView *redView1;

@property (nonatomic,readwrite,strong) UIView *grayView2;
@property (nonatomic,readwrite,strong) UIView *redView2;

@end

@implementation ViewController10

- (void)viewDidLoad {
    [super viewDidLoad];

	self.grayView1 = ({
		UIView *var = [UIView new];
		[self.view addSubview:var];
		[var mas_makeConstraints:^(MASConstraintMaker *make) {
			make.size.mas_equalTo(CGSizeMake(200, 200));
			make.centerY.mas_equalTo(var.superview).multipliedBy(1/2.0);
			make.centerX.mas_equalTo(var.superview);
		}];
		var.backgroundColor = [UIColor grayColor];
		var.layer.cornerRadius = 20;
		
		var;
	});
	
	self.redView1 = ({
		UIView *var = [UIView new];
		[self.grayView1 addSubview:var];
		[var mas_makeConstraints:^(MASConstraintMaker *make) {
			make.centerY.mas_equalTo(var.superview.mas_top);
			make.centerX.mas_equalTo(var.superview.mas_left);
			make.size.mas_equalTo(CGSizeMake(100, 100));
		}];
		var.backgroundColor = [UIColor redColor];
		
		var;
	});
	
	self.grayView2 = ({
		UIView *var = [UIView new];
		[self.view addSubview:var];
		[var mas_makeConstraints:^(MASConstraintMaker *make) {
			make.size.mas_equalTo(CGSizeMake(200, 200));
			make.centerY.mas_equalTo(var.superview).multipliedBy(3/2.0);
			make.centerX.mas_equalTo(var.superview);
		}];
		var.backgroundColor = [UIColor grayColor];
		var.layer.cornerRadius = 20;
		var.layer.masksToBounds = YES;
		
		var;
	});
	
	self.redView2 = ({
		UIView *var = [UIView new];
		[self.grayView2 addSubview:var];
		[var mas_makeConstraints:^(MASConstraintMaker *make) {
			make.centerY.mas_equalTo(var.superview.mas_top);
			make.centerX.mas_equalTo(var.superview.mas_left);
			make.size.mas_equalTo(CGSizeMake(100, 100));
		}];
		var.backgroundColor = [UIColor redColor];
		
		var;
	});
	
}


@end
