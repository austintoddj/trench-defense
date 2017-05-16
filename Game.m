//
//  Game.m
//  Trench Defense
//
//  Created by Todd Austin on 2/1/14.
//  Copyright (c) 2014 Todd Austin. All rights reserved.
//

#import "Game.h"

@interface Game ()

@end

@implementation Game

-(void)GameOver{
    
    Result.hidden = NO;
    Result.text = [NSString stringWithFormat:@"Game Over!"];
    Exit.hidden = NO;
    [Movement invalidate];
    Tank.hidden = YES;
    Tower1Space.hidden = YES;
    Tower1Bullet.hidden = YES;
    Tower1DangerZone.hidden = YES;
    Tower2Space.hidden = YES;
    Tower2Bullet.hidden = YES;
    Tower2DangerZone.hidden = YES;
    Tower3Space.hidden = YES;
    Tower3Bullet.hidden = YES;
    Tower3DangerZone.hidden = YES;
    Tower4Space.hidden = YES;
    Tower4Bullet.hidden = YES;
    Tower4DangerZone.hidden = YES;
    Tower5Space.hidden = YES;
    Tower5Bullet.hidden = YES;
    Tower5DangerZone.hidden = YES;
    
    
    
}





-(void)TankHit{
    
    TankLivesNumber = TankLivesNumber - 1;
    TankLives.text = [NSString stringWithFormat:@"%i", TankLivesNumber];
    
    if (TankLivesNumber == 0) {
        Tank.hidden = YES;
        CreditsNumber = CreditsNumber + 15;
        Credits.text = [NSString stringWithFormat:@"%i", CreditsNumber];
        NewTower.hidden = NO;
        NextWave.hidden = NO;
        LevelNumber = LevelNumber + 1;
        Tank.center = CGPointMake(-26, 160);
        [Movement invalidate];
    }
    
    if (LevelNumber > 5) {
        Result.hidden = NO;
        Result.text = [NSString stringWithFormat:@"You Win!"];
        Exit.hidden = NO;
        Tank.hidden = YES;
        Tower1Space.hidden = YES;
        Tower1Bullet.hidden = YES;
        Tower1DangerZone.hidden = YES;
        Tower2Space.hidden = YES;
        Tower2Bullet.hidden = YES;
        Tower2DangerZone.hidden = YES;
        Tower3Space.hidden = YES;
        Tower3Bullet.hidden = YES;
        Tower3DangerZone.hidden = YES;
        Tower4Space.hidden = YES;
        Tower4Bullet.hidden = YES;
        Tower4DangerZone.hidden = YES;
        Tower5Space.hidden = YES;
        Tower5Bullet.hidden = YES;
        Tower5DangerZone.hidden = YES;
        NextWave.hidden = YES;
        NewTower.hidden = YES;
    }
    
    
    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    Tower1DangerZone.hidden = YES;
    Tower2DangerZone.hidden = YES;
    Tower3DangerZone.hidden = YES;
    Tower4DangerZone.hidden = YES;
    Tower5DangerZone.hidden = YES;
}



-(IBAction)CancelNewTower:(id)sender{
    
    NextWave.hidden = NO;
    CancelNewTower.hidden = YES;
    NewTower.hidden = NO;
    
    if (Tower1 == NO) {
        Tower1Space.hidden = YES;
    }
    if (Tower2 == NO) {
        Tower2Space.hidden = YES;
    }
    if (Tower3 == NO) {
        Tower3Space.hidden = YES;
    }
    if (Tower4 == NO) {
        Tower4Space.hidden = YES;
    }
    if (Tower5 == NO) {
        Tower5Space.hidden = YES;
    }
    
}

-(void)TowerPlaced{
    
    NextWave.hidden = NO;
    CancelNewTower.hidden = YES;
    NewTower.hidden = NO;
    Credits.text = [NSString stringWithFormat:@"%i", CreditsNumber];
    
    if (Tower1 == NO) {
        Tower1Space.hidden = YES;
    }
    if (Tower2 == NO) {
        Tower2Space.hidden = YES;
    }
    if (Tower3 == NO) {
        Tower3Space.hidden = YES;
    }
    if (Tower4 == NO) {
        Tower4Space.hidden = YES;
    }
    if (Tower5 == NO) {
        Tower5Space.hidden = YES;
    }
    
}

