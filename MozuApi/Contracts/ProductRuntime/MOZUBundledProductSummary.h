
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "MOZURuntimePackageMeasurements.h"



@protocol MOZUBundledProductSummary
@end


@interface MOZUBundledProductSummary : JSONModel<MOZUBundledProductSummary>

@property(nonatomic) NSNumber * isPackagedStandAlone;

@property(nonatomic) NSString * productCode;

@property(nonatomic) NSString * productName;

@property(nonatomic) NSString * productShortDescription;

@property(nonatomic) NSInteger quantity;

@property(nonatomic) MOZURuntimePackageMeasurements *measurements;

@end

