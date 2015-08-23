//
//  MBCForGotVC.m
//  MotelShare
//
//  Created by Dao Duy Thuy on 8/21/15.
//  Copyright (c) 2015 Moboco. All rights reserved.
//

#import "MBCForGotVC.h"

@interface MBCForGotVC ()
{
    __weak IBOutlet UILabel *lbTitle;
    __weak IBOutlet UITextField *tfEmailOrPhone;
    __weak IBOutlet UIButton *btnContinue;
}

@end

@implementation MBCForGotVC

#pragma mark - View lifecyl
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    [lbTitle setBackgroundColor:[UIColor clearColor]];
    
    [tfEmailOrPhone setBackgroundColor:[UIColor clearColor]];
    
    [btnContinue td_borderWithBorderWidth:1.0 withBoderColor:[UIColor clearColor] withCornerRadius:4.0f];
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
- (IBAction)clickBtnContinue:(id)sender
{
    TDLOG(@"");
    
    
}

@end
