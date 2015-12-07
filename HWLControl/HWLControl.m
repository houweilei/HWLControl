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

+ (UILabel *)createLabelWithFrame:(CGRect)frame
                             text:(NSString *)text
                    textAlignment:(NSTextAlignment)textAlignment
                         fontSize:(CGFloat)fontSize
                        textColor:(UIColor *)textColor
                  backgroundColor:(UIColor *)backgroundColor {
    UILabel * label = [[UILabel alloc] initWithFrame:frame];
    label.text = text;
    label.textAlignment = textAlignment;
    label.font = [UIFont systemFontOfSize:fontSize];
    label.textColor = textColor;
    label.backgroundColor = backgroundColor;
    return label;
}













@end
