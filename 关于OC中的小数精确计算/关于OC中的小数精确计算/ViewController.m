//
//  ViewController.m
//  关于OC中的小数精确计算
//
//  Created by liuqiang on 16/3/29.
//  Copyright © 2016年 liuqiang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString * a = @"0.002";
    NSString * b = @"666";
    NSString * result = [self decimalNumberMutiplyWithString:a multiplicandValue:b];
    NSLog(@"%@",result);
}

-(NSString*)decimalNumberMutiplyWithString:(NSString*)multiplierValue multiplicandValue:(NSString*)multiplicandValue
{
    NSDecimalNumber *multiplierNumber = [NSDecimalNumber decimalNumberWithString:multiplierValue];
    NSDecimalNumber *multiplicandNumber = [NSDecimalNumber decimalNumberWithString:multiplicandValue];
    NSDecimalNumber *product = [multiplicandNumber decimalNumberByMultiplyingBy:multiplierNumber];
    return [product stringValue];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
