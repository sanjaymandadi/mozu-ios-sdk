
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
#import "MOZUCommerceCategory.h"



@protocol MOZUCommerceCategory
@end


/**
	The category into which products are classified.
*/
@interface MOZUCommerceCategory : JSONModel<MOZUCommerceCategory>

/**
Identifier of the category.
*/
@property(nonatomic) NSNumber * id;

/**
If applicable, the parent category in the category tree.
*/
@property(nonatomic) MOZUCommerceCategory* parent;

@end

