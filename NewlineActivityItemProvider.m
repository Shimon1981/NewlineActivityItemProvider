//
//  NewlineActivityItemProvider.m
//  NewlineActivityItemProvider
//
//  Created by Lorenzo Primiterra on 25/11/15.
//  Copyright © 2015 Lorenzo Primiterra. All rights reserved.
//

#import "NewlineActivityItemProvider.h"

@implementation NewlineActivityItemProvider
@synthesize message = _message;
@synthesize activities = _activities;

- (id) activityViewController:(UIActivityViewController *)activityViewController itemForActivityType:(NSString *)activityType
{
    if([activityType isEqualToString:@"net.whatsapp.WhatsApp.ShareExtension"]){
        return [self.message stringByReplacingOccurrencesOfString:@"\n" withString:@"<br/>"];
    }
    else if ([self.activities containsObject:activityType]) {
        return [self.message stringByReplacingOccurrencesOfString:@"\n" withString:@"<br/>"];
    }
    else {
        return self.message;
    }
    return nil;
}

- (id) activityViewControllerPlaceholderItem:(UIActivityViewController *)activityViewController { return @"";
}

@end
