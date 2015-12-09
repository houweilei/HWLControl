//
//  HWLHelper.m
//  HWLControl
//
//  Created by 侯卫磊 on 15/12/9.
//  Copyright © 2015年 侯卫磊. All rights reserved.
//

#import "HWLHelper.h"

@implementation HWLHelper

+ (CGFloat)textHeightFromString:(NSString *)string width:(CGFloat)width fontSize:(CGFloat)size {
    
    if ([HWLHelper currentSystemVersion] >= 7.0) {
        NSDictionary * dict = @{NSFontAttributeName:[UIFont systemFontOfSize:size]};
        CGRect rect = [string boundingRectWithSize:CGSizeMake(width, MAXFLOAT) options:NSStringDrawingTruncatesLastVisibleLine|NSStringDrawingUsesFontLeading|NSStringDrawingUsesLineFragmentOrigin attributes:dict context:nil];
        return rect.size.height;
    }else{
        // ios7.0之前
        CGSize textSize = [string sizeWithFont:[UIFont systemFontOfSize:size] constrainedToSize:CGSizeMake(width, MAXFLOAT) lineBreakMode:NSLineBreakByCharWrapping];
        return textSize.height;
    }
}

+ (double)currentSystemVersion {
    return [[[UIDevice currentDevice] systemVersion] doubleValue];
}

@end