-(IBAction)Tower1Space:(id)sender{
    
    if (Tower1 == YES) {
        Tower1DangerZone.hidden = NO;
        Tower2DangerZone.hidden = YES;
        Tower3DangerZone.hidden = YES;
        Tower4DangerZone.hidden = YES;
        Tower5DangerZone.hidden = YES;
    }
    else{
        
        UIImage *buttonImage = [UIImage imageNamed:@"TowerLower.png"];
        [Tower1Space setImage:buttonImage forState:UIControlStateNormal];
        [self.view addSubview:Tower1Space];
        
        CreditsNumber = CreditsNumber - 15;
        Tower1 = YES;
        [self TowerPlaced];
    }
    
    
    
}
-(IBAction)Tower2Space:(id)sender{
    
    if (Tower2 == YES) {
        Tower2DangerZone.hidden = NO;
        Tower1DangerZone.hidden = YES;
        Tower3DangerZone.hidden = YES;
        Tower4DangerZone.hidden = YES;
        Tower5DangerZone.hidden = YES;
    }
    else{
        
        UIImage *buttonImage = [UIImage imageNamed:@"TowerUpper.png"];
        [Tower2Space setImage:buttonImage forState:UIControlStateNormal];
        [self.view addSubview:Tower2Space];
        
        CreditsNumber = CreditsNumber - 15;
        Tower2 = YES;
        [self TowerPlaced];
    }
    
    
    
}
-(IBAction)Tower3Space:(id)sender{
    
    if (Tower3 == YES) {
        Tower3DangerZone.hidden = NO;
        Tower1DangerZone.hidden = YES;
        Tower2DangerZone.hidden = YES;
        Tower4DangerZone.hidden = YES;
        Tower5DangerZone.hidden = YES;
    }
    else{
        
        UIImage *buttonImage = [UIImage imageNamed:@"TowerLower.png"];
        [Tower3Space setImage:buttonImage forState:UIControlStateNormal];
        [self.view addSubview:Tower3Space];
        
        CreditsNumber = CreditsNumber - 15;
        Tower3 = YES;
        [self TowerPlaced];
    }
    
    
    
    
}
-(IBAction)Tower4Space:(id)sender{
    
    if (Tower4 == YES) {
        Tower4DangerZone.hidden = NO;
        Tower1DangerZone.hidden = YES;
        Tower2DangerZone.hidden = YES;
        Tower3DangerZone.hidden = YES;
        Tower5DangerZone.hidden = YES;
    }
    else{
        
        UIImage *buttonImage = [UIImage imageNamed:@"TowerUpper.png"];
        [Tower4Space setImage:buttonImage forState:UIControlStateNormal];
        [self.view addSubview:Tower4Space];
        
        CreditsNumber = CreditsNumber - 15;
        Tower4 = YES;
        [self TowerPlaced];
    }
    
    
    
    
}
-(IBAction)Tower5Space:(id)sender{
    
    if (Tower5 == YES) {
        Tower5DangerZone.hidden = NO;
        Tower1DangerZone.hidden = YES;
        Tower2DangerZone.hidden = YES;
        Tower3DangerZone.hidden = YES;
        Tower4DangerZone.hidden = YES;
    }
    else{
        
        UIImage *buttonImage = [UIImage imageNamed:@"TowerLower"];
        [Tower5Space setImage:buttonImage forState:UIControlStateNormal];
        [self.view addSubview:Tower5Space];
        
        CreditsNumber = CreditsNumber - 15;
        Tower5 = YES;
        [self TowerPlaced];
    }
    
    
    
    
}





-(IBAction)NewTower:(id)sender{
    
    if (CreditsNumber > 14) {
        NextWave.hidden = YES;
        NewTower.hidden = YES;
        CancelNewTower.hidden = NO;
        
        Tower1Space.hidden = NO;
        Tower2Space.hidden = NO;
        Tower3Space.hidden = NO;
        Tower4Space.hidden = NO;
        Tower5Space.hidden = NO;
    }
    
}






