//
//  ViewController.m
//  Setareh Lotfi
//
//  Created by Setareh Lotfi on 4/10/14.
//  Copyright (c) 2014 setareh. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+ImageEffects.h"
#import "TimelineObject.h"
#import "AppObject.h"

@interface ViewController ()

@end

#define HEIGHT_MEDIUM 240.0f
#define HEIGHT_SMALL 80.0f
#define COLOR_LIGHT_GRAY [UIColor colorWithRed:(200.0f/255.0f) green:(200.0f/255.0f) blue:(200.0f/255.0f) alpha:1.0]
#define COLOR_MEDIUM_GRAY [UIColor colorWithRed:(111.0/255.0f) green:(111.0/255.0f) blue:(111.0/255.0f) alpha:1.0f]
#define COLOR_HIGHLIGHT [UIColor colorWithRed:183/255.0f green:55/255.0f blue:80/255.0f alpha:1.0f]
#define COLOR_BLUE [UIColor colorWithRed:81/255.0f green:14/255.0f blue:112/255.0f alpha:1.0f];


@implementation ViewController

- (void)viewDidAppear:(BOOL)animated {
    
    // Add some formatting that can't be set in IB
    
    top.clipsToBounds = YES;
    alertViewBackground.alpha = 0;
    
    topName.font = [UIFont fontWithName:@"OpenSans-SemiBold" size:24];
    topTitle.font = [UIFont fontWithName:@"OpenSans-Light" size:15];
    topNameSmall.font = [UIFont fontWithName:@"OpenSans-SemiBold" size:17];
    topTitleSmall.font = [UIFont fontWithName:@"OpenSans-Light" size:12];
    topNameSmall.alpha = 0;
    topTitleSmall.alpha = 0;
    
    topProfile.layer.borderWidth = 2.0f;
    topProfile.layer.borderColor = [UIColor whiteColor].CGColor;
    topProfile.layer.cornerRadius = 50.0f;
    topProfile.clipsToBounds = YES;
    
    topSwipe.font = [UIFont fontWithName:@"OpenSans-Light" size:18];
    
    // Set up the main elements
    AppObject *blankApp = [[AppObject alloc] init];
//    AppObject *panoApp = [[AppObject alloc] initWithTitle:@"PanoPerfect" andText:@"After attending WWDC 2012 on student scholarships, Nate Chiger and I coudn't find a good place to share the panoramas taken in the iOS 6 camera app. So we set out to make the social network for panorama images." andButtonOneTitle:@"iPhone Application" withLink:[NSURL URLWithString:@"https://itunes.apple.com/us/app/panoperfect/id564643903"] andButtonTwoTitle:@"App Website" withLink:[NSURL URLWithString:@"http://panoperfect.co/"]];
//    AppObject *bzarApp = [[AppObject alloc] initWithTitle:@"Bzar" andText:@"Bzar is the place to buy and sell goods locally. With some design help from my brother, we developed this app for a company based in New York. Coming soon for iPhone in late April 2014." andButtonOneTitle:@"App Website" withLink:[NSURL URLWithString:@"http://bzarapp.com/"] andButtonTwoTitle:@"Facebook Page" withLink:[NSURL URLWithString:@"https://www.facebook.com/bzarapp"]];
//    AppObject *textplayApp = [[AppObject alloc] initWithTitle:@"TextPlay" andText:@"Developed at HackRice 2014, TextPlay gives party hosts the ease in creating real-time playlists based on suggestions sent via SMS. We plan to launch later this year." andButtonOneTitle:@"App Website" withLink:[NSURL URLWithString:@"http://textplayapp.com/"] andButtonTwoTitle:@"Twitter Page" withLink:[NSURL URLWithString:@"http://twitter.com/textplayapp"]];
    AppObject *iFarsi = [[AppObject alloc] initWithTitle:@"iFarsi" andText:@"Translate Farsi to English and English to Farsi dictionary to maek it handy on your iPhone to learn another language." andButtonOneTitle:@"App Store" withLink:[NSURL URLWithString:@"https://itunes.apple.com/us/app/ifarsi-persian-farsi-dictionary/id305328794?mt=8"]];
     AppObject *amigo = [[AppObject alloc] initWithTitle:@"The Amigo" andText:@"Your personal experince to figure out what to do during the day! The Amigo is customized based on time of the day and days of week and would help you with your study, cooking, nearby resturants, and FUN!" andButtonOneTitle:@"The Amigo" withLink:[NSURL URLWithString:@"http://www.the-amigo.appspot.com"]];

    
    
    dataTimeline = [[NSMutableArray alloc] initWithArray:@[
                                                           [[TimelineObject alloc] initWithDate:@"April 1994" andText:@"Once upon a time, in a land far far away, I was born living a fairytale of a princess!" andImage:nil andApp:blankApp],
                                                           [[TimelineObject alloc] initWithDate:@"January 2007" andText:@"I was looking through my dad old stuff when I found programming in C book. I was so passionate about reading any sort of book but this one was different. I instantly fell in love with code, and its mysterious world" andImage:nil andApp:blankApp],
                                                           [[TimelineObject alloc] initWithDate:@"November 2009" andText:@"I was place 2nd at 13th National Computer Science olympiad of Sweden and was qualified to compete on country national team in Intenationl CS olympiad in Germany." andImage:nil andApp:blankApp],
                                                           [[TimelineObject alloc] initWithDate:@"March 2010" andText:@"Tired of theory of computing I start to learn objective-c and because I really wanted to help myself to learn more about my mother toung, Farsi. I developed the very first Farsi-English Dictionary for iOS." andImage:[UIImage imageNamed:@"ifarsi.jpeg"] andApp:iFarsi],
                                                           [[TimelineObject alloc] initWithDate:@"September 2011" andText:@"I came to the United States. In my high school I started the programming club and with one of my friend build an app for our high school" andImage:[UIImage imageNamed:@"timeline-wwdc12.jpg"] andApp:blankApp],
                                                           [[TimelineObject alloc] initWithDate:@"December 2012" andText:@"I was an runner-up and San Diego Affilated Winner at National Center of Women in computing" andImage:[UIImage imageNamed:@"ncwit.jpg"] andApp:blankApp],
                                                          [[TimelineObject alloc] initWithDate:@"March 2013" andText:@"I was choosen as The Generation Google Scholar by Goolge." andImage:[UIImage imageNamed:nil] andApp:nil],
                                                           [[TimelineObject alloc] initWithDate:@"April 2013" andText:@"I was choosen as part of the perstigous Bank of America Studnet Leader Program and interned at a non-profit" andImage:nil andApp:blankApp],
//                                                           [[TimelineObject alloc] initWithDate:@"June 2013" andText:@"I had the privilege in attending WWDC 2013 on student scholarship. It was a life changing experience, and it motivated me to pursue computer science." andImage:[UIImage imageNamed:@"timeline-wwdc13.jpg"] andApp:blankApp],
//                                    
//                                                           [[TimelineObject alloc] initWithDate:@"January 2014" andText:@"At HackRice 2014, Canzhi Ye and I developed the iPhone app for TextPlay. We received great feedback, and won 2nd place overall. We plan to launch sometime later this year." andImage:[UIImage imageNamed:@"timeline-textplay.png"] andApp:textplayApp],
                                                           [[TimelineObject alloc] initWithDate:@"August 2013" andText:@"I was choosen to participate at Google Computer Science Summer Institue and learned web applicaiton development from Google Engineers" andImage:[UIImage imageNamed:@"google.jpg"] andApp:blankApp],
                                                               [[TimelineObject alloc] initWithDate:@"August 2014" andText:@"As part of my final project at Google CSSI we made Amigo with my team" andImage:[UIImage imageNamed:@"amigo.png"] andApp:amigo],
                                                                       [[TimelineObject alloc] initWithDate:@"August 2013" andText:@"I started my studies at Carnegie Mellon University as a computer science major." andImage:nil andApp:blankApp],
                                                           [[TimelineObject alloc] initWithDate:@"Feburary 2014" andText:@"I was invited to S.E.T. Award at Beverly Hills to represnt my app InstaGraph, which is the interface for instagram hashtags as part of choosen student there. Fun Fact: I got a chance to meet Bill Nye!!" andImage:[UIImage imageNamed:@"billNye.jpg"] andApp:nil],
                                                           [[TimelineObject alloc] initWithDate:@"June 2014" andText:@"I started at LinkedIn as Software Engineering intern working with iOS team on Linkedin Mobile app to make the registration via app better" andImage:[UIImage imageNamed:@"in.jpg"] andApp:blankApp],
                                                           [[TimelineObject alloc] initWithDate:@"July 2014" andText:@"I was chosen by Google as glassware developer to help their nonprofit project Giving Through Glass, I was the youngest one that choosen." andImage:nil andApp:nil]
                                                           ]];
    
    dataOverview = [[NSMutableArray alloc] initWithArray:@[
                                                           @[@"April 28, 1994",[UIImage imageNamed:@"cute3.png"]],
                                                           @[@"From Stockholm, Sweden/ Full Persian",[UIImage imageNamed:@"disneyland.png"]],
                                                           @[@"Freshman at Carnegie Mellon/ UCSD",[UIImage imageNamed:@"old49.png"]],
                                                           @[@"Skilled in Objective-c, C, HTML/CSS, Python, Java, and Javascript/jQuery",[UIImage imageNamed:@"children.png"]]
                                                           ]];
    [self setupScrollView];
    [self setupAlertView];
    
    [UIView animateWithDuration:0.3 delay:0.0 options:UIViewAnimationOptionCurveEaseInOut animations:^(void){
        topProfile.alpha = 1.0f;
        topProfileButton.alpha = 1.0f;
        topSwipe.alpha = 1.0f;
        topTitle.alpha = 1.0f;
        topName.alpha = 1.0f;
    }completion:nil];
    
    [super viewDidAppear:animated];
}

