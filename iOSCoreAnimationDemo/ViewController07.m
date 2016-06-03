//
//  ViewController07.m
//  iOSCoreAnimationDemo
//
//  Created by TailC on 16/6/3.
//  Copyright © 2016年 TailC. All rights reserved.
//

#import "ViewController07.h"

@interface ViewController07 ()

@property (nonatomic,readwrite,strong) UIView *greenView;
@property (nonatomic,readwrite,strong) UIView *redView;

@end

@implementation ViewController07

- (void)viewDidLoad {
    [super viewDidLoad];

	self.greenView = ({
		UIView *v = [UIView new];
		[self.view addSubview:v];
		[v mas_makeConstraints:^(MASConstraintMaker *make) {
			make.center.mas_equalTo(v.superview);
			make.size.mas_equalTo(CGSizeMake(100, 100));
		}];
		v.backgroundColor = [UIColor greenColor];
		v.layer.zPosition = 1.0f;
		
		v;
	});
	
	self.redView = ({
		UIView *v = [UIView new];
		[self.view addSubview:v];
		[v mas_makeConstraints:^(MASConstraintMaker *make) {
			make.size.mas_equalTo(CGSizeMake(100, 100));
			make.top.mas_equalTo(self.greenView.mas_centerY);
			make.left.mas_equalTo(self.greenView.mas_centerX);
		}];
		v.backgroundColor = [UIColor redColor];
		
		v;
	});
	
}

@end
