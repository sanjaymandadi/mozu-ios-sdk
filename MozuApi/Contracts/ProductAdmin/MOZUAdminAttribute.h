
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
#import "MOZUAdminAttributeMetadataItem.h"
#import "MOZUAuditInfo.h"
#import "MOZUAdminAttributeLocalizedContent.h"
#import "MOZUAttributeSearchSettings.h"
#import "MOZUAdminAttributeValidation.h"
#import "MOZUAdminAttributeVocabularyValue.h"



@protocol MOZUAdminAttribute
@end


/**
	Details of an attribute used to describe individual aspects of a product.
*/
@interface MOZUAdminAttribute : JSONModel<MOZUAdminAttribute>

/**
The administrative name of the product attribute as it appears in Mozu Admin.
*/
@property(nonatomic) NSString * adminName;

/**
Merchant-defined identifier of the product attribute used to generate the attribute's fully qualified name.
*/
@property(nonatomic) NSString * attributeCode;

/**
Generated sequence that increments for each attribute and data type combination created. This value is system-supplied and read-only.
*/
@property(nonatomic) NSNumber * attributeDataTypeSequence;

/**
The fully qualified name of the attribute, which is a user defined attribute identifier.
*/
@property(nonatomic) NSString * attributeFQN;

/**
Generated sequence that increments for each product attribute created. This value is system-supplied and read-only.
*/
@property(nonatomic) NSNumber * attributeSequence;

/**
The data type of the product attribute, which is a Bool, DateTime, Number, or String. The attribute's data type cannot be changed.
*/
@property(nonatomic) NSString * dataType;

/**
The storefront interface input type for the product attribute, which is a Date, DateTime, List, TextArea, TextBox, or YesNo. The attribute's input type cannot be changed.
*/
@property(nonatomic) NSString * inputType;

/**
If true, the product attribute is an add-on configuration made by the shopper that does not represent a product variation, such as a monogram.
*/
@property(nonatomic) NSNumber * isExtra;

/**
If true, the product attribute is a merchant- or shopper-configurable option, such as size or color, that represents a product variation.
*/
@property(nonatomic) NSNumber * isOption;

/**
If true, the product attribute describes aspects of the product that do not represent an option configurable by the shopper, such as screen resolution or brand.
*/
@property(nonatomic) NSNumber * isProperty;

/**
The unique identifier of the master catalog associated with the entity.
*/
@property(nonatomic) NSNumber * masterCatalogId;

/**
If applicable, the registered namespace associated with the product attribute, used to generate the fully qualified name. If no namespace is defined, the namespace associated with the tenant is automatically assigned.
*/
@property(nonatomic) NSString * namespace;

/**
The type of value associated with the product attribute, which is ShopperEntered (the shopper selects or enters an attribute value during checkout), Predefined (the merchant sets the attribute value from a list during product attribute definition), or AdminEntered (the merchant selects or enters a value during product definition). The attribute value type cannot be changed.
*/
@property(nonatomic) NSString * valueType;

/**
List of key-value pairs that store metadata associated with the product attribute.
*/
@property(nonatomic) NSArray<MOZUAdminAttributeMetadataItem> *attributeMetadata;

/**
Identifier and datetime stamp information recorded when a user or application creates, updates, or deletes a resource entity. This value is system-supplied and read-only.
*/
@property(nonatomic) MOZUAuditInfo *auditInfo;

/**
Complex type that contains content for a language specified by LocaleCode.
*/
@property(nonatomic) MOZUAdminAttributeLocalizedContent *content;

@property(nonatomic) NSArray<MOZUAdminAttributeLocalizedContent> *localizedContent;

/**
This API type provides the search and indexing settings for the attribute.
*/
@property(nonatomic) MOZUAttributeSearchSettings *searchSettings;

/**
Properties of the validation of a product attribute, which contains rules that dictate what values are valid entries for product attributes.
*/
@property(nonatomic) MOZUAdminAttributeValidation *validation;

/**
Array list of the defined vocabulary values for the specified product attribute. For example, for a Color attribute, vocabulary values might include black, white, and purple.
*/
@property(nonatomic) NSArray<MOZUAdminAttributeVocabularyValue> *vocabularyValues;

@end
