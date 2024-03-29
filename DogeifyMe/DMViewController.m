//
//  DMViewController.m
//  DogeifyMe
//
//  Created by Max Woolf on 07/02/2014.
//  Copyright (c) 2014 MaxWoolf. All rights reserved.
//

#import "DMViewController.h"

@interface DMViewController ()

@end

@implementation DMViewController

- (void)didPressCameraButton:(id)sender
{
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.allowsEditing = YES;
    picker.sourceType = UIImagePickerControllerSourceTypeCamera;
    
    [self presentViewController:picker animated:YES completion:NULL];
}

- (void)didPressLibraryButton:(id)sender
{
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.allowsEditing = YES;
    picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
    [self presentViewController:picker animated:YES completion:NULL];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    [picker dismissViewControllerAnimated:YES completion:NULL];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    UIImage *chosenImage = info[UIImagePickerControllerEditedImage];
    [picker dismissViewControllerAnimated:YES completion:NULL];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [_libraryBtn titleLabel].font = [UIFont fontWithName:@"ComicSansMS" size:40];
    [_cameraBtn titleLabel].font = [UIFont fontWithName:@"ComicSansMS" size:40];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
