//
//  MBCRegisterVC.m
//  MotelShare
//
//  Created by Dao Duy Thuy on 8/21/15.
//  Copyright (c) 2015 Moboco. All rights reserved.
//

#import "MBCRegisterVC.h"

@interface MBCRegisterVC ()
{
    __weak IBOutlet UITextField *tfEmail;
    __weak IBOutlet UITextField *tfAccount;
    __weak IBOutlet UITextField *tfPassword;
    __weak IBOutlet UITextField *tfConfirmPassword;
    
    __weak IBOutlet UIImageView *imvAvatar;
    
    __weak IBOutlet UIButton *btnRegister;
}

@end

@implementation MBCRegisterVC

#pragma mark - View lifecyl
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    [tfEmail setBackgroundColor:[UIColor clearColor]];
    
    [tfAccount setBackgroundColor:[UIColor clearColor]];
    
    [tfPassword setBackgroundColor:[UIColor clearColor]];
    
    [tfConfirmPassword setBackgroundColor:[UIColor clearColor]];
    
    CGFloat width = imvAvatar.width;
    [imvAvatar td_borderWithBorderWidth:1.0 withBoderColor:[UIColor lightGrayColor] withCornerRadius:(width / 2.0f) andWithMasksToBounds:YES];
    
    [btnRegister td_borderWithBorderWidth:1.0 withBoderColor:[UIColor clearColor] withCornerRadius:4.0f];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
    // Dispose of any resources that can be recreated.
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [self td_showNavigationBar:YES];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [tfEmail becomeFirstResponder];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    
    
}

//- (void)dealloc
//{
//    
//}

#pragma mark - IBAction
- (IBAction)clickBtnChooseAvatar:(id)sender
{
    TDLOG(@"");
    
    
}

- (IBAction)clickBtnRegister:(id)sender
{
    TDLOG(@"");
    
    if ( [self validForm] )
    {
        // TODO: register
    }
}

#pragma mark -
- (BOOL)validForm
{
    NSString *email = [tfEmail.text td_removeWhitespace];
    if ( [email td_isEmpty] )
    {
        [UIAlertView showAlertViewWithMessage:@"Email is require" cancelButtonTitle:@"Ok" tapBlock:nil];
        
        [tfEmail becomeFirstResponder];
        
        return NO;
    }
    
    NSString *account = [tfAccount.text td_removeWhitespace];
    if ( [account td_isEmpty] )
    {
        [UIAlertView showAlertViewWithMessage:@"Account is require" cancelButtonTitle:@"Ok" tapBlock:nil];
        
        [tfAccount becomeFirstResponder];
        
        return NO;
    }
    
    NSString *password = [tfPassword.text td_removeWhitespace];
    if ( [password td_isEmpty] )
    {
        [UIAlertView showAlertViewWithMessage:@"Password is require" cancelButtonTitle:@"Ok" tapBlock:nil];
        
        [tfPassword becomeFirstResponder];
        
        return NO;
    }
    
    NSString *confirmPassword = [tfConfirmPassword.text td_removeWhitespace];
    if ( ![confirmPassword td_isEqualString:password] )
    {
        [UIAlertView showAlertViewWithMessage:@"Confirm password isn't correct" cancelButtonTitle:@"Ok" tapBlock:nil];
        
        [tfConfirmPassword becomeFirstResponder];
        
        return NO;
    }
    
    return YES;
}

@end
