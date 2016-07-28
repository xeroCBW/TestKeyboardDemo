//
//  ViewController.m
//  TestKeyboardDemo
//
//  Created by 陈博文 on 16/7/28.
//  Copyright © 2016年 陈博文. All rights reserved.
//

#import "ViewController.h"

#import <MMNumberKeyboard.h>
#import <VENCalculatorInputView.h>

@interface ViewController ()<MMNumberKeyboardDelegate,UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    //InputAccessoryView
    UIView *accessoryView = [[UIView alloc]init];
    accessoryView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 100);
    accessoryView.backgroundColor = [UIColor redColor];
    self.textField.inputAccessoryView = accessoryView;
    
    //InputView
    MMNumberKeyboard *keyBoard = [[MMNumberKeyboard alloc]init];
    keyBoard.delegate = self;
    self.textField.inputView = keyBoard;
    self.textField.delegate = self;
    
 
    
}

#pragma mark - private
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [self.textField endEditing:YES];
    
//    [self resignFirstResponder];
}

#pragma mark - MMNumberKeyboardDelegate
/**
 * 自定义键盘实现的输入和返回的代理
 */
- (BOOL)numberKeyboardShouldReturn:(MMNumberKeyboard *)numberKeyboard{
    
    return YES;
}

- (BOOL)numberKeyboard:(MMNumberKeyboard *)numberKeyboard shouldInsertText:(NSString *)text
{
    const NSInteger maximumLength = 10;
    
    return (self.textField.text.length + text.length <= maximumLength);
}

#pragma mark - 以下两个是自定义键盘需要实现的两个代理
/**
 * 自定义键盘实现的输入和返回的代理
 */
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    NSLog(@"%s",__func__);
    return YES;
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    NSLog(@"%s",__func__);
    return YES;
}

#pragma mark - UITextFieldDeleagte
/**
 *  键盘开始
 */
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    
    NSLog(@"%s",__func__);
    return YES;
    
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    
     NSLog(@"%s",__func__);
 }

/**
 *  键盘结束
 */
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    
     NSLog(@"%s",__func__);
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
     NSLog(@"%s",__func__);
}


/**
 *  监听清除按钮是否清除
 */
- (BOOL)textFieldShouldClear:(UITextField *)textField{
     NSLog(@"%s",__func__);
    return YES;
}

@end
