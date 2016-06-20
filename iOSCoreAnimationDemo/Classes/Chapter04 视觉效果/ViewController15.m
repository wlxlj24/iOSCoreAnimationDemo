//
//  ViewController15.m
//  iOSCoreAnimationDemo
//
//  Created by TailC on 16/6/12.
//  Copyright © 2016年 TailC. All rights reserved.
//

#import "ViewController15.h"

@interface ViewController15 ()

/** 时  */
@property (nonatomic,readwrite,strong) UIView *hourView;
@property (nonatomic,readwrite,strong) UIView *hourView1;
@property (nonatomic,readwrite,strong) UIView *hourView2;
/** 分  */
@property (nonatomic,readwrite,strong) UIView *miniteView;
@property (nonatomic,readwrite,strong) UIView *miniteView1;
@property (nonatomic,readwrite,strong) UIView *miniteView2;
/** 秒  */
@property (nonatomic,readwrite,strong) UIView *secondView;
@property (nonatomic,readwrite,strong) UIView *secondView1;
@property (nonatomic,readwrite,strong) UIView *secondView2;

@property (nonatomic,readwrite,strong) NSTimer *timer;

@end

@implementation ViewController15

- (void)viewDidLoad {
    [super viewDidLoad];
	
	[self setupView];

}

-(void)viewDidAppear:(BOOL)animated{
	[super viewDidAppear:animated];
	
//	[self setView:self.hourView1];
//	[self setView:self.hourView2];
//	[self setView:self.miniteView1];
//	[self setView:self.miniteView2];
//	[self setView:self.secondView1];
//	[self setView:self.secondView2];
	
	//	self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(tick) userInfo:nil repeats:YES];
	
	//	[self tick];
}


-(void)setView:(UIView *)view{
	view.layer.contentsRect = CGRectMake(0, 0, 0.1, 1.0);
	view.layer.contentsGravity = kCAGravityResizeAspect;
	view.layer.magnificationFilter = kCAFilterNearest;
}

-(void)tick{
	
	NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
	NSUInteger units = NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit;
	NSDateComponents *components = [calendar components:units fromDate:[NSDate date]];
	
	// set hour
	[self setDigit:components.hour/10 forView:self.hourView1];
	[self setDigit:components.hour%10 forView:self.hourView2];
	
	// set minite
	[self setDigit:components.minute/10 forView:self.miniteView1];
	[self setDigit:components.minute%10 forView:self.miniteView2];
	
	// set seconds
	[self setDigit:components.second/10 forView:self.secondView1];
	[self setDigit:components.second%10 forView:self.secondView2];
	
}

-(void)setDigit:(NSInteger)digit forView:(UIView *)view{
	view.layer.contentsRect = CGRectMake(digit * 0.1, 0, 0.1, 1.0);
}


