//
//  TriangleButton.m
//  TriangleButton
//
//  Created by admin on 2017/8/4.
//  Copyright © 2017年 常丛丛. All rights reserved.
//

#import "TriangleButton.h"

@interface TriangleButton()

@property (strong,nonatomic)CAShapeLayer * shapeLayer;

@end

@implementation TriangleButton

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self setUp];
    }
    return self;
}
-(void)setUp{
    self.shapeLayer = [CAShapeLayer layer];
    CGMutablePathRef path = CGPathCreateMutable();
    CGPathMoveToPoint(path, nil,100, 0);
    CGPathAddLineToPoint(path, nil,100,100);
    CGPathAddLineToPoint(path, nil,0, 100);
    self.shapeLayer.path = path;
    [self.layer setMask:self.shapeLayer];
    self.layer.masksToBounds = true;
    self.backgroundColor = [UIColor yellowColor];
    
    self.userInteractionEnabled=YES;
    UITapGestureRecognizer *tapClick=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapClick_Click)];
    [self addGestureRecognizer:tapClick];
}

-(BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event{
    if (CGPathContainsPoint(self.shapeLayer.path, nil, point, true)) {
        return [super pointInside:point withEvent:event];
    }else{
        return false;
    }
}

-(void)tapClick_Click{
    if (self.buttonClick) {
        self.buttonClick();
    }
}

@end
