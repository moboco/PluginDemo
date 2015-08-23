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
    
    
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    
    
}

- (void)dealloc
{
    
}

#pragma mark - IBAction
- (IBAction)clickBtnChooseAvatar:(id)sender
{
    TDLOG(@"");
    
    
}

- (IBAction)clickBtnRegister:(id)sender
{
    TDLOG(@"");
    
    
}

@end
