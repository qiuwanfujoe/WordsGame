//
//  ViewController.m
//  WordGame
//
//  Created by Gideon on 15/11/15.
//  Copyright (c) 2015年 Gideon. All rights reserved.
//

#import "ViewController.h"
#import "GQGameItemCollectionCell.h"

@interface ViewController () <UICollectionViewDelegate, UICollectionViewDataSource>
@property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic,strong) NSMutableArray *gameData;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initBaseView];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)initBaseView
{
    UICollectionViewFlowLayout *flowLayout=[[UICollectionViewFlowLayout alloc] init];
    [flowLayout setScrollDirection:UICollectionViewScrollDirectionVertical];
    
    self.collectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:flowLayout];
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    self.view.backgroundColor = [UIColor colorWithRed:42/255.0 green:45/255.0 blue:57/255.0 alpha:1.0];
    self.collectionView.backgroundColor = [UIColor colorWithRed:42/255.0 green:45/255.0 blue:57/255.0 alpha:1.0];

    [self.view addSubview:self.collectionView];
    [self.collectionView registerClass:[GQGameItemCollectionCell class] forCellWithReuseIdentifier:@"GQGameItemCollectionCell"];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 120;
//    return self.gameData.count;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    GQGameItemCollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"GQGameItemCollectionCell" forIndexPath:indexPath];
    [cell setContentWithTitle:@"第一关"];
    return cell;
}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(60, 60);
}
//定义每个UICollectionView 的 margin
-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(20, 15, 20, 15);
}
@end
