//
//  Show+CoreDataProperties.h
//  MasterDetailViewPractice
//
//  Created by Moon on 2016. 4. 5..
//  Copyright © 2016년 Moon. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Show.h"

NS_ASSUME_NONNULL_BEGIN

@interface Show (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *title;
@property (nullable, nonatomic, retain) NSString *artist;
@property (nullable, nonatomic, retain) NSString *summary;
@property (nullable, nonatomic, retain) NSNumber *price;
@property (nullable, nonatomic, retain) NSString *locationInStore;

@end

NS_ASSUME_NONNULL_END
