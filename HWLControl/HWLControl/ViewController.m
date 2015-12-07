//
//  ViewController.m
//  HWLControl
//
//  Created by 侯卫磊 on 15/12/5.
//  Copyright © 2015年 侯卫磊. All rights reserved.
//

#import "ViewController.h"
#import "HWLControl.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UILabel * label = [HWLControl createLabelWithFrame:CGRectMake(0, 0, 100, 200) text:@"123" textAlignment:NSTextAlignmentCenter fontSize:17.0 textColor:[UIColor redColor]];
    [self.view addSubview:label];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
