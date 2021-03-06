//
//  UIBarButtonItem+BCDExtension.m
//  BCDNews
//
//  Created by bigcd on 16/3/7.
//  Copyright © 2016年 bbigcd. All rights reserved.
//

#import "UIBarButtonItem+BCDExtension.h"

@implementation UIBarButtonItem (BCDExtension)
+ (instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    button.size = button.currentBackgroundImage.size;
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[self alloc] initWithCustomView:button];
}
@end
