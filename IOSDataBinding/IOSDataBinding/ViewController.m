//
//  ViewController.m
//  IOSDataBinding
//
//  Created by Jeevan on 03/02/17.
//  Copyright © 2017 com.byjeevan.ios.databinding. All rights reserved.
//

#import "ViewController.h"
#import "RegistrationDto.h"
#import "UITextField+Binding.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *firstName;
@property (weak, nonatomic) IBOutlet UITextField *lastName;
@property (weak, nonatomic) IBOutlet UITextField *emailField;
@property (weak, nonatomic) IBOutlet UITextField *mobileField;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;
@property (weak, nonatomic) IBOutlet UIButton *loginButton;
@property (nonatomic) RegistrationDto *registrationDto;
@end

@implementation ViewController

- (IBAction)loginButtonAction:(id)sender {

    
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.registrationDto = [RegistrationDto new];
    
    [self.firstName bind:self.registrationDto];
      
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
