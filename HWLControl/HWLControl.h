//
//  HWLControl.h
//  HWLControl
//
//  Created by 侯卫磊 on 15/12/5.
//  Copyright © 2015年 侯卫磊. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface HWLControl : NSObject
+ (UIButton *)createButtonWithFrame:(CGRect)frame
                                tag:(NSInteger)tag
                    backgroundColor:(UIColor *)backgroundColor
                              title:(NSString *)title
                         titleState:(UIControlState)titleState
                             target:(id)target
                           selector:(SEL)selector;
    
+ (UILabel *)createLabelWithFrame:(CGRect)frame
                             text:(NSString *)text
                    textAlignment:(NSTextAlignment)textAlignment
                         fontSize:(CGFloat)fontSize
                        textColor:(UIColor *)textColor;
    
@end
