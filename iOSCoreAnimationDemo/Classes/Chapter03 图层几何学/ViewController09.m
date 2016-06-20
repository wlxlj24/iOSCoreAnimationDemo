//
//  ViewController09.m
//  iOSCoreAnimationDemo
//
//  Created by TailC on 16/6/3.
//  Copyright © 2016年 TailC. All rights reserved.
//

#import "ViewController09.h"

@interface ViewController09 ()

@property (nonatomic,readwrite,strong) UIView *layerView;
@property (nonatomic,readwrite,strong) CALayer *blueLayer;

@end

@implementation ViewController09

- (void)viewDidLoad {
    [super viewDidLoad];
	
	self.layerView = ({
		UIView *var = [UIView new];
		[self.view addSubview:var];
		[var mas_makeConstraints:^(MASConstraintMaker *make) {
			make.center.mas_equalTo(var.superview);
			make.size.mas_equalTo(CGSizeMake(200, 200));
		}];
		var.backgroundColor = [UIColor darkGrayColor];
		
		var;
	});
	
	self.blueLayer = ({
		CALayer *var = [CALayer layer];
		[self.layerView.layer addSublayer:var];
		var.frame = CGRectMake(50, 50, 100, 100);
		var.backgroundColor = [UIColor blueColor].CGColor;
		
		var;
	});
	
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
	
	CGPoint point = [[touches anyObject] locationInView:self.view];
	CALayer *layer = [self.layerView.layer hitTest:point];
	
	if (layer == self.blueLayer) {
		NSLog(@"===========");
		NSLog(@"in layer");
		NSLog(@"===========");
	}else{
		NSLog(@"===========");
		NSLog(@"out layer");
		NSLog(@"===========");
	}
	
}


@end
