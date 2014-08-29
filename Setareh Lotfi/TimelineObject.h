//
//  TimelineObject.h
//  Setareh Lotfi
//
//  Created by Setareh Lotfi on 7/26/14.
//  Copyright (c) 2014 Setareh Lotfi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppObject.h"
#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface TimelineObject : NSObject {
    NSString *text, *date;
    UIImage *image;
    AppObject *app;
}

@property (nonatomic, strong) NSString *text, *date;
@property (nonatomic, strong) UIImage *image;
@property (nonatomic, strong) AppObject *app;

- (id)initWithDate:(NSString*)dateVar andText:(NSString*)textVar andImage:(UIImage*)imageVar andApp:(AppObject*)appVar;

@end