- (void)viewDidLoad {
    topNameSmall.alpha = 0.0f;
    topTitleSmall.alpha = 0.0f;
    topProfile.alpha = 0.0f;
    topProfileButton.alpha = 0.0f;
    topSwipe.alpha = 0.0f;
    topTitle.alpha = 0.0f;
    topName.alpha = 0.0f;
    
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Custom AlertView

- (void)setupAlertView {
    alertViewContent = [[UIView alloc] initWithFrame:CGRectMake(15, 0, 290, 100)];
    //UIColor * color = [UIColor colorWithRed:183/255.0f green:55/255.0f blue:80/255.0f alpha:1.0f];
    alertViewContent.backgroundColor = [UIColor whiteColor];
    alertViewContent.alpha = 0;
    [self.view addSubview:alertViewContent];
    
    alertViewImage = [[UIImageView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    alertViewImage.alpha = 0;
    alertViewImage.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview:alertViewImage];
    
    UIImageView *crown = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"crown2.png"]];
    crown.frame = CGRectMake(120, 7, 40, 20);;
    //crown.center= alertViewContent.center;;
    [alertViewContent addSubview:crown];
    
    
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(0, 20, 290, 28)];
    title.text = @"FairyTale";
    title.font = [UIFont fontWithName:@"OpenSans-Light" size:24];
    title.textAlignment = NSTextAlignmentCenter;
    title.textColor = COLOR_BLUE;
    [alertViewContent addSubview:title];
    

    
