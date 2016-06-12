//
//  ViewController17.m
//  iOSCoreAnimationDemo
//
//  Created by TailC on 16/6/12.
//  Copyright © 2016年 TailC. All rights reserved.
//

#import "ViewController17.h"

@interface ViewController17 ()

@property (nonatomic,readwrite,strong) UIView *layerView;

@end

@implementation ViewController17

- (void)viewDidLoad {
    [super viewDidLoad];
	
	self.layerView = ({
		UIView *var = [UIView new];
		[self.view addSubview:var];
		[var mas_makeConstraints:^(MASConstraintMaker *make) {
			make.size.mas_equalTo(CGSizeMake(200, 200));
			make.center.mas_equalTo(var.superview);
		}];
		var.backgroundColor = [UIColor redColor];
		CGAffineTransform transform = CGAffineTransformMakeRotation(M_PI_4);
		var.layer.affineTransform = transform;
		
		var;
	});
	
}

@end
