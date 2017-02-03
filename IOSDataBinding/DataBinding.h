//
//  DataBinding.h
//  IOSDataBinding
//
//  Created by Jeevan on 03/02/17.
//  Copyright © 2017 com.byjeevan.ios.databinding. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TextFieldDataBindingProtocol <NSObject>

-(void) setText:(NSString *) string;
-(NSString *) getText;


@end

@interface DataBinding : NSObject

@end