//    UIImageView *Image =[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"papyrus_copy.png"]];
//    [alertViewContent addSubview:Image];

    
    float y = 65.0f;
    for (NSArray *overviewObject in dataOverview) {
        NSString *text = [overviewObject objectAtIndex:0];
        UIImage *image = (UIImage*)[overviewObject objectAtIndex:1];
        
        UIImageView *contentIcon = [[UIImageView alloc] initWithFrame:CGRectMake(21, y+2, 13, 12)];
        contentIcon.image = image;
        [alertViewContent addSubview:contentIcon];
        
        UILabel *contentTitle = [[UILabel alloc] initWithFrame:CGRectMake(45, y, 220, 15)];
        contentTitle.font = [UIFont fontWithName:@"OpenSans" size:12];
        contentTitle.text = text;
        contentTitle.textColor = COLOR_BLUE;
        contentTitle.numberOfLines = 0;
        [contentTitle sizeToFit];
        [alertViewContent addSubview:contentTitle];
        
        y = y + contentTitle.frame.size.height + 8.0f;
    }
    
    float newHeight = y+15.0f;
    alertViewContent.frame = CGRectMake(15, ([[UIScreen mainScreen] bounds].size.height-newHeight)/2, 290, newHeight);
}

- (IBAction)showAlertView {
    
    // Everyone loves a good background blur
    
    UIGraphicsBeginImageContextWithOptions(self.view.bounds.size, NO, 0);
    [self.view drawViewHierarchyInRect:self.view.bounds afterScreenUpdates:NO];
    UIImage *image = [UIGraphicsGetImageFromCurrentImageContext() applyBlurWithRadius:3 tintColor:[UIColor colorWithWhite:0.0 alpha:0.3] saturationDeltaFactor:1 maskImage:nil];
    UIGraphicsEndImageContext();
    [alertViewBackground setImage:image forState:UIControlStateNormal];
    [alertViewBackground setImage:image forState:UIControlStateDisabled];
    [alertViewBackground setImage:image forState:UIControlStateSelected];
    [alertViewBackground setImage:image forState:UIControlStateHighlighted];
    [alertViewBackground removeTarget:self action:@selector(hideImage) forControlEvents:UIControlEventTouchUpInside];
    [alertViewBackground addTarget:self action:@selector(hideAlertView) forControlEvents:UIControlEventTouchUpInside];
    
    // Hide the statusbar, show the blurred background, and show the AlertView with a custom animation
    
    [[UIApplication sharedApplication] setStatusBarHidden:YES withAnimation:UIStatusBarAnimationFade];
    
    alertViewBackground.alpha = 0;
    alertViewContent.alpha = 1;
    UIView *newView = [alertViewContent snapshotViewAfterScreenUpdates:YES];
    [self.view addSubview:newView];
    newView.alpha = 0;
    alertViewContent.alpha = 0;
    
    float scaleFactor = 0.9;
    float newX = ([[UIScreen mainScreen] bounds].size.width-(newView.frame.size.width*scaleFactor))/2;
    float newY = ([[UIScreen mainScreen] bounds].size.height-(newView.frame.size.height*scaleFactor))/2;
    newView.frame = CGRectMake(newX, newY, newView.frame.size.width*scaleFactor, newView.frame.size.height*scaleFactor);
    [UIView animateWithDuration:0.3 delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^(void){
        alertViewBackground.alpha = 1.0;
    } completion:nil];
    [UIView animateWithDuration:0.2 delay:0.0 options:UIViewAnimationOptionCurveEaseInOut animations:^(void){
        float scaleFactor = 1.1111111111;
        float newX = ([[UIScreen mainScreen] bounds].size.width-(newView.frame.size.width*scaleFactor))/2;
        float newY = ([[UIScreen mainScreen] bounds].size.height-(newView.frame.size.height*scaleFactor))/2;
        newView.frame = CGRectMake(newX, newY, newView.frame.size.width*scaleFactor, newView.frame.size.height*scaleFactor);
        newView.alpha = 1.0;
    } completion:^(BOOL finished){
        [newView removeFromSuperview];
        alertViewContent.alpha = 1;
    }];
}