-(void)setupView{
	self.view.backgroundColor = [UIColor groupTableViewBackgroundColor];
	
	self.miniteView = ({
		UIView *var = [UIView new];
		[self.view addSubview:var];
		[var mas_makeConstraints:^(MASConstraintMaker *make) {
			make.size.mas_equalTo(CGSizeMake(100, 100));
			make.center.mas_equalTo(self.view);
		}];
		var.backgroundColor = [UIColor redColor];
		
		var;
	});
	
	self.hourView = ({
		UIView *var = [UIView new];
		[self.view addSubview:var];
		[var mas_makeConstraints:^(MASConstraintMaker *make) {
			make.size.mas_equalTo(CGSizeMake(100, 100));
			make.right.mas_equalTo(self.miniteView.mas_left);
			make.centerY.mas_equalTo(self.miniteView);
		}];
		var.backgroundColor = [UIColor greenColor];
		
		var;
	});
	
	self.secondView = ({
		UIView *var = [UIView new];
		[self.view addSubview:var];
		[var mas_makeConstraints:^(MASConstraintMaker *make) {
			make.size.mas_equalTo(CGSizeMake(100, 100));
			make.left.mas_equalTo(self.miniteView.mas_right);
			make.centerY.mas_equalTo(self.miniteView);
		}];
		var.backgroundColor = [UIColor orangeColor];
		
		var;
	});
	
	self.hourView1 = ({
		UIView *var = [UIView new];
		[self.hourView addSubview:var];
		[var mas_makeConstraints:^(MASConstraintMaker *make) {
			make.left.mas_equalTo(var.superview.mas_left);
			make.top.mas_equalTo(var.superview.mas_top);
			make.bottom.mas_equalTo(var.superview.mas_bottom);
			make.height.mas_equalTo(var.superview.mas_height);
			make.width.mas_equalTo(var.superview.mas_width).multipliedBy(1.0/2);
		}];
		var.backgroundColor = [UIColor darkGrayColor];
		
		var;
	});
	
	self.hourView2 = ({
		UIView *var = [UIView new];
		[self.hourView addSubview:var];
		[var mas_makeConstraints:^(MASConstraintMaker *make) {
			make.right.mas_equalTo(var.superview.mas_right);
			make.top.mas_equalTo(var.superview.mas_top);
			make.bottom.mas_equalTo(var.superview.mas_bottom);
			make.height.mas_equalTo(var.superview.mas_height);
			make.width.mas_equalTo(var.superview.mas_width).multipliedBy(1.0/2);
		}];
		var.backgroundColor = [UIColor darkGrayColor];
		
		var;
	});
	
	self.miniteView1 = ({
		UIView *var = [UIView new];
		[self.miniteView addSubview:var];
		[var mas_makeConstraints:^(MASConstraintMaker *make) {
			make.left.mas_equalTo(var.superview.mas_left);
			make.top.mas_equalTo(var.superview.mas_top);
			make.bottom.mas_equalTo(var.superview.mas_bottom);
			make.height.mas_equalTo(var.superview.mas_height);
			make.width.mas_equalTo(var.superview.mas_width).multipliedBy(1.0/2);
		}];
		var.backgroundColor = [UIColor darkGrayColor];
		
		var;
	});
	
	self.miniteView2 = ({
		UIView *var = [UIView new];
		[self.miniteView addSubview:var];
		[var mas_makeConstraints:^(MASConstraintMaker *make) {
			make.right.mas_equalTo(var.superview.mas_right);
			make.top.mas_equalTo(var.superview.mas_top);
			make.bottom.mas_equalTo(var.superview.mas_bottom);
			make.height.mas_equalTo(var.superview.mas_height);
			make.width.mas_equalTo(var.superview.mas_width).multipliedBy(1.0/2);
		}];
		var.backgroundColor = [UIColor darkGrayColor];
		
		var;
	});
	
	self.secondView1 = ({
		UIView *var = [UIView new];
		[self.secondView addSubview:var];
		[var mas_makeConstraints:^(MASConstraintMaker *make) {
			make.left.mas_equalTo(var.superview.mas_left);
			make.top.mas_equalTo(var.superview.mas_top);
			make.bottom.mas_equalTo(var.superview.mas_bottom);
			make.height.mas_equalTo(var.superview.mas_height);
			make.width.mas_equalTo(var.superview.mas_width).multipliedBy(1.0/2);
		}];
		var.backgroundColor = [UIColor darkGrayColor];
		
		var;
	});
	
	self.secondView2 = ({
		UIView *var = [UIView new];
		[self.secondView addSubview:var];
		[var mas_makeConstraints:^(MASConstraintMaker *make) {
			make.right.mas_equalTo(var.superview.mas_right);
			make.top.mas_equalTo(var.superview.mas_top);
			make.bottom.mas_equalTo(var.superview.mas_bottom);
			make.height.mas_equalTo(var.superview.mas_height);
			make.width.mas_equalTo(var.superview.mas_width).multipliedBy(1.0/2);
		}];
		var.backgroundColor = [UIColor darkGrayColor];
		
		var;
	});
}

@end
