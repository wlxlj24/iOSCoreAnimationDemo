//
//  ViewController18.m
//  iOSCoreAnimationDemo
//
//  Created by TailC on 16/6/12.
//  Copyright © 2016年 TailC. All rights reserved.
//

#import "ViewController18.h"

@interface ViewController18 ()

@property (nonatomic,readwrite,strong) UIView *layerView;

@end

@implementation ViewController18

- (void)viewDidLoad {
    [super viewDidLoad];
	
	self.layerView = ({
		UIView *var = [UIView new];
		[self.view addSubview:var];
		[var mas_makeConstraints:^(MASConstraintMaker *make) {
			make.center.mas_equalTo(var.superview);
			make.size.mas_equalTo(CGSizeMake(200, 200));
		}];
		var.backgroundColor = [UIColor redColor];
		
		CGAffineTransform transform = CGAffineTransformIdentity;
		transform = CGAffineTransformScale(transform, 0.5, 0.5);
		transform = CGAffineTransformRotate(transform, M_PI/180.0*30.0);
		transform = CGAffineTransformTranslate(transform, 200, 0);
		var.layer.affineTransform = transform;
		
		var;
	});
	
}

@end
