//
//  ViewController16.m
//  iOSCoreAnimationDemo
//
//  Created by TailC on 16/6/12.
//  Copyright © 2016年 TailC. All rights reserved.
//

#import "ViewController16.h"

@interface ViewController16 ()


@property (nonatomic,readwrite,strong) UIView *containView1;
@property (nonatomic,readwrite,strong) UIView *containView2;
@property (nonatomic,readwrite,strong) UIButton *customBtn1;
@property (nonatomic,readwrite,strong) UIButton *customBtn2;

@end

@implementation ViewController16

- (void)viewDidLoad {
    [super viewDidLoad];
	
	self.containView1 = ({
		UIView *var = [UIView new];
		[self.view addSubview:var];
		[var mas_makeConstraints:^(MASConstraintMaker *make) {
			make.size.mas_equalTo(CGSizeMake(200, 100));
			make.center.mas_equalTo(var.superview);
		}];
		var.backgroundColor = [UIColor greenColor];
		
		var;
	});
	
	self.containView2 = ({
		UIView *var = [UIView new];
		[self.view addSubview:var];
		[var mas_makeConstraints:^(MASConstraintMaker *make) {
			make.size.mas_equalTo(CGSizeMake(200, 100));
			make.top.mas_equalTo(self.containView1.mas_bottom).offset(100);
			make.centerX.mas_equalTo(var.superview);
		}];
		var.backgroundColor = [UIColor greenColor];
		var.layer.shouldRasterize = YES;
		var.layer.rasterizationScale = [UIScreen mainScreen].scale;
		
		var;
	});

	self.customBtn1 = ({
		UIButton *var = [UIButton new];
		[self.containView1 addSubview:var];
		[var mas_makeConstraints:^(MASConstraintMaker *make) {
			make.size.mas_equalTo(CGSizeMake(150, 50));
			make.center.mas_equalTo(var.superview);
		}];
		var.backgroundColor = [UIColor orangeColor];
		var.layer.cornerRadius = 10;
		var.alpha = 0.5;
		
		UILabel *lbl = [UILabel new];
		[var addSubview:lbl];
		[lbl mas_makeConstraints:^(MASConstraintMaker *make) {
			make.size.mas_equalTo(CGSizeMake(110, 30));
			make.center.mas_equalTo(lbl.superview);
		}];
		lbl.text = @"hello world";
		lbl.textAlignment = NSTextAlignmentCenter;
		
		var;
	});
	
	self.customBtn2 = ({
		UIButton *var = [UIButton new];
		[self.containView2 addSubview:var];
		[var mas_makeConstraints:^(MASConstraintMaker *make) {
			make.size.mas_equalTo(CGSizeMake(150, 50));
			make.center.mas_equalTo(var.superview);
		}];
		var.backgroundColor = [UIColor orangeColor];
		var.layer.cornerRadius = 10;
		var.alpha = 0.5;
		
		UILabel *lbl = [UILabel new];
		[var addSubview:lbl];
		[lbl mas_makeConstraints:^(MASConstraintMaker *make) {
			make.size.mas_equalTo(CGSizeMake(110, 30));
			make.center.mas_equalTo(lbl.superview);
		}];
		lbl.text = @"hello worldd";
		lbl.textAlignment = NSTextAlignmentCenter;
		
		var;
	});
	
}


@end
