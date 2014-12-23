
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
#import "MOZUListViewField.h"



@protocol MOZUListView
@end


@interface MOZUListView : JSONModel<MOZUListView>

/**
A set of expressions that consist of a field, operator, and value and represent search parameter syntax when filtering results of a query. Valid operators include equals (eq), does not equal (ne), greater than (gt), less than (lt), greater than or equal to (ge), less than or equal to (le), starts with (sw), or contains (cont). For example - "filter=IsDisplayed+eq+true"
*/
@property(nonatomic) NSString * filter;

@property(nonatomic) NSString * name;

@property(nonatomic) NSString * security;

@property(nonatomic) NSArray *usages;

@property(nonatomic) NSString * defaultSort;

@property(nonatomic) NSArray<MOZUListViewField> *fields;

@property(nonatomic) NSObject * metaData;

@end

