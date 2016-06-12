//
//  ViewController12.m
//  iOSCoreAnimationDemo
//
//  Created by TailC on 16/6/12.
//  Copyright © 2016年 TailC. All rights reserved.
//

#import "ViewController12.h"

@interface ViewController12 ()

@property (nonatomic,readwrite,strong) UIView *grayView1;
@property (nonatomic,readwrite,strong) UIView *redView1;

@property (nonatomic,readwrite,strong) UIView *grayView2;
@property (nonatomic,readwrite,strong) UIView *redView2;

@property (nonatomic,readwrite,strong) UIView *shadowView;

@end

@implementation ViewController12

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
		var.layer.borderColor = [UIColor greenColor].CGColor;
		var.layer.borderWidth = 5.0f;
		
		//shadow
		var.layer.shadowRadius = 5.f;
		var.layer.shadowOpacity = 1.0f;
		var.layer.shadowOffset = CGSizeMake(0, 5.0f);
		
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
	
	self.shadowView = ({
		UIView *var = [UIView new];
		[self.view insertSubview:var atIndex:0];
//		[self.grayView2 addSubview:var];
		[var mas_makeConstraints:^(MASConstraintMaker *make) {
			make.height.mas_equalTo(self.grayView2);
			make.width.mas_equalTo(self.grayView2);
			make.centerX.mas_equalTo(self.grayView2);
			make.centerY.mas_equalTo(self.grayView2);
		}];
#warning 必须设置backgroundColor，否则阴影将不显示
		var.backgroundColor = [UIColor grayColor];
		var.layer.cornerRadius = 20;
		
		var.layer.shadowRadius = 5.f;
		var.layer.shadowOpacity = 1.0f;
		var.layer.shadowOffset = CGSizeMake(0, 5.0f);
		
		var;
	});
	
}

@end
