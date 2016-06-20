//
//  ViewController33.m
//  iOSCoreAnimationDemo
//
//  Created by TailC on 16/6/20.
//  Copyright © 2016年 TailC. All rights reserved.
//

#import "ViewController33.h"

@interface ViewController33 ()

@property (nonatomic,readwrite,strong) UIView *containView;

@end

@implementation ViewController33

- (void)viewDidLoad {
    [super viewDidLoad];
	
	self.containView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
	self.containView.center = self.view.center;
	[self.view addSubview:self.containView];
	
	//create a replicator layer and add it to our view
	CAReplicatorLayer *replicator = [CAReplicatorLayer layer];
	replicator.frame = self.containView.bounds;
	[self.containView.layer addSublayer:replicator];
	
	//configure the replicator
	replicator.instanceCount = 10;
	
	//apply a transform for each instance
	CATransform3D transform = CATransform3DIdentity;
	transform = CATransform3DTranslate(transform, 0, 200, 0);
	transform = CATransform3DRotate(transform, M_PI / 5.0, 0, 0, 1);
	transform = CATransform3DTranslate(transform, 0, -200, 0);
	replicator.instanceTransform = transform;
	
	//apply a color shift for each instance
	replicator.instanceBlueOffset = -0.1;
	replicator.instanceGreenOffset = -0.1;
	
	//create a sublayer and place it inside the replicator
	CALayer *layer = [CALayer layer];
	layer.frame = CGRectMake(100.0f, 100.0f, 100.0f, 100.0f);
	layer.backgroundColor = [UIColor whiteColor].CGColor;
	[replicator addSublayer:layer];
	
}


@end
