//
//  HWLControl.m
//  HWLControl
//
//  Created by 侯卫磊 on 15/12/5.
//  Copyright © 2015年 侯卫磊. All rights reserved.
//

#import "HWLControl.h"

@implementation HWLControl

+ (UIButton *)createButtonWithFrame:(CGRect)frame
                                tag:(NSInteger)tag
                    backgroundColor:(UIColor *)backgroundColor
                              title:(NSString *)title
                         titleState:(UIControlState)titleState
                             target:(id)target
                           selector:(SEL)selector {
    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = frame;
    button.tag = tag;
    button.backgroundColor = backgroundColor;
    [button setTitle:title forState:titleState];
    [button addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
    return button;
}

@end
