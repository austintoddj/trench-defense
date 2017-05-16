//
//  Game.h
//  Trench Defense
//
//  Created by Todd Austin on 2/1/14.
//  Copyright (c) 2014 Todd Austin. All rights reserved.
//

#import <UIKit/UIKit.h>

int TankX;
int TankY;
int CreditsNumber;

int TankLivesNumber;
int LevelNumber;
int Bullet1Movement;
int Bullet2Movement;
int Bullet3Movement;
int Bullet4Movement;
int Bullet5Movement;

BOOL Tower1;
BOOL Tower2;
BOOL Tower3;
BOOL Tower4;
BOOL Tower5;


@interface Game : UIViewController
{
    
    IBOutlet UIImageView *Tank;
    
    IBOutlet UIButton *NextWave;
    
    IBOutlet UIButton *Tower1Space;
    IBOutlet UIButton *Tower2Space;
    IBOutlet UIButton *Tower3Space;
    IBOutlet UIButton *Tower4Space;
    IBOutlet UIButton *Tower5Space;
    IBOutlet UIImageView *Tower1DangerZone;
    IBOutlet UIImageView *Tower2DangerZone;
    IBOutlet UIImageView *Tower3DangerZone;
    IBOutlet UIImageView *Tower4DangerZone;
    IBOutlet UIImageView *Tower5DangerZone;
    IBOutlet UIImageView *Tower1Bullet;
    IBOutlet UIImageView *Tower2Bullet;
    IBOutlet UIImageView *Tower3Bullet;
    IBOutlet UIImageView *Tower4Bullet;
    IBOutlet UIImageView *Tower5Bullet;
    
    IBOutlet UIButton *NewTower;
    IBOutlet UIButton *CancelNewTower;
    
    IBOutlet UILabel *Credits;
    
    IBOutlet UILabel *Level;
    IBOutlet UILabel *TankLives;
    IBOutlet UILabel *Result;
    IBOutlet UIButton *Exit;
    
    
    
    
    NSTimer *Movement;
    
}

-(IBAction)NextWave:(id)sender;
-(void)Moving;
-(IBAction)NewTower:(id)sender;
-(IBAction)CancelNewTower:(id)sender;
-(IBAction)Tower1Space:(id)sender;
-(IBAction)Tower2Space:(id)sender;
-(IBAction)Tower3Space:(id)sender;
-(IBAction)Tower4Space:(id)sender;
-(IBAction)Tower5Space:(id)sender;
-(void)TowerPlaced;
-(void)TankHit;
-(void)GameOver;



@end
