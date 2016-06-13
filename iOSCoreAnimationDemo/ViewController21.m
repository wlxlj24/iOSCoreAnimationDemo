//
//  ViewController21.m
//  iOSCoreAnimationDemo
//
//  Created by TailC on 16/6/13.
//  Copyright © 2016年 TailC. All rights reserved.
//

#import "ViewController21.h"

@interface ViewController21 ()

@property (nonatomic,readwrite,strong) UIView *containView;

@end

@implementation ViewController21

- (void)viewDidLoad {
    [super viewDidLoad];

	self.containView = ({
		UIView *var = [UIView new];
		[self.view addSubview:var];
		[var mas_makeConstraints:^(MASConstraintMaker *make) {
			make.edges.mas_equalTo(var.superview).insets(UIEdgeInsetsMake(100, 50, 50, 50));
		}];
		var.backgroundColor = [UIColor darkGrayColor];
		CATransform3D perspective = CATransform3DIdentity;
		perspective.m34 = -1.0 / 500.0;
		var.layer.sublayerTransform = perspective;
		
		UIImageView *leftImageView = [UIImageView new];
		[var addSubview:leftImageView];
		[leftImageView mas_makeConstraints:^(MASConstraintMaker *make) {
			make.centerX.mas_equalTo(leftImageView.superview).multipliedBy(1.0/2.0);
			make.centerY.mas_equalTo(leftImageView.superview);
			make.size.mas_equalTo(CGSizeMake(80, 80));
		}];
		leftImageView.image = [UIImage imageNamed:@"meiyangyang"];
		leftImageView.layer.transform = CATransform3DMakeRotation(M_PI_4, 0, 1, 0);
		
		UIImageView *rightImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"xiaohuihui"]];
		[var addSubview:rightImageView];
		[rightImageView mas_makeConstraints:^(MASConstraintMaker *make) {
			make.centerX.mas_equalTo(rightImageView.superview).multipliedBy(3.0/2.0);
			make.centerY.mas_equalTo(rightImageView.superview);
			make.size.mas_equalTo(CGSizeMake(80, 80));
		}];
		rightImageView.layer.transform = CATransform3DMakeRotation(-M_PI_4, 0, 1, 0);
		
		var;
	});
	
	
}


@end
