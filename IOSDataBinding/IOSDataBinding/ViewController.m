//
//  ViewController.m
//  IOSDataBinding
//
//  Created by Jeevan on 03/02/17.
//  Copyright © 2017 com.byjeevan.ios.databinding. All rights reserved.
//

#import "ViewController.h"
#import "RegistrationDto.h"
#import "UIView+TJBinder.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *loginButton;
@property (nonatomic, strong) RegistrationDto *registrationDto;
@property (strong) NSArray * data;
@property (weak, nonatomic) IBOutlet UILabel *dtoDataLabel;

@end

@implementation ViewController

- (IBAction)loginButtonAction:(id)sender {
    
    /**********************
     * View --- to ---> DTO
     **********************/
    
    [self.view updateDataObjectFromView];
    
    NSLog(@"Data object last name: %@", [self.view.dataObject valueForKey:@"firstName"]);
    
    NSLog(@"Data object last name: %@", [self.view.dataObject valueForKey:@"lastName"]);
    
    NSLog(@">> DTO lastName: %@", self.registrationDto.lastName);
    
    self.dtoDataLabel.text = [[NSString alloc] initWithFormat:@" Updated DTO ---> Fname : %@ \n, LName: %@ \n, Email: %@ \n", self.registrationDto.firstName, self.registrationDto.lastName, self.registrationDto.email];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /***********************
     * DTO --- to ---> View
     ***********************/
    
    self.registrationDto = [RegistrationDto new];
    
    self.registrationDto.firstName = @"Elon";
    self.registrationDto.lastName = @"Musk";
    self.registrationDto.email  = @"elon.musk@tesla.com";
    
    self.view.dataObject  = self.registrationDto;
    
    NSLog(@"Data object first name: %@", [self.view.dataObject valueForKey:@"firstName"]);
    NSLog(@"Data object last name: %@", [self.view.dataObject valueForKey:@"lastName"]);
    NSLog(@"Data object email name: %@", [self.view.dataObject valueForKey:@"email"]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