- (void)hideAlertView {
    UIView *newView = [alertViewContent snapshotViewAfterScreenUpdates:YES];
    [self.view addSubview:newView];
    alertViewContent.alpha = 0;
    
    [[UIApplication sharedApplication] setStatusBarHidden:NO withAnimation:UIStatusBarAnimationFade];
    
    newView.frame = alertViewContent.frame;
    [UIView animateWithDuration:0.2 delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^(void){
        float scaleFactor = 0.9;
        float newX = newView.frame.origin.x + (newView.frame.size.width*(1.0-scaleFactor))/2;
        float newY = newView.frame.origin.y + (newView.frame.size.height*(1.0-scaleFactor))/2;
        newView.frame = CGRectMake(newX, newY, newView.frame.size.width*scaleFactor, newView.frame.size.height*scaleFactor);
        newView.alpha = 0;
        alertViewBackground.alpha = 0;
    } completion:^(BOOL finished){
        [newView removeFromSuperview];
    }];
}

#pragma mark - UIScrollView

- (void)setupScrollView {
    int i = 0;
    float y = 24;
    for (TimelineObject *timelineElement in dataTimeline) {
        NSString *date = timelineElement.date;
        NSString *text = timelineElement.text;
        UIImage *image = timelineElement.image;
        AppObject *appInfo = timelineElement.app;
        
        UIView *circle = [[UIView alloc] initWithFrame:CGRectMake(24, y, 14, 14)];
        circle.backgroundColor = [UIColor whiteColor];
        circle.layer.borderWidth = 1.0f;
        circle.layer.borderColor = COLOR_LIGHT_GRAY.CGColor;
        circle.clipsToBounds = YES;
        circle.layer.cornerRadius = 7.0f;
        [mainScrollViewContent addSubview:circle];
        
        // There's an image
        if (image.size.width != 0.0f) {
            UIButton *imageView = [UIButton buttonWithType:UIButtonTypeCustom];
            imageView.frame = CGRectMake(55, y, 240, 130);
            imageView.backgroundColor = [UIColor lightGrayColor];
            imageView.layer.cornerRadius = 4.0f;
            imageView.contentMode = UIViewContentModeScaleAspectFill;
            imageView.imageView.contentMode = UIViewContentModeScaleAspectFill;
            imageView.clipsToBounds = YES;
            imageView.tag = i;
            [mainScrollViewContent addSubview:imageView];
            
            if (appInfo.title.length > 0) {
                
                // It's an app
                [imageView addTarget:self action:@selector(tapApp:) forControlEvents:UIControlEventTouchUpInside];
                
                UIImage *imageBlurred = [image applyBlurWithRadius:50 tintColor:[UIColor colorWithWhite:0.0 alpha:0.45] saturationDeltaFactor:1 maskImage:nil];
                [imageView setImage:imageBlurred forState:UIControlStateNormal];
                [imageView setImage:imageBlurred forState:UIControlStateDisabled];
                [imageView setImage:imageBlurred forState:UIControlStateSelected];
                [imageView setImage:imageBlurred forState:UIControlStateHighlighted];
                
                // App the app's icon to the main imageView
                UIImageView *appIcon = [[UIImageView alloc] initWithFrame:CGRectMake(75, 20, 85, 85)];
                appIcon.tag = 100;
                appIcon.image = image;
                appIcon.layer.cornerRadius = 14.0f;
                appIcon.clipsToBounds = YES;
                appOverlayIconOriginalFrame = appIcon.frame;
                [imageView addSubview:appIcon];
                
            } else {
                
                // Just an image
                [imageView addTarget:self action:@selector(tapImage:) forControlEvents:UIControlEventTouchUpInside];
                
                [imageView setImage:image forState:UIControlStateNormal];
                [imageView setImage:image forState:UIControlStateDisabled];
                [imageView setImage:image forState:UIControlStateSelected];
                [imageView setImage:image forState:UIControlStateHighlighted];
                
            }
            
            y = y + 145.0f;
        }
        
        UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(55, y-5, 240, 18)];
        titleLabel.font = [UIFont fontWithName:@"OpenSans-Semibold" size:16];
        titleLabel.textColor = COLOR_HIGHLIGHT;
        titleLabel.text = date;
        titleLabel.numberOfLines = 0;
        [titleLabel sizeToFit];
        [mainScrollViewContent addSubview:titleLabel];
        
        UILabel *textLabel = [[UILabel alloc] initWithFrame:CGRectMake(55, y+18, 240, 18)];
        textLabel.font = [UIFont fontWithName:@"OpenSans" size:12];
        textLabel.textColor = COLOR_MEDIUM_GRAY;
        textLabel.text = text;
        textLabel.numberOfLines = 0;
        [textLabel sizeToFit];
        [mainScrollViewContent addSubview:textLabel];
        
        y = y + textLabel.frame.size.height + 48.0;
        i++;
    }
    
    UIView *line = [[UIView alloc] initWithFrame:CGRectMake(30.5f, 24, 1, y+400.0f)];
    line.backgroundColor = COLOR_LIGHT_GRAY;
    [mainScrollViewContent addSubview:line];
    [mainScrollViewContent sendSubviewToBack:line];
    
    mainScrollView.contentSize = CGSizeMake(320, y + [[UIScreen mainScreen] bounds].size.height + HEIGHT_MEDIUM - HEIGHT_SMALL);
}

