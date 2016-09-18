//
//  CCButton.m
//  CCButtton
//
//  Created by wsk on 16/9/18.
//  Copyright © 2016年 cyd. All rights reserved.
//

#import "CCButton.h"

@implementation CCButton

+(instancetype)buttonWithType:(UIButtonType)buttonType{
    CCButton *ccButton = [super buttonWithType:buttonType];
    if (ccButton) {
        ccButton.titleLabel.backgroundColor = [UIColor brownColor];
        ccButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        ccButton.imageView.layer.masksToBounds = YES;
//        ccButton.layer.masksToBounds = YES;
    }
    return ccButton;
}

// 返回背景边界（background）
- (CGRect)backgroundRectForBounds:(CGRect)bounds{
    NSLog(@"背景边界:%@",NSStringFromCGRect(bounds));
    return bounds;// 6 7  14
}

// 返回内容边界 标题、图片、标题与图片之间的间隔(title + image + the image and title separately)
- (CGRect)contentRectForBounds:(CGRect)bounds{
    NSLog(@"内容边界:%@",NSStringFromCGRect(bounds));
    return bounds; // 1 3 5 8 10 12 15 17 19
}

// 返回标题边界
- (CGRect)titleRectForContentRect:(CGRect)contentRect{
    NSLog(@"标题边界:%@",NSStringFromCGRect(contentRect));
    return CGRectMake(0, contentRect.size.height-20, contentRect.size.width, 20); // 2 11 18
}

// 返回图片边界
- (CGRect)imageRectForContentRect:(CGRect)contentRect{
    NSLog(@"图片边界:%@",NSStringFromCGRect(contentRect));
    CGFloat imageWidth = MIN(contentRect.size.height - 20, contentRect.size.width);  
    return CGRectMake(contentRect.size.width/2 - imageWidth/2, 0, imageWidth, imageWidth); // 4 9 13 16 20
}

@end
