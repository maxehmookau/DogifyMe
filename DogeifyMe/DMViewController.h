//
//  DMViewController.h
//  DogeifyMe
//
//  Created by Max Woolf on 07/02/2014.
//  Copyright (c) 2014 MaxWoolf. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DMViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (nonatomic) IBOutlet UIButton *cameraBtn;
@property (nonatomic) IBOutlet UIButton *libraryBtn;

- (IBAction)didPressCameraButton:(id)sender;
- (IBAction)didPressLibraryButton:(id)sender;

@end