- (void)tapImage:(id)object {
    int tag = (int)((UIControl*)object).tag;
    UIImage *largeImage = ((TimelineObject*)[dataTimeline objectAtIndex:tag]).image;
    
    // Everyone loves a good background blur
    
    UIGraphicsBeginImageContextWithOptions(self.view.bounds.size, NO, 0);
    [self.view drawViewHierarchyInRect:self.view.bounds afterScreenUpdates:NO];
    UIImage *image = [UIGraphicsGetImageFromCurrentImageContext() applyBlurWithRadius:3 tintColor:[UIColor colorWithWhite:0.0 alpha:0.2] saturationDeltaFactor:1 maskImage:nil];
    UIGraphicsEndImageContext();
    [alertViewBackground setImage:image forState:UIControlStateNormal];
    [alertViewBackground setImage:image forState:UIControlStateDisabled];
    [alertViewBackground setImage:image forState:UIControlStateSelected];
    [alertViewBackground setImage:image forState:UIControlStateHighlighted];
    [alertViewBackground removeTarget:self action:@selector(hideAlertView) forControlEvents:UIControlEventTouchUpInside];
    [alertViewBackground addTarget:self action:@selector(hideImage) forControlEvents:UIControlEventTouchUpInside];
    
    alertViewImage.frame = [[UIScreen mainScreen] bounds];
    float scaleAmount = 0.9f;
    float newWidth = alertViewImage.frame.size.width * scaleAmount;
    float newHeight = alertViewImage.frame.size.height * scaleAmount;
    alertViewImage.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-newWidth)/2,([[UIScreen mainScreen] bounds].size.height-newHeight)/2,newWidth,newHeight);
    alertViewImage.image = largeImage;
    [UIView animateWithDuration:0.25 delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^(void){
        alertViewBackground.alpha = 1.0;
        alertViewImage.frame = [[UIScreen mainScreen] bounds];
        alertViewImage.alpha = 1.0;
    } completion:nil];
}