-(void)Moving{
    
    if (Tank.center.x > 600) {
        [self GameOver];
    }
    
    Tank.center = CGPointMake(Tank.center.x + TankX, Tank.center.y + TankY);
    Tower1Bullet.center = CGPointMake(Tower1Bullet.center.x, Tower1Bullet.center.y + Bullet1Movement);
    Tower2Bullet.center = CGPointMake(Tower2Bullet.center.x, Tower2Bullet.center.y + Bullet2Movement);
    Tower3Bullet.center = CGPointMake(Tower3Bullet.center.x, Tower3Bullet.center.y + Bullet3Movement);
    Tower4Bullet.center = CGPointMake(Tower4Bullet.center.x, Tower4Bullet.center.y + Bullet4Movement);
    Tower5Bullet.center = CGPointMake(Tower5Bullet.center.x, Tower5Bullet.center.y + Bullet5Movement);
    
    if((CGRectIntersectsRect(Tank.frame, Tower1DangerZone.frame)) && Tower1 == YES) {
        
        Bullet1Movement = -3;
        Tower1Bullet.hidden = NO;
        
    }
    else{
        Bullet1Movement = 0;
        Tower1Bullet.hidden = YES;
        Tower1Bullet.center = CGPointMake(Tower1Space.center.x, Tower1Space.center.y);
    }
    
    if((CGRectIntersectsRect(Tank.frame, Tower2DangerZone.frame)) && Tower2 == YES) {
        
        Bullet2Movement = 3;
        Tower2Bullet.hidden = NO;
        
    }
    else{
        Bullet2Movement = 0;
        Tower2Bullet.hidden = YES;
        Tower2Bullet.center = CGPointMake(Tower2Space.center.x, Tower2Space.center.y);
    }
    
    if((CGRectIntersectsRect(Tank.frame, Tower3DangerZone.frame)) && Tower3 == YES) {
        
        Bullet3Movement = -3;
        Tower3Bullet.hidden = NO;
        
    }
    else{
        Bullet3Movement = 0;
        Tower3Bullet.hidden = YES;
        Tower3Bullet.center = CGPointMake(Tower3Space.center.x, Tower3Space.center.y);
    }
    
    if((CGRectIntersectsRect(Tank.frame, Tower4DangerZone.frame)) && Tower4 == YES) {
        
        Bullet4Movement = 3;
        Tower4Bullet.hidden = NO;
        
    }
    else{
        Bullet4Movement = 0;
        Tower4Bullet.hidden = YES;
        Tower4Bullet.center = CGPointMake(Tower4Space.center.x, Tower4Space.center.y);
    }
    
    if((CGRectIntersectsRect(Tank.frame, Tower5DangerZone.frame)) && Tower5 == YES) {
        
        Bullet5Movement = -3;
        Tower5Bullet.hidden = NO;
        
    }
    else{
        Bullet5Movement = 0;
        Tower5Bullet.hidden = YES;
        Tower5Bullet.center = CGPointMake(Tower5Space.center.x, Tower5Space.center.y);
    }
    
    if(CGRectIntersectsRect(Tank.frame, Tower1Bullet.frame)) {
        Tower1Bullet.center = CGPointMake(Tower1Space.center.x, Tower1Space.center.y);
        [self TankHit];
    }
    if(CGRectIntersectsRect(Tank.frame, Tower2Bullet.frame)) {
        Tower2Bullet.center = CGPointMake(Tower2Space.center.x, Tower2Space.center.y);
        [self TankHit];
    }
    if(CGRectIntersectsRect(Tank.frame, Tower3Bullet.frame)) {
        Tower3Bullet.center = CGPointMake(Tower3Space.center.x, Tower3Space.center.y);
        [self TankHit];
    }
    if(CGRectIntersectsRect(Tank.frame, Tower4Bullet.frame)) {
        Tower4Bullet.center = CGPointMake(Tower4Space.center.x, Tower4Space.center.y);
        [self TankHit];
    }
    if(CGRectIntersectsRect(Tank.frame, Tower5Bullet.frame)) {
        Tower5Bullet.center = CGPointMake(Tower5Space.center.x, Tower5Space.center.y);
        [self TankHit];
    }
    
    
    
}

-(IBAction)NextWave:(id)sender{
    
    NewTower.hidden = YES;
    NextWave.hidden = YES;
    Tank.hidden = NO;
    Movement = [NSTimer scheduledTimerWithTimeInterval:0.1 target: self selector:@selector(Moving) userInfo:nil repeats:YES];
    
    switch (LevelNumber) {
        case 1:
            TankLivesNumber = 2;
            break;
        case 2:
            TankLivesNumber = 4;
            break;
        case 3:
            TankLivesNumber = 6;
            break;
        case 4:
            TankLivesNumber = 8;
            break;
        case 5:
            TankLivesNumber = 10;
            break;
        default:
            break;
    }
    
    TankLives.text = [NSString stringWithFormat:@"%i", TankLivesNumber];
    Level.text = [NSString stringWithFormat:@"%i", LevelNumber];
    
    
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    
    Tank.hidden = YES;
    Tank.center = CGPointMake(-26, 160);
    
    TankX = 2;
    TankY = 0;
    
    Tower1Space.hidden = YES;
    Tower2Space.hidden = YES;
    Tower3Space.hidden = YES;
    Tower4Space.hidden = YES;
    Tower5Space.hidden = YES;
    Tower1DangerZone.hidden = YES;
    Tower2DangerZone.hidden = YES;
    Tower3DangerZone.hidden = YES;
    Tower4DangerZone.hidden = YES;
    Tower5DangerZone.hidden = YES;
    Tower1Bullet.hidden = YES;
    Tower2Bullet.hidden = YES;
    Tower3Bullet.hidden = YES;
    Tower4Bullet.hidden = YES;
    Tower5Bullet.hidden = YES;
    
    CreditsNumber = 15;
    Credits.text = [NSString stringWithFormat:@"%i", CreditsNumber];
    
    Tower1 = NO;
    Tower2 = NO;
    Tower3 = NO;
    Tower4 = NO;
    Tower5 = NO;
    
    CancelNewTower.hidden = YES;
    
    LevelNumber = 1;
    TankLivesNumber = 2;
    
    Level.text = [NSString stringWithFormat:@"%i", LevelNumber];
    TankLives.text = [NSString stringWithFormat:@"%i", TankLivesNumber];
    
    Result.hidden = YES;
    Exit.hidden = YES;
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
