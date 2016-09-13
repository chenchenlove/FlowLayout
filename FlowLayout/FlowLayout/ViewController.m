//
//  ViewController.m
//  FlowLayout
//
//  Created by smith on 16/4/27.
//  Copyright © 2016年 smith. All rights reserved.
//

#import "ViewController.h"
#import "CustomFlowLayout.h"
#import "CustomCollectionViewCell.h"

@interface ViewController ()<UICollectionViewDataSource,UICollectionViewDelegate>
{
    UICollectionView * collectionV ;
}
@property (strong,nonatomic) NSMutableArray * dataArray ;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CustomFlowLayout * lay = [[CustomFlowLayout alloc] init] ;
    
    lay.itemSize = CGSizeMake(150, 150) ;
    
    lay.scrollDirection = UICollectionViewScrollDirectionHorizontal ;
    
    collectionV = [[UICollectionView alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height/2-100, self.view.frame.size.width, 200) collectionViewLayout:lay] ;
    collectionV.delegate = self ;
    collectionV.dataSource = self ;
    [self.view addSubview:collectionV] ;
    
    [collectionV registerClass:[CustomCollectionViewCell class] forCellWithReuseIdentifier:@"cell"] ;
    /*注释是这样的*/
    
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.dataArray.count ;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CustomCollectionViewCell * cell = [collectionV dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath] ;
    
    cell.imageV.image = self.dataArray[indexPath.row] ;
    
    cell.imageV.layer.borderWidth = 10 ;
    
    cell.imageV.layer.borderColor = [UIColor whiteColor].CGColor ;
    
    return cell ;
}

- (NSMutableArray *)dataArray
{
    if (_dataArray == nil)
    {
        _dataArray = [NSMutableArray array] ;
        for (int i = 0 ; i < 28 ; i++)
        {
            UIImage * image = [UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg",i+1]] ;
            [_dataArray addObject:image] ;
        }
    }
    return _dataArray ;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