- (void)hideImage {
    [UIView animateWithDuration:0.15 delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^(void){
        alertViewBackground.alpha = 0.0f;
        alertViewImage.alpha = 0.0f;
        
        float scaleAmount = 0.9f;
        float newWidth = alertViewImage.frame.size.width * scaleAmount;
        float newHeight = alertViewImage.frame.size.height * scaleAmount;
        alertViewImage.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-newWidth)/2,([[UIScreen mainScreen] bounds].size.height-newHeight)/2,newWidth,newHeight);
    } completion:nil];
}

- (void)tapApp:(id)object {
    selectedIndex = (int)((UIControl*)object).tag;
    TimelineObject *timeline = (TimelineObject*)[dataTimeline objectAtIndex:selectedIndex];
    AppObject *app = timeline.app;
    
    UIButton *button = (UIButton*)object;
    CGRect appOverlayButtonFrame = button.frame;
    appOverlayButtonFrame.origin.y = appOverlayButtonFrame.origin.y - mainScrollView.contentOffset.y + HEIGHT_MEDIUM;
    appOverlayButtonOriginalFrame = appOverlayButtonFrame;
    
    appOverlayButton = [UIButton buttonWithType:UIButtonTypeCustom];
    appOverlayButton.frame = appOverlayButtonFrame;
    [appOverlayButton setImage:button.imageView.image forState:UIControlStateNormal];
    [appOverlayButton setImage:button.imageView.image forState:UIControlStateDisabled];
    [appOverlayButton setImage:button.imageView.image forState:UIControlStateSelected];
    [appOverlayButton setImage:button.imageView.image forState:UIControlStateHighlighted];
    appOverlayButton.imageView.contentMode = UIViewContentModeScaleAspectFill;
    appOverlayButton.clipsToBounds = YES;
    appOverlayButton.layer.cornerRadius = 4.0f;
    [appOverlayButton addTarget:self action:@selector(tapAppClose) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:appOverlayButton];
    
    UIImageView *appIconBefore = (UIImageView*)[button viewWithTag:100];
    UIImageView *appIcon = [[UIImageView alloc] initWithFrame:appIconBefore.frame];
    appIcon.image = appIconBefore.image;
    appIcon.tag = 100;
    appIcon.layer.cornerRadius = 14.0f;
    appIcon.clipsToBounds = YES;
    [appOverlayButton addSubview:appIcon];
    
    UIButton *buttonOne = [UIButton buttonWithType:UIButtonTypeCustom];
    [buttonOne setTitle:app.buttonOneText forState:UIControlStateNormal];
    [buttonOne setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [buttonOne setTitleColor:[UIColor blackColor] forState:UIControlStateHighlighted];
    buttonOne.titleLabel.font = [UIFont fontWithName:@"OpenSans" size:15];
    buttonOne.backgroundColor = [UIColor whiteColor];
    buttonOne.frame = CGRectMake(10, [[UIScreen mainScreen] bounds].size.height-54, 300, 44);
    [buttonOne addTarget:self action:@selector(tapAppTwo) forControlEvents:UIControlEventTouchUpInside];
    buttonOne.tag = 101;
    [appOverlayButton addSubview:buttonOne];
    
    
    UILabel *appTitle = [[UILabel alloc] initWithFrame:CGRectMake(20, 220, 280, 30)];
    appTitle.textAlignment = NSTextAlignmentCenter;
    appTitle.textColor = [UIColor whiteColor];
    appTitle.text = app.title;
    appTitle.numberOfLines = 1;
    appTitle.font = [UIFont fontWithName:@"OpenSans-SemiBold" size:25];
    appTitle.tag = 101;
    [appOverlayButton addSubview:appTitle];
    
    UILabel *appText = [[UILabel alloc] initWithFrame:CGRectMake(20, 255, 280, 30)];
    appText.textAlignment = NSTextAlignmentCenter;
    appText.textColor = [UIColor whiteColor];
    appText.text = app.text;
    appText.numberOfLines = 0;
    appText.font = [UIFont fontWithName:@"OpenSans" size:14];
    [appText sizeToFit];
    appText.frame = CGRectMake(20, appText.frame.origin.y, 280, appText.frame.size.height);
    appText.tag = 101;
    [appOverlayButton addSubview:appText];
    
    appText.alpha = 0.0f;
    appTitle.alpha = 0.0f;
    buttonOne.alpha = 0.0f;
    
    // Animate
    
    [UIView animateWithDuration:0.5 delay:0.0 usingSpringWithDamping:0.5 initialSpringVelocity:0.0 options:UIViewAnimationOptionCurveEaseInOut animations:^(void){
        appOverlayButton.frame = [[UIScreen mainScreen] bounds];
        appIcon.frame = CGRectMake((320-appIcon.frame.size.width)/2, 115, appIcon.frame.size.width, appIcon.frame.size.height);
    } completion:nil];
    [UIView animateWithDuration:0.3 delay:0.4 options:UIViewAnimationOptionCurveEaseInOut animations:^(void){
        appTitle.alpha = 1.0f;
        appText.alpha = 1.0f;
    } completion:nil];
    if (![app.buttonOneText isEqualToString:@""]) {
        if ([app.buttonOneText isEqualToString:@""]) {
            buttonOne.frame = CGRectMake(10, [[UIScreen mainScreen] bounds].size.height-54, 300, 44);
        }
        [UIView animateWithDuration:0.2 delay:0.45 options:UIViewAnimationOptionCurveEaseInOut animations:^(void){
            buttonOne.alpha = 1.0f;
        } completion:nil];
    }
    if (![app.buttonOneText isEqualToString:@""]) {
        [UIView animateWithDuration:0.2 delay:0.5 options:UIViewAnimationOptionCurveEaseInOut animations:^(void){
            buttonOne.alpha = 1.0f;
        } completion:nil];
    }
    
    // Animate the removal of the corner radius
    
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"cornerRadius"];
    animation.timingFunction = [CAMediaTimingFunction     functionWithName:kCAMediaTimingFunctionLinear];
    animation.fromValue = [NSNumber numberWithFloat:4.0f];
    animation.toValue = [NSNumber numberWithFloat:0.0f];
    animation.duration = 0.15;
    [appOverlayButton.layer setCornerRadius:0.0];
    [appOverlayButton.layer addAnimation:animation forKey:@"cornerRadius"];
}

