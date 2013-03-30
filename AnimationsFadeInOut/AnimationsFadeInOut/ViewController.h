//
//  ViewController.h
//  AnimationsFadeInOut
//
//  Created by Dolice on 2013/03/31.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
  BOOL _isFadeIn;
}

@property (weak, nonatomic) IBOutlet UIButton *sampleButton;
@property (weak, nonatomic) IBOutlet UIImageView *sampleImageView;

- (IBAction)buttonFadeInOut:(id)sender;

@end
