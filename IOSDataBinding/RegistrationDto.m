//
//  RegistrationDto.m
//  IOSDataBinding
//
//  Created by Jeevan on 03/02/17.
//  Copyright © 2017 com.byjeevan.ios.databinding. All rights reserved.
//

#import "RegistrationDto.h"
#import "DataBinding.h"

@interface RegistrationDto ()

@property (nonatomic,strong) NSString * name;
@property (nonatomic, strong) DataBinding * textFieldCallback;

@end

@implementation RegistrationDto





@end


@interface TextFieldCallback()  <TextFieldDataBindingProtocol>

@end

@implementation TextFieldCallback

-(NSString *) getText {


}

-(void) setText:(NSString *) text{

 
}

@end