- (void)tapAppClose {
    
    // For all of the titles & buttons
    
    [UIView animateWithDuration:0.15 animations:^(void){
        for (UIView *subview in appOverlayButton.subviews) {
            if (subview.tag == 101) {
                subview.alpha = 0.0f;
            }
        }
    }];
    
    // App icon & BG
    
    [UIView animateWithDuration:0.2 delay:0.1 options:UIViewAnimationOptionCurveEaseIn animations:^(void){
        appOverlayButton.frame = appOverlayButtonOriginalFrame;
        UIImageView *appIcon = (UIImageView*)[appOverlayButton viewWithTag:100];
        appIcon.frame = appOverlayIconOriginalFrame;
    } completion:^(BOOL finished){
        [appOverlayButton removeFromSuperview];
    }];
    
}

- (void)tapAppOne {
    TimelineObject *timeline = (TimelineObject*)[dataTimeline objectAtIndex:selectedIndex];
    AppObject *app = timeline.app;
    if ([[UIApplication sharedApplication] canOpenURL:app.buttonOneURL]) {
        [[UIApplication sharedApplication] openURL:app.buttonOneURL];
    }
}
- (void)tapAppTwo {
    TimelineObject *timeline = (TimelineObject*)[dataTimeline objectAtIndex:selectedIndex];
    AppObject *app = timeline.app;
    if ([[UIApplication sharedApplication] canOpenURL:app.buttonOneURL]) {
        [[UIApplication sharedApplication] openURL:app.buttonOneURL];
    }
}

