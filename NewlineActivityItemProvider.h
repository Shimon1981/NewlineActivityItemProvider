//
//  NewlineActivityItemProvider.h
//  NewlineActivityItemProvider
//
//  Created by Lorenzo Primiterra on 25/11/15.
//  Copyright © 2015 Lorenzo Primiterra. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewlineActivityItemProvider : UIActivityItemProvider

@property (nonatomic, strong) NSString *message;
@property (nonatomic, strong) NSArray *activities;

@end
