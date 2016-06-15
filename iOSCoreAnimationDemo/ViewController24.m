//
//  ViewController24.m
//  iOSCoreAnimationDemo
//
//  Created by TailC on 16/6/13.
//  Copyright © 2016年 TailC. All rights reserved.
//

#import "ViewController24.h"

@interface ViewController24 ()

@property (nonatomic,readwrite,strong) UIView *containView;

@property (nonatomic,readwrite,strong) UIView *squareView1;
@property (nonatomic,readwrite,strong) UIView *squareView2;
@property (nonatomic,readwrite,strong) UIView *squareView3;
@property (nonatomic,readwrite,strong) UIView *squareView4;
@property (nonatomic,readwrite,strong) UIView *squareView5;
@property (nonatomic,readwrite,strong) UIView *squareView6;

@end

@implementation ViewController24

- (void)viewDidLoad {
    [super viewDidLoad];
	
	self.containView = ({
		UIView *var = [UIView new];
		[self.view addSubview:var];
		[var mas_makeConstraints:^(MASConstraintMaker *make) {
			make.center.mas_equalTo(var.superview);
			make.size.mas_equalTo(CGSizeMake(200, 200));
		}];
		var.backgroundColor = [UIColor groupTableViewBackgroundColor];
		
		var;
	});
	
	
	self.squareView1 = ({
		UIView *var = [UIView new];
		[self.containView addSubview:var];
		[var mas_makeConstraints:^(MASConstraintMaker *make) {
			make.center.mas_equalTo(var.superview);
			make.size.mas_equalTo(CGSizeMake(200, 200));
		}];
		var.backgroundColor = [UIColor groupTableViewBackgroundColor];
		
		UILabel *lbl = [UILabel new];
		[var addSubview:lbl];
		[lbl mas_makeConstraints:^(MASConstraintMaker *make) {
			make.center.mas_equalTo(lbl.superview);
		}];
		lbl.font = [UIFont systemFontOfSize:32.0f];
		lbl.textAlignment = NSTextAlignmentCenter;
		lbl.textColor = [UIColor redColor];
		lbl.text = @"1";
		
		var;
	});
	
	self.squareView2 = ({
		UIView *var = [UIView new];
		[self.containView addSubview:var];
		[var mas_makeConstraints:^(MASConstraintMaker *make) {
			make.center.mas_equalTo(var.superview);
			make.size.mas_equalTo(CGSizeMake(200, 200));
		}];
		var.backgroundColor = [UIColor groupTableViewBackgroundColor];
		
		UILabel *lbl = [UILabel new];
		[var addSubview:lbl];
		[lbl mas_makeConstraints:^(MASConstraintMaker *make) {
			make.center.mas_equalTo(lbl.superview);
		}];
		lbl.font = [UIFont systemFontOfSize:32.0f];
		lbl.textAlignment = NSTextAlignmentCenter;
		lbl.textColor = [UIColor redColor];
		lbl.text = @"2";
		
		var;
	});
	
	self.squareView3 = ({
		UIView *var = [UIView new];
		[self.containView addSubview:var];
		[var mas_makeConstraints:^(MASConstraintMaker *make) {
			make.center.mas_equalTo(var.superview);
			make.size.mas_equalTo(CGSizeMake(200, 200));
		}];
		var.backgroundColor = [UIColor groupTableViewBackgroundColor];
		
		UILabel *lbl = [UILabel new];
		[var addSubview:lbl];
		[lbl mas_makeConstraints:^(MASConstraintMaker *make) {
			make.center.mas_equalTo(lbl.superview);
		}];
		lbl.font = [UIFont systemFontOfSize:32.0f];
		lbl.textAlignment = NSTextAlignmentCenter;
		lbl.textColor = [UIColor redColor];
		lbl.text = @"3";
		
		var;
	});
	
	self.squareView4 = ({
		UIView *var = [UIView new];
		[self.containView addSubview:var];
		[var mas_makeConstraints:^(MASConstraintMaker *make) {
			make.center.mas_equalTo(var.superview);
			make.size.mas_equalTo(CGSizeMake(200, 200));
		}];
		var.backgroundColor = [UIColor groupTableViewBackgroundColor];
		
		UILabel *lbl = [UILabel new];
		[var addSubview:lbl];
		[lbl mas_makeConstraints:^(MASConstraintMaker *make) {
			make.center.mas_equalTo(lbl.superview);
		}];
		lbl.font = [UIFont systemFontOfSize:32.0f];
		lbl.textAlignment = NSTextAlignmentCenter;
		lbl.textColor = [UIColor redColor];
		lbl.text = @"4";
		
		var;
	});
	
	self.squareView5 = ({
		UIView *var = [UIView new];
		[self.containView addSubview:var];
		[var mas_makeConstraints:^(MASConstraintMaker *make) {
			make.center.mas_equalTo(var.superview);
			make.size.mas_equalTo(CGSizeMake(200, 200));
		}];
		var.backgroundColor = [UIColor groupTableViewBackgroundColor];
		
		UILabel *lbl = [UILabel new];
		[var addSubview:lbl];
		[lbl mas_makeConstraints:^(MASConstraintMaker *make) {
			make.center.mas_equalTo(lbl.superview);
		}];
		lbl.font = [UIFont systemFontOfSize:32.0f];
		lbl.textAlignment = NSTextAlignmentCenter;
		lbl.textColor = [UIColor redColor];
		lbl.text = @"5";
		
		var;
	});
	
	self.squareView6 = ({
		UIView *var = [UIView new];
		[self.containView addSubview:var];
		[var mas_makeConstraints:^(MASConstraintMaker *make) {
			make.center.mas_equalTo(var.superview);
			make.size.mas_equalTo(CGSizeMake(200, 200));
		}];
		var.backgroundColor = [UIColor groupTableViewBackgroundColor];
		
		UILabel *lbl = [UILabel new];
		[var addSubview:lbl];
		[lbl mas_makeConstraints:^(MASConstraintMaker *make) {
			make.center.mas_equalTo(lbl.superview);
		}];
		lbl.font = [UIFont systemFontOfSize:32.0f];
		lbl.textAlignment = NSTextAlignmentCenter;
		lbl.textColor = [UIColor redColor];
		lbl.text = @"6";
		
		var;
	});
	
	
	
}

