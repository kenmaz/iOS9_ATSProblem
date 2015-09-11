//
//  ViewController.m
//  SimpleAFSample
//
//  Created by Kentaro Matsumae on 2015/09/11.
//  Copyright (c) 2015年 Kentaro Matsumae. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"
#import "AFURLResponseSerialization.h"

@implementation ViewController


- (IBAction)buttonDidTouch:(UIButton*)button {
    NSString* url = [button titleForState:UIControlStateNormal];
    [self _requestWithURL:url];
}

- (void)_requestWithURL:(NSString*)url {
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer new];
    
    [manager
     GET:url
     parameters:nil
     success:^(AFHTTPRequestOperation *operation, id responseObject) {
         NSLog(@"success: %@", responseObject);
         
     } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
         NSLog(@"failure: %@", error);
     }];
}

@end