#pragma mark Delegate Methods

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    
    // If it's your first time to swipe up, lock it at the 260px header
    
    if (!showedContent && scrollView.contentOffset.y >= [[UIScreen mainScreen] bounds].size.height-HEIGHT_MEDIUM) {
        scrollView.contentOffset = CGPointMake(0, [[UIScreen mainScreen] bounds].size.height-HEIGHT_MEDIUM);
        return;
    }
    
    if (scrollView.contentOffset.y > HEIGHT_MEDIUM && showedContent) {
        return;
    }
    
    float yBefore = [[UIScreen mainScreen] bounds].size.height-scrollView.contentOffset.y;
    float y = MAX(HEIGHT_MEDIUM, yBefore);
    if (showedContent) {
        if (scrollView.contentOffset.y < 0) {
            y = HEIGHT_MEDIUM-scrollView.contentOffset.y;
            yBefore = HEIGHT_MEDIUM-scrollView.contentOffset.y;
        } else {
            y = MAX(HEIGHT_MEDIUM, scrollView.contentOffset.y);
            yBefore = scrollView.contentOffset.y;
        }
    }
    
    // Content area
    
    top.frame = CGRectMake(0, 0, 320, y);
    topBackground.frame = CGRectMake(0, (y-topBackground.frame.size.height)/2, topBackground.frame.size.width, topBackground.frame.size.height);
    
    // Bottom "Swipe" label
    
    topSwipe.frame = CGRectMake(0, top.frame.size.height-39, topSwipe.frame.size.width, topSwipe.frame.size.height);
    if (showedContent) {
        topSwipe.alpha = 0.0f;
    } else {
        topSwipe.alpha = 1-MIN(1,scrollView.contentOffset.y/150);
    }
    
    if (yBefore < HEIGHT_MEDIUM) {
        float percentage = yBefore/(HEIGHT_MEDIUM-HEIGHT_SMALL);
        
        // Fade in/ out larger elements
        
        topProfile.alpha = 1-percentage;
        topName.alpha = 1-percentage;
        topTitle.alpha = 1-percentage;
        topProfileButton.alpha = 1-percentage;
        
        // Fade in/ out smaller elements
        
        if (percentage >= 0.91f) {
            if (topNameSmall.alpha == 0.0f) {
                [UIView animateWithDuration:0.35 animations:^(void){
                    topNameSmall.alpha = 1.0f;
                    topTitleSmall.alpha = 1.0f;
                }];
            }
        } else {
            if (topNameSmall.alpha == 1.0f) {
                [UIView animateWithDuration:0.35 animations:^(void){
                    topNameSmall.alpha = 0.0f;
                    topTitleSmall.alpha = 0.0f;
                }];
            }
        }
        
    } else {
        
        // Center middle content
        
        topProfile.frame = CGRectMake(110, (top.frame.size.height-140)/2, 100, 100);
        topProfileButton.frame = CGRectMake(110, (top.frame.size.height-140)/2, 100, 100);
        topProfile.alpha = 1;
        topProfileButton.alpha = 1;
        topName.frame = CGRectMake(0, topProfile.frame.origin.y+114, topName.frame.size.width, topName.frame.size.height);
        topTitle.frame = CGRectMake(0, topName.frame.origin.y+24, topTitle.frame.size.width, topTitle.frame.size.height);
    }
    
    [NSObject cancelPreviousPerformRequestsWithTarget:self];
    [self performSelector:@selector(scrollViewDidEndScrollingAnimationTwo:) withObject:scrollView afterDelay:0.3];
}

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    
    // This is not an automated scroll
    dragging = YES;
    automatedScroll = NO;
    
}

- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate {
    
    // You're done dragging, bro
    dragging = NO;
    
}

- (void)scrollViewDidEndScrollingAnimationTwo:(UIScrollView *)scrollView {
    [NSObject cancelPreviousPerformRequestsWithTarget:self];
    
    // Only perform this action if you're not dragging
    
    if (!dragging) {
        
        // Did you just unlock it?
        
        if ((automatedScroll && !showedContent && scrollView.contentOffset.y > 15.0f) || (!automatedScroll && !showedContent && scrollView.contentOffset.y >= [[UIScreen mainScreen] bounds].size.height-HEIGHT_MEDIUM)) {
            mainScrollView.bounces = YES;
            showedContent = YES;
            mainScrollView.contentOffset = CGPointMake(0, 0);
            mainScrollView.frame = CGRectMake(0, HEIGHT_SMALL, 320, mainScrollView.frame.size.height-HEIGHT_SMALL);
            
            mainScrollView.contentSize = CGSizeMake(mainScrollView.contentSize.width,mainScrollView.contentSize.height - [[UIScreen mainScreen] bounds].size.height);
            mainScrollViewContent.frame = CGRectMake(0, HEIGHT_MEDIUM-HEIGHT_SMALL, 320, mainScrollViewContent.frame.size.height);
            return;
        }
        
        // Automated scroll? Stop where you are.
        
        if (automatedScroll) {
            return;
        }
        
        // Locking into a certain position
        
        float totalOffset = [[UIScreen mainScreen] bounds].size.height-HEIGHT_MEDIUM;
        float offset = MIN(totalOffset, scrollView.contentOffset.y);
        float percentage = offset/totalOffset;
        
        automatedScroll = YES;
        if (!showedContent) {
            if (percentage <= 0.5f) {
                
                // Resest position
                [scrollView setContentOffset:CGPointMake(0, 0) animated:YES];
            } else {
                
                // Show the content
                [scrollView setContentOffset:CGPointMake(0, totalOffset) animated:YES];
            }
        } else {
            percentage = scrollView.contentOffset.y/HEIGHT_MEDIUM;
            
            if (percentage > 0.5f) {
                
                // Show small header
                if (scrollView.contentOffset.y+HEIGHT_SMALL > HEIGHT_MEDIUM) {  } else {
                    [scrollView setContentOffset:CGPointMake(0, HEIGHT_MEDIUM-HEIGHT_SMALL) animated:YES];
                }
                
            } else {
                
                // Show larger header
                [scrollView setContentOffset:CGPointMake(0, 0) animated:YES];
                
            }
        }
    }
}

@end
