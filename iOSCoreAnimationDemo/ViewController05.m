//
//  ViewController05.m
//  iOSCoreAnimationDemo
//
//  Created by TailC on 16/6/1.
//  Copyright © 2016年 TailC. All rights reserved.
//

#import "ViewController05.h"
#import "Masonry.h"


@interface ViewController05 ()

@property (nonatomic,readwrite,strong) UIView *layerView;
@property (nonatomic,readwrite,strong) CALayer *blueLayer;

@end

@implementation ViewController05

- (void)viewDidLoad {
    [super viewDidLoad];
	
	self.layerView = ({
		UIView *view = [UIView new];
		[self.view addSubview:view];
		[view mas_makeConstraints:^(MASConstraintMaker *make) {
			make.size.mas_equalTo(CGSizeMake(200, 200));
			make.center.mas_equalTo(view.superview);
		}];
		view.backgroundColor = [UIColor redColor];
		
		view;
	});
	
	self.blueLayer = ({
		CALayer *layer = [CALayer layer];
		[self.layerView.layer addSublayer:layer];
		
		layer;
	});
	
}

@end
