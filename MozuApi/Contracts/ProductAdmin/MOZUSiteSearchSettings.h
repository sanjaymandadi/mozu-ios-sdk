
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
#import "MOZUSiteSearchRelevancyCustomField.h"
#import "MOZUSiteSearchKeywordRelevancySettings.h"
#import "MOZUSiteSearchPhraseRelevancySettings.h"



@protocol MOZUSiteSearchSettings
@end


@interface MOZUSiteSearchSettings : JSONModel<MOZUSiteSearchSettings>

@property(nonatomic) NSArray *customBoosts;

@property(nonatomic) BOOL isDefault;

@property(nonatomic) NSString * settingsName;

@property(nonatomic) NSArray<MOZUSiteSearchRelevancyCustomField> *customFields;

@property(nonatomic) MOZUSiteSearchKeywordRelevancySettings *siteKeywordRelevancy;

@property(nonatomic) MOZUSiteSearchPhraseRelevancySettings *sitePhraseRelevancy;

@end
