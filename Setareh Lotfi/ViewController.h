//
//  ViewController.h
//  Coulton Vento
//
//  Created by Coulton Vento on 4/10/14.
//  Copyright (c) 2014 coultonvento. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIScrollViewDelegate> {
    IBOutlet UIScrollView *mainScrollView;
    IBOutlet UIView *mainScrollViewContent;
    BOOL automatedScroll, showedContent, dragging;
    
    IBOutlet UIButton *alertViewBackground;
    UIView *alertViewContent;
    UIImageView *alertViewImage;
    
    IBOutlet UIView *top;
    IBOutlet UIImageView *topProfile, *topBackground;
    IBOutlet UIButton *topProfileButton;
    IBOutlet UILabel *topSwipe, *topName, *topTitle, *topTitleSmall, *topNameSmall;
    
    IBOutlet NSMutableArray *dataOverview, *dataTimeline;
    
    CGRect appOverlayButtonOriginalFrame, appOverlayIconOriginalFrame;
    UIButton *appOverlayButton;
    int selectedIndex;
}

- (IBAction)showAlertView;
- (IBAction)hideAlertView;

@end