-(void)viewDidAppear:(BOOL)animated{
	[super viewDidAppear:animated];
	
	CATransform3D perspective = CATransform3DIdentity;
	perspective.m34 = -1.0/500.0;
	self.containView.layer.sublayerTransform = perspective;
	
	CATransform3D transform = CATransform3DMakeScale(0, 0, 100);
	[self addFace:self.squareView1 withTransform:transform];
	
	transform = CATransform3DMakeTranslation(100, 0, 0);
	transform = CATransform3DRotate(transform, M_PI_2, 0, 1, 0);
	[self addFace:self.squareView2 withTransform:transform];
	//add cube face 3
	transform = CATransform3DMakeTranslation(0, -100, 0);
	transform = CATransform3DRotate(transform, M_PI_2, 1, 0, 0);
	[self addFace:self.squareView3 withTransform:transform];
	//add cube face 4
	transform = CATransform3DMakeTranslation(0, 100, 0);
	transform = CATransform3DRotate(transform, -M_PI_2, 1, 0, 0);
	[self addFace:self.squareView4 withTransform:transform];
	//add cube face 5
	transform = CATransform3DMakeTranslation(-100, 0, 0);
	transform = CATransform3DRotate(transform, -M_PI_2, 0, 1, 0);
	[self addFace:self.squareView5 withTransform:transform];
	//add cube face 6
	transform = CATransform3DMakeTranslation(0, 0, -100);
	transform = CATransform3DRotate(transform, M_PI, 0, 1, 0);
	[self addFace:self.squareView6 withTransform:transform];
	
	perspective = CATransform3DRotate(perspective, -M_PI_4, 1, 0, 0);
	perspective = CATransform3DRotate(perspective, -M_PI_4, 0, 1, 0);
	self.containView.layer.transform = perspective;
	
}

-(void)addFace:(UIView *)view withTransform:(CATransform3D)transform{
	
	[self.containView addSubview:view];
	CGSize containSize = self.containView.bounds.size;
	view.center = CGPointMake(containSize.width / 2.0, containSize.height / 2.0);
	view.layer.transform = transform;
	
}


@end
