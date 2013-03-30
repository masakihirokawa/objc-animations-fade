//
//  ViewController.m
//  AnimationsFadeInOut
//
//  Created by Dolice on 2013/03/31.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  _isFadeIn = YES;
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

- (IBAction)buttonFadeInOut:(id)sender {
  if (_isFadeIn) {
    //フェードアウトアニメーション実行
    [self sampleImageFadeOut];
    //ボタンのテキストを変更
    [_sampleButton setTitle:@"fadeIn" forState:UIControlStateNormal];
  } else {
    //フェードインアニメーション実行
    [self sampleImageFadeIn];
    //ボタンのテキストを変更
    [_sampleButton setTitle:@"fadeOut" forState:UIControlStateNormal];
  }
  _isFadeIn = !_isFadeIn;
}

- (void)sampleImageFadeIn
{
  //フェードイン
  _sampleImageView.alpha = 0;
  //アニメーションのタイプを指定
  [UIView beginAnimations:@"fadeIn" context:nil];
  //イージング指定
  [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
  //アニメーション秒数を指定
  [UIView setAnimationDuration:0.3];
  //目標のアルファ値を指定
  _sampleImageView.alpha = 1;
  //アニメーション実行
  [UIView commitAnimations];
}

- (void)sampleImageFadeOut
{
  //フェードアウト
  [UIView beginAnimations:@"fadeOut" context:nil];
  //イージング指定
  [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
  //アニメーション秒数を指定
  [UIView setAnimationDuration:0.15];
  //目標のアルファ値を指定
  _sampleImageView.alpha = 0;
  //アニメーション実行
  [UIView commitAnimations];
}

@end
