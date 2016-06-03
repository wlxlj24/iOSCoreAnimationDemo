//
//  ViewController08.m
//  iOSCoreAnimationDemo
//
//  Created by TailC on 16/6/3.
//  Copyright © 2016年 TailC. All rights reserved.
//

#import "ViewController08.h"

@interface ViewController08 ()

@property (nonatomic,readwrite,strong) UIView *layerView;
@property (nonatomic,readwrite,strong) CALayer *blueLayer;

@end

@implementation ViewController08

- (void)viewDidLoad {
    [super viewDidLoad];
	

	self.layerView = ({
		UIView *v = [UIView new];
		[self.view addSubview:v];
		[v mas_makeConstraints:^(MASConstraintMaker *make) {
			make.center.mas_equalTo(v.superview);
			make.size.mas_equalTo(CGSizeMake(200, 200));
		}];
		v.backgroundColor = [UIColor darkGrayColor];
		
		v;
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
	point = [self.layerView.layer convertPoint:point toLayer:self.view.layer];
	if ([self.blueLayer containsPoint:point]) {
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
