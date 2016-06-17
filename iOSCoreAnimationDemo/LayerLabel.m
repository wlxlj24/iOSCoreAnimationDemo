//
//  LayerLabel.m
//  iOSCoreAnimationDemo
//
//  Created by TailC on 16/6/17.
//  Copyright © 2016年 TailC. All rights reserved.
//

#import "LayerLabel.h"

@implementation LayerLabel

+(Class)layerClass{
	return [CATextLayer class];
}

-(CATextLayer *)textLayer {
	return (CATextLayer *)self.layer;
}

-(void)setup{
	self.text = self.text;
	self.textColor = self.textColor;
	self.font = self.font;
	
	[self textLayer].alignmentMode = kCAAlignmentJustified;
	
	[self textLayer].wrapped = YES;
	[self.layer display];
}

- (instancetype)initWithFrame:(CGRect)frame
{
	self = [super initWithFrame:frame];
	if (self) {
		[self setup];
	}
	return self;
}

-(void)awakeFromNib{
	[self setup];
}

-(void)setText:(NSString *)text{
	super.text = text;
	[self textLayer].string = text;
}

-(void)setTextColor:(UIColor *)textColor{
	super.textColor = textColor;
	[self textLayer].foregroundColor = textColor.CGColor;
}

-(void)setFont:(UIFont *)font{
	super.font = font;
	
	CFStringRef fontName = (__bridge CFStringRef)(font.fontName);
	CGFontRef fontRef = CGFontCreateWithFontName(fontName);
	[self textLayer].font = fontRef;
	[self textLayer].fontSize = font.pointSize;
	
	CGFontRelease(fontRef);
}



@end
