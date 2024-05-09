// This is a generated file. DO NOT EDIT!
// Generator: /SAP_Product_Costing/Tools/PowerDesignerConverter
//
// Generation date: 11.09.2017
// Model name:      PLC_DataModel_Version_v2_3
// Model version:   33



context basis {

   // corresponds to ERP table CSKA and CSKB
   entity t_account {
      key ACCOUNT_ID: String(10) not null;
      key CONTROLLING_AREA_ID: String(4) not null;
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
      DELETED_FROM_SOURCE: hana.TINYINT;
   };

   // corresponds to table CSKU
   entity t_account__text {
      key ACCOUNT_ID: String(10) not null;
      key CONTROLLING_AREA_ID: String(4) not null;
      key LANGUAGE: String(11) not null; 
      ACCOUNT_DESCRIPTION: String(250);
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
   };

   entity t_account_account_group {
      key FROM_ACCOUNT_ID: String(10) not null;
      TO_ACCOUNT_ID: String(10);
      key ACCOUNT_GROUP_ID: Integer not null;
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
   };

   entity t_account_group {
      key ACCOUNT_GROUP_ID: Integer not null;
      CONTROLLING_AREA_ID: String(4) not null;
      COST_PORTION: Integer not null; // 1=Fixed cost only, 2=Variable cost only, 3=Overall cost
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
   };

   entity t_account_group__text {
      key ACCOUNT_GROUP_ID: Integer not null;
      key LANGUAGE: String(11) not null;
      ACCOUNT_GROUP_DESCRIPTION: String(250);
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
   };

   entity t_component_split_account_group {
      key ACCOUNT_GROUP_ID: Integer not null;
      key COMPONENT_SPLIT_ID: String(35) not null;
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
   };

   entity t_activity_price {
      key PRICE_ID: String(32) not null;
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      PRICE_SOURCE_ID: String(20) not null; // 1=PLC Standard Pr
      CONTROLLING_AREA_ID: String(4) not null default '*';
      COST_CENTER_ID: String(10) not null default '*';
      ACTIVITY_TYPE_ID: String(12) not null default '*';
      PROJECT_ID: String(35) not null default '*';
      CUSTOMER_ID: String(10) not null default '*';
      VALID_FROM: Date not null;
      VALID_TO: Date;
      VALID_FROM_QUANTITY: Decimal(28,7) not null default 1;
      VALID_TO_QUANTITY: Decimal(28,7);
      PRICE_FIXED_PORTION: Decimal(28,7) not null;
      PRICE_VARIABLE_PORTION: Decimal(28,7) not null;
      TRANSACTION_CURRENCY_ID: String(3) not null;
      PRICE_UNIT: Decimal(28,7) not null;
      PRICE_UNIT_UOM_ID: String(3) not null;
      IS_PRICE_SPLIT_ACTIVE: hana.TINYINT default 0;
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
      DELETED_FROM_SOURCE: hana.TINYINT;
      _VALID_FROM_FIRST_VERSION: Timestamp; // Date & Time
      _CREATED_BY_FIRST_VERSION: String(256);
   } /*technical configuration {
      column store;
      unique index ACTIVITYPRICE on (
        PRICE_SOURCE_ID,
        CONTROLLING_AREA_ID, 
        COST_CENTER_ID, 
        ACTIVITY_TYPE_ID, 
        PROJECT_ID,  
        CUSTOMER_ID, 
        VALID_FROM, 
        VALID_FROM_QUANTITY,  
        _VALID_FROM
        ) asc;
      unique index ACTIVITYPRICE_UPSERT on (
        PRICE_ID,
        _VALID_TO
      ) asc;
    };*/

   // corresponds to ERP table CSLA
   entity t_activity_type {
      key ACTIVITY_TYPE_ID: String(12) not null;
      key CONTROLLING_AREA_ID: String(4) not null;
      ACCOUNT_ID: String(10);
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
      DELETED_FROM_SOURCE: hana.TINYINT;
   };

   // Corresponds to CSLT
   entity t_activity_type__text {
      key ACTIVITY_TYPE_ID: String(12) not null;
      key CONTROLLING_AREA_ID: String(4) not null;
      key LANGUAGE: String(11) not null;
      ACTIVITY_TYPE_DESCRIPTION: String(250);
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
   };

   entity t_addin_configuration_header {
      key ADDIN_GUID: String(100) not null;
      key ADDIN_MAJOR_VERSION: Integer not null;
      key ADDIN_MINOR_VERSION: Integer not null;
      key ADDIN_REVISION_NUMBER: Integer not null;
      key ADDIN_BUILD_NUMBER: Integer not null;
      CREATED_ON: Timestamp not null;
      CREATED_BY: String(256) not null;
      LAST_MODIFIED_ON: Timestamp not null;
      LAST_MODIFIED_BY: String(256) not null;
   };

   // Add-In Configuration Items
   entity t_addin_configuration_items {
      key ADDIN_GUID: String(100) not null;
      key ADDIN_MAJOR_VERSION: Integer not null;
      key ADDIN_MINOR_VERSION: Integer not null;
      key ADDIN_REVISION_NUMBER: Integer not null;
      key ADDIN_BUILD_NUMBER: Integer not null;
      key CONFIG_KEY: String(40) not null;
      CONFIG_VALUE: LargeString not null;
   };

   entity t_addin_version {
      key ADDIN_GUID: String(100) not null;
      key ADDIN_MAJOR_VERSION: Integer not null;
      key ADDIN_MINOR_VERSION: Integer not null;
      key ADDIN_REVISION_NUMBER: Integer not null;
      key ADDIN_BUILD_NUMBER: Integer not null;
      NAME: String(40) not null;
      FULL_QUALIFIED_NAME: String(120) not null;
      DESCRIPTION: LargeString;
      PUBLISHER: String(40);
      STATUS: String(11) not null;
      CERTIFICATE_ISSUER: String(300) not null;
      CERTIFICATE_SUBJECT: String(1000) not null;
      CERTIFICATE_VALID_FROM: Timestamp not null;
      CERTIFICATE_VALID_TO: Timestamp not null;
      CREATED_ON: Timestamp not null;
      CREATED_BY: String(256) not null;
      LAST_MODIFIED_ON: Timestamp not null;
      LAST_MODIFIED_BY: String(256) not null;
   };

   entity t_application_timeout {
      key APPLICATION_TIMEOUT_ID: String(35) not null;
      VALUE_IN_SECONDS: Integer not null;
      TIMEOUT_DESCRIPTION: String(250);
   };

   // corresponds to tgsb
   entity t_business_area {
      key BUSINESS_AREA_ID: String(15) not null;
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
      DELETED_FROM_SOURCE: hana.TINYINT;
   };

   // corresponds to tgsbt
   entity t_business_area__text {
      key BUSINESS_AREA_ID: String(15) not null;
      key LANGUAGE: String(11) not null;
      BUSINESS_AREA_DESCRIPTION: String(250);
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
   };

   // corresponds to ERP table CBPR
   entity t_process {
      key PROCESS_ID: String(12) not null;
      key CONTROLLING_AREA_ID: String(4) not null;
      ACCOUNT_ID: String(10);
      COMMENT: String(5000);
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
      DELETED_FROM_SOURCE: hana.TINYINT;
   };

   // corresponds to ERP table CBPT
   entity t_process__text {
      key PROCESS_ID: String(12) not null;
      key CONTROLLING_AREA_ID: String(4) not null;
      key LANGUAGE: String(11) not null;
      PROCESS_DESCRIPTION: String(250);
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
   };


   entity t_calculation {
      key CALCULATION_ID: Integer not null;
      PROJECT_ID: String(35) not null default '';
      CALCULATION_NAME: String(500) not null; // CalculationName is unique within one project; if no project exists: within one folder; if no folder exists: globally
      CURRENT_CALCULATION_VERSION_ID: Integer;
      CREATED_ON: Timestamp not null; // Data & Time
      CREATED_BY: String(256) not null;
      LAST_MODIFIED_ON: Timestamp not null; // Data & Time
      LAST_MODIFIED_BY: String(256) not null;
   } /*technical configuration {
      column store;
      unique index CALCNAME on (PROJECT_ID, CALCULATION_NAME) asc;
   };*/


   entity t_calculation_version {
      key CALCULATION_VERSION_ID: Integer not null;
      CALCULATION_ID: Integer not null;
      CALCULATION_VERSION_NAME: String(500) not null;
      STATUS_ID: String(20);
      CALCULATION_VERSION_TYPE: hana.TINYINT not null default 1; /* the type of the version; the values can be
       * 1 (= normal); default value - versions of this type can act as base version for lifecycle versions
       * 2 (= lifecycle version) - versions of this type are generated from a base version
       * 4 = variant base
       * 8 = version generated from variant
       * 16 = Manual Lifecycle Version - versions of this type are generated from a lifecycle version */
      ROOT_ITEM_ID: Integer not null;
      CUSTOMER_ID: String(10);
      SALES_DOCUMENT: String(100); // could link to a sales document in ERP such as order, inquiry
      SALES_PRICE: Decimal(28,7); /* Sales Price should be used as info field for anybody who wants to compare the final calculated costs with the sales price or do this in external analytic tools
       * Sales Price is stated in Sales Price Currency Id */
      SALES_PRICE_CURRENCY_ID: String(3) default 'EUR';
      REPORT_CURRENCY_ID: String(3) not null default 'EUR';
      COSTING_SHEET_ID: String(15);
      COMPONENT_SPLIT_ID: String(35);
      START_OF_PRODUCTION: Date;
      END_OF_PRODUCTION: Date;
      VALUATION_DATE: Date not null;
      LAST_MODIFIED_ON: Timestamp not null; // Data & Time
      LAST_MODIFIED_BY: String(256) not null;
      MASTER_DATA_TIMESTAMP: Timestamp not null;
      LIFECYCLE_PERIOD_FROM: Integer;
      BASE_VERSION_ID: Integer; /* For the versions generated from the variants or for lifecycle version, the field t_calculation_version.BASE_VERSION_ID is used for saving the CALCULATION_VERSION_ID of the version from which this version has been generated. 
       * Rationale: we have to keep the reference to the variant/lifecycle base even if the variant/lifecycle was deleted. */
      IS_FROZEN: hana.TINYINT;
      VARIANT_ID: Integer; /* Indicates from which variant the calculation version was generated
       * Rationale: several versions can be generated from one variant. We have to keep the reference to the origination variant.
       * If VARIANT_ID is null, then the version was not generated from a variant or the original variant was removed. */
      EXCHANGE_RATE_TYPE_ID: String(20) not null default 'STANDARD';
      MATERIAL_PRICE_STRATEGY_ID: String(20) not null default 'PLC_STANDARD';
      ACTIVITY_PRICE_STRATEGY_ID: String(20) not null default 'PLC_STANDARD';
      SELECTED_TOTAL_COSTING_SHEET: String(20) not null default 'TOTAL_COST'; /* TOTAL_COST, TOTAL_COST2, TOTAL_COST3 */
      SELECTED_TOTAL_COMPONENT_SPLIT: String(20) not null default 'TOTAL_COST'; /* TOTAL_COST, TOTAL_COST2, TOTAL_COST3 */   
   } /*technical configuration {
      column store;
      unique index CALCVERSNAME on (CALCULATION_ID, CALCULATION_VERSION_NAME) asc;
   };*/

   entity t_calculation_version_temporary {
      key SESSION_ID: String(50) not null;
      key CALCULATION_VERSION_ID: Integer not null;
      CALCULATION_ID: Integer not null;
      CALCULATION_VERSION_NAME: String(500) not null;
      STATUS_ID: String(20);
      CALCULATION_VERSION_TYPE: hana.TINYINT not null default 1; /* the type of the version; the values can be
       * 1 (= normal); default value - versions of this type can act as base version for lifecycle versions
       * 2 (= lifecycle version) - versions of this type are generated from a base version
       * 4 = variant base
       * 8 = version generated from variant 
       * 16 = Manual Lifecycle Version - versions of this type are generated from a lifecycle version */
      ROOT_ITEM_ID: Integer not null;
      CUSTOMER_ID: String(10);
      SALES_DOCUMENT: String(100); // could link to a sales document in ERP such as order, inquiry
      SALES_PRICE: Decimal(28,7); /* Sales Price should be used as info field for anybody who wants to compare the final calculated costs with the sales price or do this in external analytic tools
       * Sales Price is stated in reporting currency */
      SALES_PRICE_CURRENCY_ID: String(3) default 'EUR';
      REPORT_CURRENCY_ID: String(3) not null;
      COSTING_SHEET_ID: String(15);
      COMPONENT_SPLIT_ID: String(35);
      START_OF_PRODUCTION: Date;
      END_OF_PRODUCTION: Date;
      VALUATION_DATE: Date not null default date'2014-06-02';
      LAST_MODIFIED_ON: Timestamp; // Data & Time
      LAST_MODIFIED_BY: String(256);
      MASTER_DATA_TIMESTAMP: Timestamp;
      LIFECYCLE_PERIOD_FROM: Integer;
      BASE_VERSION_ID: Integer; /* For the versions generated from the variants or for lifecycle version, the field t_calculation_version.BASE_VERSION_ID is used for saving the CALCULATION_VERSION_ID of the version from which this version has been generated. 
       * Rationale: we have to keep the reference to the variant/lifecycle base even if the variant/lifecycle was deleted.  */
      IS_FROZEN: hana.TINYINT;
      VARIANT_ID: Integer; /* Indicates from which variant the calculation version was generated
       * Rationale: several versions can be generated from one variant. We have to keep the reference to the origination variant.
       * If VARIANT_ID is null, then the version was not generated from a variant or the original variant was removed. */
      EXCHANGE_RATE_TYPE_ID: String(20) not null default 'STANDARD';    
      MATERIAL_PRICE_STRATEGY_ID: String(20) not null default 'PLC_STANDARD';
      ACTIVITY_PRICE_STRATEGY_ID: String(20) not null default 'PLC_STANDARD';
      SELECTED_TOTAL_COSTING_SHEET: String(20) not null default 'TOTAL_COST'; /* TOTAL_COST, TOTAL_COST2, TOTAL_COST3 */
      SELECTED_TOTAL_COMPONENT_SPLIT: String(20) not null default 'TOTAL_COST'; /* TOTAL_COST, TOTAL_COST2, TOTAL_COST3 */    
   };

   // corresponds to ERP table T001
   entity t_company_code {
      key COMPANY_CODE_ID: String(4) not null;
      CONTROLLING_AREA_ID: String(4) not null;
      COMPANY_CODE_CURRENCY_ID: String(3);
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
      DELETED_FROM_SOURCE: hana.TINYINT;
   };

   entity t_one_time_project_cost {
      key ONE_TIME_COST_ID: Integer not null;
      PROJECT_ID: String(35) not null;
      ACCOUNT_ID: String(10) not null;
      COST_DESCRIPTION: String(250) not null;
      COST_TO_DISTRIBUTE: Decimal(28,7) not null;
      COST_NOT_DISTRIBUTED: Decimal(28,7) not null;
      COST_CURRENCY_ID: String(3) not null;
      FIXED_COST_PORTION: Decimal(28,7) not null default 100;
      DISTRIBUTION_TYPE: hana.TINYINT not null default 0;
      LAST_MODIFIED_ON: Timestamp not null; // Data & Time
      LAST_MODIFIED_BY: String(256) not null;
   };

   entity t_one_time_product_cost {
      key ONE_TIME_COST_ID: Integer not null;
      key CALCULATION_ID: Integer not null;
      COST_TO_DISTRIBUTE: Decimal(28,7);
      COST_NOT_DISTRIBUTED: Decimal(28,7);
      DISTRIBUTION_TYPE: hana.TINYINT not null default 0;
      LAST_MODIFIED_ON: Timestamp not null; // Data & Time
      LAST_MODIFIED_BY: String(256) not null;
   };

   entity t_one_time_cost_lifecycle_value {
      key ONE_TIME_COST_ID: Integer not null;
      key CALCULATION_ID: Integer not null;
      key LIFECYCLE_PERIOD_FROM: Integer not null;
      VALUE: Decimal(28,7) not null;
   };

   entity t_company_code__text {
      key COMPANY_CODE_ID: String(4) not null;
      key LANGUAGE: String(11) not null;
      COMPANY_CODE_DESCRIPTION: String(250);
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
   };

   /* TCKH4 + TCKH5
       * Split is a generic concept. You can split your costs based on the field referenced here (e.g. cost elements, plants,) */
   entity t_component_split {
      key COMPONENT_SPLIT_ID: String(35) not null;
      CONTROLLING_AREA_ID: String(4) not null;
       key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
   };

   entity t_component_split__text {
      key COMPONENT_SPLIT_ID: String(35) not null;
      key LANGUAGE: String(11) not null;
      COMPONENT_SPLIT_DESCRIPTION: String(250);
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
   };

   entity t_confidence_level {
      key CONFIDENCE_LEVEL_ID: Integer not null;
   };

   entity t_confidence_level__text {
      key CONFIDENCE_LEVEL_ID: Integer not null;
      key LANGUAGE: String(11) not null;
      CONFIDENCE_LEVEL_DESCRIPTION: String(50);
   };

   entity t_controlling_area {
      key CONTROLLING_AREA_ID: String(4) not null;
      CONTROLLING_AREA_CURRENCY_ID: String(3);
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
      DELETED_FROM_SOURCE: hana.TINYINT;
   };

   entity t_controlling_area__text {
      key CONTROLLING_AREA_ID: String(4) not null;
      key LANGUAGE: String(11) not null;
      CONTROLLING_AREA_DESCRIPTION: String(250);
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
   };

   // corresponds to ERP table CSKS
   entity t_cost_center {
      key COST_CENTER_ID: String(10) not null;
      key CONTROLLING_AREA_ID: String(4) not null;
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
      DELETED_FROM_SOURCE: hana.TINYINT;
   };

   // corresponds to CSKT
   entity t_cost_center__text {
      key COST_CENTER_ID: String(10) not null;
      key CONTROLLING_AREA_ID: String(4) not null;
      key LANGUAGE: String(11) not null;
      COST_CENTER_DESCRIPTION: String(250);
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
   };

   entity t_costing_sheet {
      key COSTING_SHEET_ID: String(15) not null;
      CONTROLLING_AREA_ID: String(4) not null;
      IS_TOTAL_COST2_ENABLED: hana.TINYINT not null default 0;
		IS_TOTAL_COST3_ENABLED: hana.TINYINT not null default 0;
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
   };

   entity t_costing_sheet__text {
      key COSTING_SHEET_ID: String(15) not null;
      key LANGUAGE: String(11) not null;
      COSTING_SHEET_DESCRIPTION: String(250);
      TOTAL_COST2_DESCRIPTION: String(50); 
      TOTAL_COST3_DESCRIPTION: String(50);
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
   };

   entity t_costing_sheet_base {
      key COSTING_SHEET_BASE_ID: Integer not null;
      COST_PORTION: Integer not null; // 1=Fixed cost only, 2=Variable cost only, 3=Overall cost (fixed+variable)
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
   };

   // used to define an intervall of values which defines the costing sheet basis. Values are of the field reference
   entity t_costing_sheet_base_row {
      key COSTING_SHEET_BASE_ID: Integer not null;
      key ITEM_CATEGORY_ID: Integer not null; /* 0 Calculation Version (Kalkulationsversion)
       * 1 Component (Document) (Komponente (Dokument))
       * 2 Component (Material) (Komponente (Material))
       * 3 Internal Activity (Eigenleistung) 
       * 4 External Activity (Fremdleistung) 
       * 5 Process (Prozess) 
       * 6 Subcontracting (Lohnbearbeitung) 
       * 7 Resources and Tools (Fertigungshilfsmittel) 
       * 8 Variable Item (Variable Position) 
       * 9 Text Item (Textposition) */
      SUBITEM_STATE: hana.SMALLINT not null; /* 1: costs are only considered for the basis if it is an aggregate (item has children)
       * 0: costs are only considered for the basis if it is no aggregate (item has no children)
       * -1: costs are always considered for the basis and it doesn't matter if it is an aggregate or not
       * default: -1 */
       key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
      key CHILD_ITEM_CATEGORY_ID: Integer not null default 0;
   };

   entity t_costing_sheet_overhead {
      key COSTING_SHEET_OVERHEAD_ID: Integer not null;
      CREDIT_ACCOUNT_ID: String(10); // account for credit
      CREDIT_FIXED_COST_PORTION: Integer; // percentage of fixed cost portion in percentage
      IS_ROLLED_UP: hana.TINYINT not null; // if set = rollUp; in ERP: CHAR(1)
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
      USE_DEFAULT_FIXED_COST_PORTION: hana.TINYINT not null default 1;
   };

   entity t_costing_sheet_overhead_row {
      key COSTING_SHEET_OVERHEAD_ROW_ID: Integer not null;
      key COSTING_SHEET_OVERHEAD_ID: Integer not null;
      key VALID_FROM: Date not null;
      key VALID_TO: Date not null;
      CONTROLLING_AREA_ID: String(4);
      COMPANY_CODE_ID: String(4);
      BUSINESS_AREA_ID: String(15);
      PROFIT_CENTER_ID: String(10);
      PLANT_ID: String(8);
      OVERHEAD_GROUP_ID: String(10);
      OVERHEAD_PERCENTAGE: Decimal(28,7); // names the overhead value in percentage - a separate UoM field does not exist
      PROJECT_ID: String(35);
      ACTIVITY_TYPE_ID: String(12);
      COST_CENTER_ID: String(10);
      WORK_CENTER_ID: String(15);
      OVERHEAD_QUANTITY_BASED: Decimal(28,7);
      OVERHEAD_CURRENCY_ID: String(3);
      OVERHEAD_PRICE_UNIT: Decimal(28,7);
      OVERHEAD_PRICE_UNIT_UOM_ID: String(3);
      FORMULA_ID: Integer;
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
      CREDIT_FIXED_COST_PORTION: Integer;
   };

   entity t_costing_sheet_overhead_row_formula{
   	  key FORMULA_ID: Integer;
   	  FORMULA_STRING: LargeString;
   	  FORMULA_DESCRIPTION: String(5000);
        OVERHEAD_CUSTOM: String(127) default null;
   };

   entity t_costing_sheet_row {
      key COSTING_SHEET_ROW_ID: String(5) not null;
      key COSTING_SHEET_ID: String(15) not null;
      COSTING_SHEET_ROW_TYPE: Integer not null default 4; /* identifies one of the three row types by an enumeration with the following meaning
       * 	1=Base as Account Group
       * 	2=Base as Item Category
       * 	3=Overhead
       * 	4=Sum
       *  */
      COSTING_SHEET_BASE_ID: Integer;
      ACCOUNT_GROUP_AS_BASE_ID: Integer;
      COSTING_SHEET_OVERHEAD_ID: Integer;
      CALCULATION_ORDER: Integer not null;
      IS_RELEVANT_FOR_TOTAL: hana.TINYINT not null default 1; 
      IS_RELEVANT_FOR_TOTAL2: hana.TINYINT not null default 0;
      IS_RELEVANT_FOR_TOTAL3: hana.TINYINT not null default 0;
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
   };

   entity t_costing_sheet_row__text {
      key COSTING_SHEET_ID: String(15) not null;
      key COSTING_SHEET_ROW_ID: String(5) not null;
      key LANGUAGE: String(11) not null;
      COSTING_SHEET_ROW_DESCRIPTION: String(250);
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
   };

   // used to define references between rows in the costing sheet, e.g. a MK (Sum) = MEK (Basis) + MGK (Overhead). Then MK would be the Source Row and MEK and MGK would be the target rows
   entity t_costing_sheet_row_dependencies {
      key SOURCE_ROW_ID: String(5) not null;
      key TARGET_ROW_ID: String(5) not null;
      key COSTING_SHEET_ID: String(15) not null;
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
   };

   entity t_currency {
      key CURRENCY_ID: String(3) not null;
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
   };

   entity t_currency__text {
      key CURRENCY_ID: String(3) not null;
      key LANGUAGE: String(11) not null;
      CURRENCY_CODE: String(5);
      CURRENCY_DESCRIPTION: String(40);
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
   };

   entity t_currency_conversion {
      key EXCHANGE_RATE_TYPE_ID: String(20) not null default 'STANDARD';      
      key FROM_CURRENCY_ID: String(3) not null;
      key TO_CURRENCY_ID: String(3) not null;
      FROM_FACTOR: Integer not null;
      TO_FACTOR: Integer not null;
      RATE: Decimal(28,7) not null;
      key VALID_FROM: Date not null; // used to define the validity of master data
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
      DELETED_FROM_SOURCE: hana.TINYINT;
   };

   // corresponds to ERP table KNA1
   entity t_customer {
      key CUSTOMER_ID: String(10) not null;
      CUSTOMER_NAME: String(100);
      COUNTRY: String(100);
      POSTAL_CODE: String(35);
      REGION: String(100);
      CITY: String(100);
      STREET_NUMBER_OR_PO_BOX: String(100);
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
      DELETED_FROM_SOURCE: hana.TINYINT;
      IS_PERSONAL_DATA: hana.TINYINT default 0;
   };

   // see DR: Global & User Default Settings
   entity t_default_settings {
      key USER_ID: String(256) not null; // emptyString "" for global settings
      CONTROLLING_AREA_ID: String(4);
      COMPANY_CODE_ID: String(4);
      PLANT_ID: String(8);
      REPORT_CURRENCY_ID: String(3);
      COMPONENT_SPLIT_ID: String(35);
      COSTING_SHEET_ID: String(15);
      LIFECYCLE_PERIOD_INTERVAL: hana.TINYINT not null default 12; /*  interval for all lifecycle periods
       * Default Value = 12 (yearly lifecycle periods) (only 12 is supported in V2.1)
       *  */
   };

   entity t_dimension {
      key DIMENSION_ID: String(10) not null;
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
   } /*technical configuration {
      column store;
   };*/

   entity t_dimension__text {
      key DIMENSION_ID: String(10) not null;
      key LANGUAGE: String(11) not null;
      DIMENSION_DESCRIPTION: String(50) not null;
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
   } /*technical configuration {
      column store;
   };*/

   // corresponds to ERP table DRAW
   entity t_document {
      key DOCUMENT_TYPE_ID: String(3) not null;
      key DOCUMENT_ID: String(40) not null;
      key DOCUMENT_VERSION: String(2) not null;
      key DOCUMENT_PART: String(3) not null;
      IS_CREATED_VIA_CAD_INTEGRATION: hana.TINYINT;
      DOCUMENT_STATUS_ID: String(2);
      DESIGN_OFFICE_ID: String(3);
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
      DELETED_FROM_SOURCE: hana.TINYINT;
   } /*technical configuration {
      column store;
   };*/

   // corresponds to ERP table DRAT
   entity t_document__text {
      key DOCUMENT_TYPE_ID: String(3) not null;
      key DOCUMENT_ID: String(40) not null;
      key DOCUMENT_VERSION: String(2) not null;
      key DOCUMENT_PART: String(3) not null;
      key LANGUAGE: String(11) not null;
      DOCUMENT_DESCRIPTION: String(250) not null;
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
   } /*technical configuration {
      column store;
   };*/

   // corresponds to ERP table DRAD
   entity t_document_material {
      key DOCUMENT_TYPE_ID: String(3) not null;
      key DOCUMENT_ID: String(40) not null;
      key DOCUMENT_VERSION: String(2) not null;
      key DOCUMENT_PART: String(3) not null;
      key MATERIAL_ID: String(40) not null;
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
      DELETED_FROM_SOURCE: hana.TINYINT;
   } /*technical configuration {
      column store;
   };*/

   // corresponds to ERP table TDWS
   entity t_document_status {
      key DOCUMENT_TYPE_ID: String(3) not null;
      key DOCUMENT_STATUS_ID: String(2) not null;
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
      DELETED_FROM_SOURCE: hana.TINYINT;
   } /*technical configuration {
      column store;
   };*/

   // corresponds to table TDWST
   entity t_document_status__text {
      key DOCUMENT_STATUS_ID: String(2) not null;
      key LANGUAGE: String(11) not null;
      DOCUMENT_STATUS_DESCRIPTION: String(250) not null;
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
   } /*technical configuration {
      column store;
   };*/

   // corresponds to ERP table TDWA
   entity t_document_type {
      key DOCUMENT_TYPE_ID: String(3) not null;
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
      DELETED_FROM_SOURCE: hana.TINYINT;
   } /*technical configuration {
      column store;
   };*/

   // corresponds to table TDWAT
   entity t_document_type__text {
      key DOCUMENT_TYPE_ID: String(3) not null;
      key LANGUAGE: String(11) not null;
      DOCUMENT_TYPE_DESCRIPTION: String(250) not null;
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
   } /*technical configuration {
      column store;
   };*/

   entity t_formula {
      key FORMULA_ID: Integer not null;
      PATH: String(127) not null; /* Path is used to describe what path is used to navigate through the client side models (business objects). Two examples should show this:
       * - In the side pane you want to show the material type id and the material type description. To come to the material type description you need to navigate the following way through the models: item -> material -> material_type. Thus, the path is shown as item.material.material_type
       * - In the admin UI you want  to maintain the cost center and the cost center is assigned to the controlling area, which is displayed with controlling area id and controlling area description. To navigate to the controlling area the following path is used. cost_center -> controlling_area. The path is shown as cost_center.controlling_area. */
      BUSINESS_OBJECT: String(127) not null;
      COLUMN_ID: String(127) not null;
      ITEM_CATEGORY_ID: Integer not null; /* Same enumeration as  t_item.ITEM_CATEGORY_ID
       * However, -1 means "default" or "for all categories" */
      IS_FORMULA_USED: hana.TINYINT not null;
      FORMULA_STRING: LargeString not null; // Must contain the formula string in Excel syntax
      FORMULA_DESCRIPTION: String(5000);
   } /*technical configuration {
      column store;
   };*/

   // table storing all frontend settings (corporate ones and user-defined ones)

   entity t_frontend_settings {
      key SETTING_ID: Integer not null;
      SETTING_NAME: String(250) not null;
      SETTING_TYPE: String(50) not null;
      USER_ID: String(256);
      SETTING_CONTENT: LargeString;
   } /*technical configuration {
      column store;

      unique index FRONTSETTNAME on (SETTING_NAME, SETTING_TYPE, USER_ID) asc;
   };*/


   entity t_initialization_state {
      PLC_VERSION: String(20) not null;
      GENERATION_TIME: Timestamp not null;
   } /*technical configuration {
      column store;
   };*/

   /* Following attributes are not stored in release 0.5 as they will be stored in temporary tables. It need to be investigated if these columns should be saved, if we need them for cross-project reporting
       * 
       * PriceForQuantity	
       * PriceForQuantityFixedPortion
       * PriceForQuantityVariablePortion	
       * 
       * OtherItemCost		(cost not included in any row of the costing sheet in ReportCurrency after calculation of overhead)	
       * OtherItemCostFixedPortion		
       * OtherItemCostVariablePortion
       * 
       * TotalItemCost		(cost in ReportCurrency after calculation of overhead)	
       * TotalItemCostFixedPortion	
       * TotalItemCostVariablePortion	
       * 
       *  */
   entity t_item {
      key ITEM_ID: Integer not null;
      key CALCULATION_VERSION_ID: Integer not null;
      PARENT_ITEM_ID: Integer;
      PREDECESSOR_ITEM_ID: Integer;
      IS_ACTIVE: hana.TINYINT not null;
      HIGHLIGHT_GREEN: hana.TINYINT;
      HIGHLIGHT_ORANGE: hana.TINYINT;
      HIGHLIGHT_YELLOW: hana.TINYINT;
      ITEM_CATEGORY_ID: Integer not null; /* 0 Calculation Version (Kalkulationsversion)
       * 1 Document (Dokument)
       * 2 Material (Material)
       * 3 Internal Activity (Eigenleistung) 
       * 4 External Activity (Fremdleistung) 
       * 5 Process (Prozess) 
       * 6 Subcontracting (Lohnbearbeitung) 
       * 7 Resources and Tools (Fertigungshilfsmittel) 
       * 8 Variable Item (Variable Position) 
       * 9 Text Item (Textposition) */
      ITEM_DESCRIPTION: String(250);
      REFERENCED_CALCULATION_VERSION_ID: Integer;
      COMMENT: String(5000);
      ACCOUNT_ID: String(10);
      DETERMINED_ACCOUNT_ID: String(10);
      DOCUMENT_TYPE_ID: String(3);
      DOCUMENT_ID: String(40);
      DOCUMENT_VERSION: String(2);
      DOCUMENT_PART: String(3);
      DOCUMENT_STATUS_ID: String(2);
      DESIGN_OFFICE_ID: String(3);
      MATERIAL_ID: String(40);
      MATERIAL_TYPE_ID: String(4); // Type is used in Material Acount Determination (Materialkontenfindung)
      MATERIAL_GROUP_ID: String(9); // Material Group is used for Purchasing Info Records
      IS_PHANTOM_MATERIAL: hana.TINYINT; // is used to flag the material as phantom material (dummy material) - in ERP this corresponds to SoBschl=50
      IS_CONFIGURABLE_MATERIAL: hana.TINYINT; // corresponds to KZKFG in MARA table
      MATERIAL_SOURCE: hana.TINYINT; /* used to define the source of the material used on item level
       * 1=PLC
       * 2=ERP */
      OVERHEAD_GROUP_ID: String(10);
      VALUATION_CLASS_ID: String(4);
      PURCHASING_GROUP: String(20);
      PURCHASING_DOCUMENT: String(10);
      LOCAL_CONTENT: Decimal(28,7);
      ACTIVITY_TYPE_ID: String(12);
      PROCESS_ID: String(12);
      LOT_SIZE: Decimal(28,7);
      LOT_SIZE_CALCULATED: Decimal(28,7);
      LOT_SIZE_IS_MANUAL: hana.TINYINT; // Indicates whether the current value has been entered manually. If true, this value must not be overriden by roll up or formula
      ENGINEERING_CHANGE_NUMBER_ID: String(250);
      COMPANY_CODE_ID: String(4);
      COST_CENTER_ID: String(10);
      PLANT_ID: String(8);
      WORK_CENTER_ID: String(15);
      WORK_CENTER_CATEGORY: String(50); /* can have the following values
       * - MACHINE
       * - MACHINE_GROUP
       * - LABOR
       * - LABOR_GROUP
       * - PRODUCTION_LINEW
       * - WORK_CENTER_ON_PRODUCTION_LINE
       * - PROCESSING_UNIT
       * - TRANSPORTATION_UNIT
       * - STORAGE_UNIT
       * - PLANT_MAINTENANCE
       * - ZONE
       * - STATION
       * - DESIGN_AND_DEVELOPMENT
       * - EXTERNAL PROCESSING_UNIT */
      EFFICIENCY: Decimal(28,7); // Default value from Work Center Efficiency
      BUSINESS_AREA_ID: String(15);
      PROFIT_CENTER_ID: String(10);
      QUANTITY: Decimal(28,7); // costing lot size from Material Master Data CO-View, will be get via FK in 0.7, used for price determination if pass-on flag is not set
      QUANTITY_CALCULATED: Decimal(28,7); // costing lot size from Material Master Data CO-View, will be get via FK in 0.7, used for price determination if pass-on flag is not set
      QUANTITY_IS_MANUAL: hana.TINYINT; // Indicates whether the current value has been entered manually. If true, this value must not be overriden by roll up or formula
      QUANTITY_UOM_ID: String(3);
      TOTAL_QUANTITY: Decimal(28,7);
      TOTAL_QUANTITY_UOM_ID: String(3);
      TOTAL_QUANTITY_DEPENDS_ON: Integer default 1; /* Enumeration would mean:
       * - Fix Quantity  = 0
       * - Dep. on Assembly Quantity = 1
       * - Dep. On Lot Size = 2
       *  */
      TOTAL_QUANTITY_OF_VARIANTS: Decimal(28,7);
      IS_RELEVANT_TO_COSTING_IN_ERP: hana.TINYINT;
      BASE_QUANTITY: Decimal(28,7) default 1;
      BASE_QUANTITY_CALCULATED: Decimal(28,7);
      BASE_QUANTITY_IS_MANUAL: hana.TINYINT;
      QUANTITY_PER_BASE_UNIT: Decimal(28,7);
      QUANTITY_PER_BASE_UNIT_UOM_ID: String(3);
      PRICE_FIXED_PORTION: Decimal(28,7);
      PRICE_FIXED_PORTION_CALCULATED: Decimal(28,7);
      PRICE_FIXED_PORTION_IS_MANUAL: hana.TINYINT; // Indicates whether the current value has been entered manually. If true, this value must not be overriden by roll up or formula
      PRICE_VARIABLE_PORTION: Decimal(28,7);
      PRICE_VARIABLE_PORTION_CALCULATED: Decimal(28,7);
      PRICE_VARIABLE_PORTION_IS_MANUAL: hana.TINYINT; // Indicates whether the current value has been entered manually. If true, this value must not be overriden by roll up or formula
      PRICE: Decimal(28,7);
      TRANSACTION_CURRENCY_ID: String(3);
      PRICE_UNIT: Decimal(28,7);
      PRICE_UNIT_CALCULATED: Decimal(28,7);
      PRICE_UNIT_IS_MANUAL: hana.TINYINT; // Indicates whether the current value has been entered manually. If true, this value must not be overriden by roll up or formula
      PRICE_UNIT_UOM_ID: String(3);
      IS_PRICE_SPLIT_ACTIVE: hana.TINYINT;
      IS_DISABLING_ACCOUNT_DETERMINATION: hana.TINYINT default 0;
      PRICE_ID: String(32);
      CONFIDENCE_LEVEL_ID: Integer;
      PRICE_SOURCE_ID: String(20);
      PRICE_SOURCE_TYPE_ID: hana.TINYINT; // 1-Material Price Source, 2-Activity Price Source, 3-Manual Price Source, 4-Calculated Price Source
      SURCHARGE: Decimal(28,7); /* contains the percentage of an applied surcharge for the price set for the item, if any; 
       * if no surcharge was applied to the price, the value is null; 
       * surcharge is applied to fix and variable part of the price, value is read-only; 
       * The field is used to display the applied surcharge of a price in the calculation view 
       * and in order to enable analytics on surcharges */
      IS_DISABLING_PRICE_DETERMINATION: hana.TINYINT;
      VENDOR_ID: String(10);
      TARGET_COST: Decimal(28,7);
      TARGET_COST_CALCULATED: Decimal(28,7);
      TARGET_COST_IS_MANUAL: hana.TINYINT; // Indicates whether the current value has been entered manually. If true, this value must not be overriden by roll up or formula
      TARGET_COST_CURRENCY_ID: String(3);
      CREATED_ON: Timestamp not null; // Data & Time
      CREATED_BY: String(256) not null;
      LAST_MODIFIED_ON: Timestamp not null; // Data & Time
      LAST_MODIFIED_BY: String(256) not null;
      PRICE_FOR_TOTAL_QUANTITY: Decimal(28,7);
      PRICE_FOR_TOTAL_QUANTITY_FIXED_PORTION: Decimal(28,7);
      PRICE_FOR_TOTAL_QUANTITY_VARIABLE_PORTION: Decimal(28,7);
      PRICE_FOR_TOTAL_QUANTITY2: Decimal(28,7);
      PRICE_FOR_TOTAL_QUANTITY2_FIXED_PORTION: Decimal(28,7);
      PRICE_FOR_TOTAL_QUANTITY2_VARIABLE_PORTION: Decimal(28,7);
      PRICE_FOR_TOTAL_QUANTITY3: Decimal(28,7);
      PRICE_FOR_TOTAL_QUANTITY3_FIXED_PORTION: Decimal(28,7);
      PRICE_FOR_TOTAL_QUANTITY3_VARIABLE_PORTION: Decimal(28,7);
      OTHER_COST: Decimal(28,7);
      OTHER_COST_FIXED_PORTION: Decimal(28,7);
      OTHER_COST_VARIABLE_PORTION: Decimal(28,7);
      TOTAL_COST: Decimal(28,7);
      TOTAL_COST_FIXED_PORTION: Decimal(28,7);
      TOTAL_COST_VARIABLE_PORTION: Decimal(28,7);
      TOTAL_COST_PER_UNIT: Decimal(28,7);
      TOTAL_COST_PER_UNIT_FIXED_PORTION: Decimal(28,7);
      TOTAL_COST_PER_UNIT_VARIABLE_PORTION: Decimal(28,7);
      TOTAL_COST2: Decimal(28,7);
      TOTAL_COST2_FIXED_PORTION: Decimal(28,7);
      TOTAL_COST2_VARIABLE_PORTION: Decimal(28,7);
      TOTAL_COST2_PER_UNIT: Decimal(28,7);
      TOTAL_COST2_PER_UNIT_FIXED_PORTION: Decimal(28,7);
      TOTAL_COST2_PER_UNIT_VARIABLE_PORTION: Decimal(28,7);
      TOTAL_COST3: Decimal(28,7);
      TOTAL_COST3_FIXED_PORTION: Decimal(28,7);
      TOTAL_COST3_VARIABLE_PORTION: Decimal(28,7);
      TOTAL_COST3_PER_UNIT: Decimal(28,7);
      TOTAL_COST3_PER_UNIT_FIXED_PORTION: Decimal(28,7);
      TOTAL_COST3_PER_UNIT_VARIABLE_PORTION: Decimal(28,7);
      BOM_COMPARE_KEY: String(256);
      CHILD_ITEM_CATEGORY_ID: Integer not null default 0;
   } /*technical configuration {
      column store;
   };*/

   entity t_item_calculated_values_component_split {
      key ITEM_ID: Integer not null;
      key CALCULATION_VERSION_ID: Integer not null;
      key COMPONENT_SPLIT_ID: String(35) not null;
      key COST_COMPONENT_ID: Integer not null;
      key ACCOUNT_ID: String(10) not null; /* - PK to be able to save more than one calculated value per cost component to have the possibility to build an line item view later on
       * - will be set to -1 if no account is saved (e.g. for sums) */
      COST: Decimal(28,7) not null;
      COST_FIXED_PORTION: Decimal(28,7) not null;
      COST_VARIABLE_PORTION: Decimal(28,7) not null;
      COST2: Decimal(28,7) not null default 0;
      COST2_FIXED_PORTION: Decimal(28,7) not null default 0;
      COST2_VARIABLE_PORTION: Decimal(28,7) not null default 0;
      COST3: Decimal(28,7) not null default 0;
      COST3_FIXED_PORTION: Decimal(28,7) not null default 0;
      COST3_VARIABLE_PORTION: Decimal(28,7) not null default 0;
   } /*technical configuration {
      column store;
   };*/

   entity t_item_calculated_values_costing_sheet {
      key ITEM_ID: Integer not null;
      key CALCULATION_VERSION_ID: Integer not null;
      key COSTING_SHEET_ROW_ID: String(5) not null; // PK to save calculated values per costing sheet row. As only one costing sheet is assigned to a calculation version the costing sheet id does not have to be a pk.
      key COSTING_SHEET_OVERHEAD_ROW_ID: Integer not null; /* PK to be able to save the fact that different dependencies for the overhead are valid (e.g. 10% beause it is in plant 1000, 5% because it is in company code=2000)
       * - 1: if calculated values is not an overhead
       *  */
      key ACCOUNT_ID: String(10) not null; /* - mainly used to identify credits, should be saved for every calculated value; optional if you have a split not dependent of account
       * - PK to be able to save more than one calculated value per costing sheet row, e.g. if you have different reasons why costs are assigned to the basis (item account is in the basis and overhead credit accout is in a basis in a lower costing sheet row as this overhead)
       * - will be set to -1 if no account is saved (e.g. for sums) */
      key IS_ROLLED_UP_VALUE: hana.TINYINT not null; /* relevant on assembly level: used to flag if the calculated value is comming from a roll-up (=1) or if it is a calculated value on this item row (=0)
       * on leaf item level it is alway set to 0
       * PK because on assembly level two values might exist */
      HAS_SUBITEMS: hana.TINYINT not null; /* 1=calcuated value belongs to an item on assembly level
       * 0=calculated value belongs to an item on leaf level */
      COST: Decimal(28,7) not null;
      COST_FIXED_PORTION: Decimal(28,7) not null;
      COST_VARIABLE_PORTION: Decimal(28,7) not null;
      COST2: Decimal(28,7) not null default 0;
      COST2_FIXED_PORTION: Decimal(28,7) not null default 0;
      COST2_VARIABLE_PORTION: Decimal(28,7) not null default 0;
      COST3: Decimal(28,7) not null default 0;
      COST3_FIXED_PORTION: Decimal(28,7) not null default 0;
      COST3_VARIABLE_PORTION: Decimal(28,7) not null default 0;
   } /*technical configuration {
      column store;
   };*/

   entity t_item_category {
      key ITEM_CATEGORY_ID: Integer not null; /* will become an NVARCHAR field in 1.1
       *
       * 0 Calculation Version (Kalkulationsversion)
       * 1 Document (Dokument)
       * 2 Material (Material)
       * 3 Internal Activity (Eigenleistung)
       * 4 External Activity (Fremdleistung)
       * 5 Process (Prozess)
       * 6 Subcontracting (Lohnbearbeitung)
       * 7 Resources and Tools (Fertigungshilfsmittel)
       * 8 Variable Item (Variable Position)
       * 9 Text Item (Textposition) */
      DISPLAY_ORDER: Integer not null; // Display order of item categories in any UI drop down
      key CHILD_ITEM_CATEGORY_ID: Integer not null default 0;
      ICON: String(10) not null default 'dummy';
      CREATED_ON: Timestamp; // Data & Time
      CREATED_BY: String(256);
      LAST_MODIFIED_ON: Timestamp; // Data & Time
      LAST_MODIFIED_BY: String(256);
      ITEM_CATEGORY_CODE: String(25) not null  default 'dummy';
   } /*technical configuration {
      column store;
   };*/

   entity t_item_category__text {
      key ITEM_CATEGORY_ID: Integer not null; /* 0 Calculation Version (Kalkulationsversion)
       * 1 Document (Dokument)
       * 2 Material (Material)
       * 3 Internal Activity (Eigenleistung)
       * 4 External Activity (Fremdleistung)
       * 5 Process (Prozess)
       * 6 Subcontracting (Lohnbearbeitung)
       * 7 Resources and Tools (Fertigungshilfsmittel)
       * 8 Variable Item (Variable Position)
       * 9 Text Item (Textposition) */
      key LANGUAGE: String(11) not null;
      ITEM_CATEGORY_DESCRIPTION: String(500);
      key CHILD_ITEM_CATEGORY_ID: Integer not null default 0;
      ITEM_CATEGORY_NAME: String(50);
   } /*technical configuration {
      column store;
   };*/

   entity t_item_referenced_version_component_split {
      key MASTER_CALCULATION_VERSION_ID: Integer not null;
      key REFERENCED_CALCULATION_VERSION_ID: Integer not null;
      key COMPONENT_SPLIT_ID: String(35) not null;
      key COST_COMPONENT_ID: Integer not null;
      key ACCOUNT_ID: String(10) not null;
      COST_FIXED_PORTION: Decimal(28,7) not null;
      COST_VARIABLE_PORTION: Decimal(28,7) not null;
      COST2_FIXED_PORTION : Decimal(28, 7) not null default 0;
		COST2_VARIABLE_PORTION : Decimal(28, 7) not null default 0;
		COST3_FIXED_PORTION : Decimal(28, 7) not null default 0;
		COST3_VARIABLE_PORTION : Decimal(28, 7) not null default 0;
   } /*technical configuration {
      column store;
   };*/

   entity t_item_referenced_version_component_split_temporary {
      key SESSION_ID: String(50) not null;
      key MASTER_CALCULATION_VERSION_ID: Integer not null;
      key REFERENCED_CALCULATION_VERSION_ID: Integer not null;
      key COMPONENT_SPLIT_ID: String(35) not null;
      key COST_COMPONENT_ID: Integer not null;
      key ACCOUNT_ID: String(10) not null;
      COST_FIXED_PORTION: Decimal(28,7) not null;
      COST_VARIABLE_PORTION: Decimal(28,7) not null;
      COST2_FIXED_PORTION : Decimal(28, 7) not null default 0;
		COST2_VARIABLE_PORTION : Decimal(28, 7) not null default 0;
		COST3_FIXED_PORTION : Decimal(28, 7) not null default 0;
		COST3_VARIABLE_PORTION : Decimal(28, 7) not null default 0;
   } /*technical configuration {
      column store;
   };*/

   entity t_item_temporary {
      key SESSION_ID: String(50) not null;
      key ITEM_ID: Integer not null;
      key CALCULATION_VERSION_ID: Integer not null;
      PARENT_ITEM_ID: Integer;
      PREDECESSOR_ITEM_ID: Integer;
      IS_ACTIVE: hana.TINYINT not null;
      HIGHLIGHT_GREEN: hana.TINYINT;
      HIGHLIGHT_ORANGE: hana.TINYINT;
      HIGHLIGHT_YELLOW: hana.TINYINT;
      ITEM_CATEGORY_ID: Integer not null; /* 0 Calculation Version (Kalkulationsversion)
       * 1 Component (Document) (Komponente (Dokument))
       * 2 Component (Material) (Komponente (Material))
       * 3 Internal Activity (Eigenleistung)
       * 4 External Activity (Fremdleistung)
       * 5 Process (Prozess)
       * 6 Subcontracting (Lohnbearbeitung)
       * 7 Resources and Tools (Fertigungshilfsmittel)
       * 8 Variable Item (Variable Position)
       * 9 Text Item (Textposition) */
      ITEM_DESCRIPTION: String(250);
      REFERENCED_CALCULATION_VERSION_ID: Integer;
      COMMENT: String(5000);
      ACCOUNT_ID: String(10);
      DETERMINED_ACCOUNT_ID: String(10);
      DOCUMENT_TYPE_ID: String(3);
      DOCUMENT_ID: String(40);
      DOCUMENT_VERSION: String(2);
      DOCUMENT_PART: String(3);
      DOCUMENT_STATUS_ID: String(2);
      DESIGN_OFFICE_ID: String(3);
      MATERIAL_ID: String(40);
      MATERIAL_TYPE_ID: String(4); // Type is used in Material Acount Determination (Materialkontenfindung)
      MATERIAL_GROUP_ID: String(9); // Material Group is used for Purchasing Info Records
      IS_PHANTOM_MATERIAL: hana.TINYINT; // is used to flag the material as phantom material (dummy material) - in ERP this corresponds to SoBschl=50
      IS_CONFIGURABLE_MATERIAL: hana.TINYINT; // corresponds to KZKFG in MARA table
      MATERIAL_SOURCE: hana.TINYINT; /* used to define the source of of the material used on item level
       * 1=PLC
       * 2=ERP */
      OVERHEAD_GROUP_ID: String(10);
      VALUATION_CLASS_ID: String(4);
      PURCHASING_GROUP: String(20);
      PURCHASING_DOCUMENT: String(10);
      LOCAL_CONTENT: Decimal(28,7);
      ACTIVITY_TYPE_ID: String(12);
      PROCESS_ID: String(12);
      LOT_SIZE: Decimal(28,7); // costing lot size from Material Master Data CO-View, will be get via FK in 0.7, used for price determination if pass-on flag is not set
      LOT_SIZE_CALCULATED: Decimal(28,7);
      LOT_SIZE_IS_MANUAL: hana.TINYINT; // Indicates whether the current value has been entered manually. If true, this value must not be overriden by roll up or formula
      ENGINEERING_CHANGE_NUMBER_ID: String(250);
      COMPANY_CODE_ID: String(4);
      COST_CENTER_ID: String(10);
      PLANT_ID: String(8);
      WORK_CENTER_ID: String(15);
      WORK_CENTER_CATEGORY: String(50); /* can have the following values
       * - MACHINE
       * - MACHINE_GROUP
       * - LABOR
       * - LABOR_GROUP
       * - PRODUCTION_LINEW
       * - WORK_CENTER_ON_PRODUCTION_LINE
       * - PROCESSING_UNIT
       * - TRANSPORTATION_UNIT
       * - STORAGE_UNIT
       * - PLANT_MAINTENANCE
       * - ZONE
       * - STATION
       * - DESIGN_AND_DEVELOPMENT
       * - EXTERNAL PROCESSING_UNIT */
      EFFICIENCY: Decimal(28,7); // Default value from Work Center Efficiency
      BUSINESS_AREA_ID: String(15);
      PROFIT_CENTER_ID: String(10);
      QUANTITY: Decimal(28,7); // quantity necessary for lot size 1 on calculation version level
      QUANTITY_CALCULATED: Decimal(28,7); // costing lot size from Material Master Data CO-View, will be get via FK in 0.7, used for price determination if pass-on flag is not set
      QUANTITY_IS_MANUAL: hana.TINYINT; // Indicates whether the current value has been entered manually. If true, this value must not be overriden by roll up or formula
      QUANTITY_UOM_ID: String(3);
      TOTAL_QUANTITY: Decimal(28,7); //  quantity necessary for calculation version lot size),(used for calculation engine, used for price determination if pass on flag is set)
      TOTAL_QUANTITY_UOM_ID: String(3);
      TOTAL_QUANTITY_DEPENDS_ON: Integer default 1; /* Enumeration would mean:
       * - Fix Quantity  = 0
       * - Dep. on Assembly Quantity = 1
       * - Dep. On Lot Size = 2
       *  */
      TOTAL_QUANTITY_OF_VARIANTS: Decimal(28,7);
      IS_RELEVANT_TO_COSTING_IN_ERP: hana.TINYINT;
      BASE_QUANTITY: Decimal(28,7) default 1;
      BASE_QUANTITY_CALCULATED: Decimal(28,7);
      BASE_QUANTITY_IS_MANUAL: hana.TINYINT;
      QUANTITY_PER_BASE_UNIT: Decimal(28,7);
      QUANTITY_PER_BASE_UNIT_UOM_ID: String(3);
      PRICE_FIXED_PORTION: Decimal(28,7);
      PRICE_FIXED_PORTION_CALCULATED: Decimal(28,7);
      PRICE_FIXED_PORTION_IS_MANUAL: hana.TINYINT; // Indicates whether the current value has been entered manually. If true, this value must not be overriden by roll up or formula
      PRICE_VARIABLE_PORTION: Decimal(28,7);
      PRICE_VARIABLE_PORTION_CALCULATED: Decimal(28,7);
      PRICE_VARIABLE_PORTION_IS_MANUAL: hana.TINYINT; // Indicates whether the current value has been entered manually. If true, this value must not be overriden by roll up or formula
      PRICE: Decimal(28,7);
      TRANSACTION_CURRENCY_ID: String(3);
      PRICE_UNIT: Decimal(28,7);
      PRICE_UNIT_CALCULATED: Decimal(28,7);
      PRICE_UNIT_IS_MANUAL: hana.TINYINT; // Indicates whether the current value has been entered manually. If true, this value must not be overriden by roll up or formula
      PRICE_UNIT_UOM_ID: String(3);
      IS_PRICE_SPLIT_ACTIVE: hana.TINYINT;
      IS_DISABLING_ACCOUNT_DETERMINATION: hana.TINYINT default 0;
      PRICE_ID: String(32);
      CONFIDENCE_LEVEL_ID: Integer;
      PRICE_SOURCE_ID: String(20);
      PRICE_SOURCE_TYPE_ID: hana.TINYINT; // 1-Material Price Source, 2-Activity Price Source, 3-Manual Price Source, 4-Calculated Price Source
      SURCHARGE: Decimal(28,7); /* contains the percentage of an applied surcharge for the price set for the item, if any;
       * if no surcharge was applied to the price, the value is null;
       * surcharge is applied to fix and variable part of the price, value is read-only;
       * The field is used to display the applied surcharge of a price in the calculation view
       * and in order to enable analytics on surcharges */
      IS_DISABLING_PRICE_DETERMINATION: hana.TINYINT;
      VENDOR_ID: String(10);
      TARGET_COST: Decimal(28,7);
      TARGET_COST_CALCULATED: Decimal(28,7);
      TARGET_COST_IS_MANUAL: hana.TINYINT; // Indicates whether the current value has been entered manually. If true, this value must not be overriden by roll up or formula
      TARGET_COST_CURRENCY_ID: String(3);
      CREATED_ON: Timestamp; // Data & Time
      CREATED_BY: String(256);
      LAST_MODIFIED_ON: Timestamp; // Data & Time
      LAST_MODIFIED_BY: String(256);
      PRICE_FOR_TOTAL_QUANTITY: Decimal(28,7);
      PRICE_FOR_TOTAL_QUANTITY_FIXED_PORTION: Decimal(28,7);
      PRICE_FOR_TOTAL_QUANTITY_VARIABLE_PORTION: Decimal(28,7);
      PRICE_FOR_TOTAL_QUANTITY2: Decimal(28,7);
      PRICE_FOR_TOTAL_QUANTITY2_FIXED_PORTION: Decimal(28,7);
      PRICE_FOR_TOTAL_QUANTITY2_VARIABLE_PORTION: Decimal(28,7);
      PRICE_FOR_TOTAL_QUANTITY3: Decimal(28,7);
      PRICE_FOR_TOTAL_QUANTITY3_FIXED_PORTION: Decimal(28,7);
      PRICE_FOR_TOTAL_QUANTITY3_VARIABLE_PORTION: Decimal(28,7);
      OTHER_COST: Decimal(28,7);
      OTHER_COST_FIXED_PORTION: Decimal(28,7);
      OTHER_COST_VARIABLE_PORTION: Decimal(28,7);
      TOTAL_COST: Decimal(28,7);
      TOTAL_COST_FIXED_PORTION: Decimal(28,7);
      TOTAL_COST_VARIABLE_PORTION: Decimal(28,7);
      TOTAL_COST_PER_UNIT: Decimal(28,7);
      TOTAL_COST_PER_UNIT_FIXED_PORTION: Decimal(28,7);
      TOTAL_COST_PER_UNIT_VARIABLE_PORTION: Decimal(28,7);
      TOTAL_COST2: Decimal(28,7);
      TOTAL_COST2_FIXED_PORTION: Decimal(28,7);
      TOTAL_COST2_VARIABLE_PORTION: Decimal(28,7);
      TOTAL_COST2_PER_UNIT: Decimal(28,7);
      TOTAL_COST2_PER_UNIT_FIXED_PORTION: Decimal(28,7);
      TOTAL_COST2_PER_UNIT_VARIABLE_PORTION: Decimal(28,7);
      TOTAL_COST3: Decimal(28,7);
      TOTAL_COST3_FIXED_PORTION: Decimal(28,7);
      TOTAL_COST3_VARIABLE_PORTION: Decimal(28,7);
      TOTAL_COST3_PER_UNIT: Decimal(28,7);
      TOTAL_COST3_PER_UNIT_FIXED_PORTION: Decimal(28,7);
      TOTAL_COST3_PER_UNIT_VARIABLE_PORTION: Decimal(28,7);
      IS_DIRTY: hana.TINYINT not null default 0;
      IS_DELETED: hana.TINYINT not null default 0;
      BOM_COMPARE_KEY: String(256);
      CHILD_ITEM_CATEGORY_ID: Integer not null default 0;
   } /*technical configuration {
      column store;
   };*/

   // corresponds to table T024L
   entity t_design_office {
      key DESIGN_OFFICE_ID: String(3) not null;
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
   } /*technical configuration {
      column store;
   };*/

   /* corresponds to table T024X
       *  */
   entity t_design_office__text {
      key DESIGN_OFFICE_ID: String(3) not null;
      key LANGUAGE: String(11) not null;
      DESIGN_OFFICE_DESCRIPTION: String(250) not null;
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
   } /*technical configuration {
      column store;
   };*/

   entity t_language {
      key LANGUAGE: String(11) not null;
      TEXTS_MAINTAINABLE: hana.TINYINT not null;
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
      MAPPING_LANGUAGE_ID: String(1);
   } /*technical configuration {
      column store;
   };*/

   // table storing all layouts (corporate ones and user-defined ones)
   entity t_layout {
      key LAYOUT_ID: Integer not null;
      LAYOUT_NAME: String(127);
      IS_CORPORATE: hana.TINYINT not null;
      LAYOUT_TYPE: hana.TINYINT;/* used to define the layout type
       * 1=PLC
       * 2=BOMCOMPARE */
   } /*technical configuration {
      column store;
   };*/

   // table used to save what columns with what width are shown in what layout
   entity t_layout_column {
      key LAYOUT_ID: Integer not null;
      key DISPLAY_ORDER: Integer not null;
      PATH: String(127);
      BUSINESS_OBJECT: String(127);
      COLUMN_ID: String(127);
      COSTING_SHEET_ROW_ID: String(5);
      COST_COMPONENT_ID: Integer;
      COLUMN_WIDTH: Integer; // Column Width is expressed in a device-independent unit. Value is generated by the .Net-Framework, rounded and saved as an integer (see also here: https://msdn.microsoft.com/de-de/library/system.windows.frameworkelement.width(v=vs.110).aspx)
   } /*technical configuration {
      column store;
   };*/

   // table stores are fields which are hidden in a specific layout
   entity t_layout_hidden_field {
      key LAYOUT_ID: Integer not null;
      key PATH: String(127) not null;
      key BUSINESS_OBJECT: String(127) not null;
      key COLUMN_ID: String(127) not null;
   } /*technical configuration {
      column store;
   };*/

   // table to know if a layout is a user layouts or a corporate layout and if it is current
   entity t_layout_personal {
      key LAYOUT_ID: Integer not null;
      key USER_ID: String(256) not null;
      IS_CURRENT: hana.TINYINT not null;
   } /*technical configuration {
      column store;
   };*/

   // stores the total quantity values per rule, which is specified in the t_project_total_quantities
   entity t_lifecycle_period_value {
      key RULE_ID: Integer not null; // Unique ID to describe the settings/dependencies for one row in the table total quantities per calculation of a project with the values per lifecycle period
      key LIFECYCLE_PERIOD_FROM: Integer not null;
      VALUE: Decimal(28,7) not null;
   } /*technical configuration {
      column store;
   };*/

   // Total quantities are stored also in the lifecycle versions; however the values in the project view should be displayed independently to the values of the version, e.g. if no version is selected, values should be stored as well.
   entity t_project_total_quantities {
      key RULE_ID: Integer not null; // unique ID to describe the settings for one row (not the values per lifecycle period) in the table of Total Quantities in the Project View.
      CALCULATION_ID: Integer not null;
      CALCULATION_VERSION_ID: Integer;
      MATERIAL_PRICE_SURCHARGE_STRATEGY: String(50) not null default 'NO_SURCHARGES'; /* indicates the strategy used for applying surcharges on materials;
       * is an enumeration of the following values:
       * * NO_SURCHARGES: no surcharges will be applied, is the default value for this column
       * * WITH_PRICE_DETERMINATION: a price determination will be executed and the surcharges will be applied on top of the found prices;
       * * WITHOUT_PRICE_DETERMINATION: no price determination will be executed; surcharges will be applied on top of the price of the previous lifecycle version;
       * * IF_NO_PRICE_FOUND: a price determination will be executed, but surcharges are only applied for items for which no price can be found */
      ACTIVITY_PRICE_SURCHARGE_STRATEGY: String(50) not null default 'NO_SURCHARGES'; /* indicates the strategy used for applying surcharges on activities;
       * is an enumeration of the following values:
       * * NO_SURCHARGES: no surcharges will be applied, is the default value for this column
       * * WITH_PRICE_DETERMINATION: a price determination will be executed and the surcharges will be applied on top of the found prices;
       * * WITHOUT_PRICE_DETERMINATION: no price determination will be executed; surcharges will be applied on top of the price of the previous lifecycle version;
       * * IF_NO_PRICE_FOUND: a price determination will be executed, but surcharges are only applied for items for which no price can be found */
      LAST_MODIFIED_ON: Timestamp not null; // Data & Time
      LAST_MODIFIED_BY: String(256) not null;
      /* Is generated by using the sequence sap.plc.db.s_rule_id in order to ensure the rule id is unique across t_project_lifecycle_configuration, t_project_material_price_surcharges and t_project_activity_price_surcharges */
   } /*technical configuration {
      column store;
   };*/

   // t_lock is used to define that the first user accessing this object locks it. It is used for the pessimistic locking approach.
   entity t_lock {
      key LOCK_OBJECT: String(35) not null;
      key USER_ID: String(256) not null;
      LAST_UPDATED_ON: Timestamp not null default timestamp'2016-01-01 09:00:00.0000000';
   } /*technical configuration {
      column store;
   };*/

   /* Use Case:  This table maintains the log of all the scripts that are run using the postinstall framework.
       * Each script in the framework contains three steps i.e. Check, Run and Clean. Check and Run are executed for each script but Clean is only executed when Run fails.
       *  These steps are logged into the t_installation_log table and the user can refer to this table to find out the failing script or the current version that is deployed.
       * Columns Description:
       * - "VERSION", "VERSION_SP" and "VERSION_PATCH": Used to denote the Database Version that a script belongs to.
       * - "NAME": Contains the name of the script that is executed.
       * - "Timestamp": Time stamp of executing script.
       * - "EXECUTED_BY":  User_ID of the logged in user executing the service.
       * - "STEP":  It stores the step of the script which is performed i.e. Check, Run and Clean.
       * - "STATE": It stores the status of a step, i.e. started, finished and error. */
   entity t_installation_log {
      key VERSION: Integer not null;
      key VERSION_SP: Integer not null;
      key VERSION_PATCH: Integer not null;
      key NAME: String(256) not null;
      key TIME: Timestamp not null;
      EXECUTED_BY: String(256) not null;
      STEP: String(10) not null;
      STATE: String(10) not null;
   } /*technical configuration {
      column store;
   };*/

   // MARA + MAKT
   entity t_material {
      key MATERIAL_ID: String(40) not null;
      BASE_UOM_ID: String(3);
      MATERIAL_GROUP_ID: String(9); // Material Group is used for Purchasing Info Records
      MATERIAL_TYPE_ID: String(4); // Type is used in Material Acount Determination (Materialkontenfindung)
      IS_CREATED_VIA_CAD_INTEGRATION: hana.TINYINT;
      IS_PHANTOM_MATERIAL: hana.TINYINT; // is used to flag the material as phantom material (dummy material) - in ERP this corresponds to SoBschl=50
      IS_CONFIGURABLE_MATERIAL: hana.TINYINT; // corresponds to KZKFG in MARA table
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
      DELETED_FROM_SOURCE: hana.TINYINT;
   } /*technical configuration {
      column store;
   };*/

   entity t_material__text {
      key MATERIAL_ID: String(40) not null;
      key LANGUAGE: String(11) not null;
      MATERIAL_DESCRIPTION: String(250);
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
   } /*technical configuration {
      column store;
   };*/

   entity t_material_account_determination {
      key CONTROLLING_AREA_ID: String(4) not null;
      key MATERIAL_TYPE_ID: String(4) not null; // Type is used in Material Acount Determination (Materialkontenfindung)
      key PLANT_ID: String(8) not null;
      key VALUATION_CLASS_ID: String(4) not null;
      ACCOUNT_ID: String(10) not null;
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
      DELETED_FROM_SOURCE: hana.TINYINT;
   } /*technical configuration {
      column store;
   };*/

   // corresponds to T023 in ERP
   entity t_material_group {
      key MATERIAL_GROUP_ID: String(9) not null; // Material Group is used for Purchasing Info Records
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
      DELETED_FROM_SOURCE: hana.TINYINT;
   } /*technical configuration {
      column store;
   };*/

   // corresponds to T023T
   entity t_material_group__text {
      key MATERIAL_GROUP_ID: String(9) not null; // Material Group is used for Purchasing Info Records
      key LANGUAGE: String(11) not null;
      MATERIAL_GROUP_DESCRIPTION: String(250);
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
   } /*technical configuration {
      column store;
   };*/

   // corresponds to MBEW on ERP side
   entity t_material_plant {
      key MATERIAL_ID: String(40) not null;
      key PLANT_ID: String(8) not null;
      OVERHEAD_GROUP_ID: String(10);
      VALUATION_CLASS_ID: String(4);
      MATERIAL_LOT_SIZE: Decimal(28,7);
      MATERIAL_LOT_SIZE_UOM_ID: String(3);
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
      DELETED_FROM_SOURCE: hana.TINYINT; 
   } /*technical configuration {
      column store;
   };*/

   // corresponds to T134 in ERP
   entity t_material_type {
      key MATERIAL_TYPE_ID: String(4) not null; // Type is used in Material Acount Determination (Materialkontenfindung)
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
      DELETED_FROM_SOURCE: hana.TINYINT;
   } /*technical configuration {
      column store;
   };*/

   // corresponds to T134T in ERP
   entity t_material_type__text {
      key MATERIAL_TYPE_ID: String(4) not null; // Type is used in Material Acount Determination (Materialkontenfindung)
      key LANGUAGE: String(11) not null;
      MATERIAL_TYPE_DESCRIPTION: String(250);
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
   } /*technical configuration {
      column store;
   };*/

   // t_metadata contains all required metadata about standard and custom PLC fields. As such it also features the fields of the item_metadata.xlsx .
   entity t_metadata {
      key PATH: String(127) not null; /* Path is used to describe what path is used to navigate through the client side models (business objects). Two examples should show this:
       * - In the side pane you want to show the material type id and the material type description. To come to the material type description you need to navigate the following way through the models: item -> material -> material_type. Thus, the path is shown as item.material.material_type
       * - In the admin UI you want  to maintain the cost center and the cost center is assigned to the controlling area, which is displayed with controlling area id and controlling area description. To navigate to the controlling area the following path is used. cost_center -> controlling_area. The path is shown as cost_center.controlling_area. */
      key BUSINESS_OBJECT: String(127) not null; // Must contain the name of an existing standard table in the current PLC datamodel or an extension table in the customer schema
      key COLUMN_ID: String(127) not null; // Must contain the name of an existing column in the table identified by TABLE_ID
      IS_CUSTOM: hana.TINYINT not null default 0; /* If 0 (default), TABLE_ID and COLUMN_ID refer to an existing field in the PLC schema. Otherwise they point to a field in the customer schema.
       *  */
      ROLLUP_TYPE_ID: Integer default 0; /* Specifies whether this field is going to be rolled up, and, if yes, which aggregation function is to be used.
       * 0 = no rollup
       * 1 = SUM
       * 2 = MIN
       * 3 = MAX
       * 4 = AVG
       * 5 = COUNT
       * 6 = DISTINCT
       *  */
      SIDE_PANEL_GROUP_ID: Integer;
      DISPLAY_ORDER: Integer; // Display order of columns within the group
      TABLE_DISPLAY_ORDER: Integer; // Display order of columns within the admin grid, this is especially used for the uom when multiple value fields have the same uom in order to have the column one one time in the table.
      REF_UOM_CURRENCY_PATH: String(127); /* Path is used to describe what path is used to navigate through the client side models (business objects). Two examples should show this:
       * - In the side pane you want to show the material type id and the material type description. To come to the material type description you need to navigate the following way through the models: item -> material -> material_type. Thus, the path is shown as item.material.material_type
       * - In the admin UI you want  to maintain the cost center and the cost center is assigned to the controlling area, which is displayed with controlling area id and controlling area description. To navigate to the controlling area the following path is used. cost_center -> controlling_area. The path is shown as cost_center.controlling_area.
       *
       *  */
      REF_UOM_CURRENCY_BUSINESS_OBJECT: String(127); // only valid for numeric fields; references the table where the column with the UoM or the currency can be find, which belongs to this value
      REF_UOM_CURRENCY_COLUMN_ID: String(127); // only valid for numeric fields; references the column where the UoM or the currency can be found, which belongs to this value
      UOM_CURRENCY_FLAG: hana.TINYINT; /* 1: for all columns which store a UoM or currency
       * 0: for all columns which does not store a UoM or currency
       * necessary for UI to know which column should be displayed independentyl and which column should be displayed as UoM/currency field */
      SEMANTIC_DATA_TYPE: String(35) not null; /* from Item_Metadata.xlsx
       *
       * Mapping from HANA datatypes to C# datatypes. For example, HANA does not know BOOLEAN and uses TINYINT instead. However,  BOOLEAN exists as a datatype in C# and the customer would also rather choose BOOLEAN.  Therefore, we need to store that TINYINT actually means BOOLEAN for a particular field.
       *
       * Possible values are:
       * 0 : Date
       * 1 : Time
       * 2 : TimeStamp
       * 3 : Currency
       * 4 : Unit of Measure
       * 5 : String
       * 6 : Number  (Decimal (28,7))
       * 7 : Boolean
       * ---
       * 8 : BooleanInt
       * 9 : Integer
       * 10 : PositiveInteger
       * 11 : NegativeInteger
       *
       * 0-7 are the semantic datatypes the enduser can choose from when creating a custom field.
       *
       * 8-11 are additional semantic  data types that are used for semantic validation between frontend and backend. For example, new item IDs are always PostiveIntegers, client-side handles for newly created entities are always NegativeIntegers. BooleanInt expresses that the value is represented by 0 and 1, whereas Boolean applies TRUE and FALSE. This distinction is also required for validity checks.
       *
       * Decimals are always 28,7.
       * The length of a string is specified in SEMANTIC_DATA_TYPE_LENGTH. */
      SEMANTIC_DATA_TYPE_ATTRIBUTES: String(250); /* Used to define the SEMANTIC_DATA_TYPE in more detail. It is maintained in the following way:
       * 	- For String fields it describes the length with the syntax: "length=20"
       * 	- For Decimal fields it specifies precision and scale with the syntax:  "precision=28; scale=7"
       * 	- For integer and decimal field values, this syntax is used:
       * "lowerBound=0; upperBound = 100"
       *
       *  */
      VALIDATION_REGEX_ID: String(30);
      PROPERTY_TYPE: Integer; /*         CostingSheetRow = 0,
       *         Price = 1,
       *         Number = 2,
       *         Text = 3,
       *         TextArea = 4,
       *         Boolean = 5,
       *         UoM = 6,
       *         Currency = 7,
       *         MasterData = 8,
       *         ItemCategory = 9,
       *         CustomField = 10 */
      IS_IMMUTABLE_AFTER_SAVE: hana.TINYINT;
      IS_REQUIRED_IN_MASTERDATA: hana.TINYINT; // from Item_Metadata.xlsx
      IS_WILDCARD_ALLOWED: hana.TINYINT; // from Item_Metadata.xlsx
      IS_USABLE_IN_FORMULA: hana.TINYINT;
      RESOURCE_KEY_DISPLAY_NAME: String(256); /* This field contains the string that is shown on the UI as the field's label. This is mandatory for new custom fields and shall later also be used for standard fields.
       *  */
      RESOURCE_KEY_DISPLAY_DESCRIPTION: String(256);
      CREATED_ON: Timestamp;
      CREATED_BY: String(256);
      LAST_MODIFIED_ON: Timestamp;
      LAST_MODIFIED_BY: String(256);
   } /*technical configuration {
      column store;
   };*/

   entity t_metadata__text {
      key PATH: String(127) not null; /* Path is used to describe what path is used to navigate through the client side models (business objects). Two examples should show this:
       * - In the side pane you want to show the material type id and the material type description. To come to the material type description you need to navigate the following way through the models: item -> material -> material_type. Thus, the path is shown as item.material.material_type
       * - In the admin UI you want  to maintain the cost center and the cost center is assigned to the controlling area, which is displayed with controlling area id and controlling area description. To navigate to the controlling area the following path is used. cost_center -> controlling_area. The path is shown as cost_center.controlling_area.
       *
       *  */
      key COLUMN_ID: String(127) not null;
      key LANGUAGE: String(11) not null;
      DISPLAY_NAME: String(250); /* This field contains the string that is shown on the UI as the field's label. This is mandatory for new custom fields and shall later also be used for standard fields.
       *  */
      DISPLAY_DESCRIPTION: String(5000);
      CREATED_ON: Timestamp;
      CREATED_BY: String(256);
      LAST_MODIFIED_ON: Timestamp;
      LAST_MODIFIED_BY: String(256);
   } /*technical configuration {
      column store;
   };*/

   /* As of Dec 2014, there exists an Excel file  item_metadata.xlsx  which specifies the different metadata properties of an item  field (isMandatory, ..., Comments). Four of the metadata properties depend on the item category and whether the item has children (isMandatory, isRequiredForCompleteness, isReadOnly, isTransferable). For example, if we have a "preliminary material", the MATERIAL_ID is not required for completing an item entry. The opposite  is true when we have an item category "material". In addition some of the fields also differ if the current item has children.
       *
       * This kind of metadata is maintained  in the Excel file and imported from Excel into XS for validity checks.
       *
       * Handling and persisting such metadata for custom fields requires corresponding storage in the database. Accordingly, it is expected that the metadata contained in Excel will eventually also be replicated into the PLC database.
       *
       * Note, that eventually such metadata is also envisioned for the fields on higher levels and potentially also master data. On such levels we do not have to distinguish between different item categories at all.
       * However, for the metadata properties depending on item category, there is a 1:N relation between the description of the field itself, e.g., MATERIAL_ID, and its different properties depending on the item category (as outlined in the example above).
       *
       * The four metadata properties for item fields which depend on the item category are captured in this table. Accordingly, we find foreign keys to t_metadata and two additional keys, namely, ITEM_CATEGORY_ID and SUBITEM_STATE.
       * If we maintain metadata properties for a field that does not depend on item category and/or has children, the two additional keys are amended by default values.
       *
       *
       *
       *  */
   entity t_metadata_item_attributes {
      key PATH: String(127) not null; /* Path is used to describe what path is used to navigate through the client side models (business objects). Two examples should show this:
       * - In the side pane you want to show the material type id and the material type description. To come to the material type description you need to navigate the following way through the models: item -> material -> material_type. Thus, the path is shown as item.material.material_type
       * - In the admin UI you want  to maintain the cost center and the cost center is assigned to the controlling area, which is displayed with controlling area id and controlling area description. To navigate to the controlling area the following path is used. cost_center -> controlling_area. The path is shown as cost_center.controlling_area.
       *
       *
       *  */
      key BUSINESS_OBJECT: String(127) not null; // Refers to t_metadata.TABLE_ID
      key COLUMN_ID: String(127) not null; // Refers to t_metadata.COLUMN_ID
      key ITEM_CATEGORY_ID: Integer not null; /* Same enumeration as  t_item.ITEM_CATEGORY_ID
       * However, -1 means "default" or "for all categories" */
      key SUBITEM_STATE: hana.SMALLINT not null; /* If true, the current entry in this table refers to the meaning of the metadata properties below when the corresponding item has child items
       * However, -1 means "default" or "do not care"
       *  */
      IS_MANDATORY: hana.TINYINT; /* Stems from Item_Metadata.xlsx
       * Field has to be entered such that calculation version can be saved
       *
       * Field depends on item type and if item has children
       * Field is potentially relevant for higher levels and master data tables
       *  */
      IS_READ_ONLY: hana.TINYINT; /* Stems from Item_Metadata.xlsx
       * Some fields might contain calculated values, e.g., the price of an assembly item whose value has been rolled up and cannot be changed accordingly.
       * Field depends on item type and if item has children
       * Field is potentially relevant for higher levels and master data tables
       *  */
      IS_TRANSFERABLE: hana.TINYINT; /* Stems from Item_Metadata.xlsx
       * Field depends on item type and if item has children
       * Field is potentially relevant for higher levels and master data tables
       *  */
      DEFAULT_VALUE: String(5000);
      CREATED_ON: Timestamp;
      CREATED_BY: String(256);
      LAST_MODIFIED_ON: Timestamp;
      LAST_MODIFIED_BY: String(256);
   } /*technical configuration {
      column store;
   };*/

   entity t_metadata_selection_displayed {
      key PATH: String(127) not null; /* Path is used to describe what path is used to navigate through the client side models (business objects). Two examples should show this:
       * - In the side pane you want to show the material type id and the material type description. To come to the material type description you need to navigate the following way through the models: item -> material -> material_type. Thus, the path is shown as item.material.material_type
       * - In the admin UI you want  to maintain the cost center and the cost center is assigned to the controlling area, which is displayed with controlling area id and controlling area description. To navigate to the controlling area the following path is used. cost_center -> controlling_area. The path is shown as cost_center.controlling_area.
       *
       *  */
      key BUSINESS_OBJECT: String(127) not null; // Must contain the name of an existing standard table in the current PLC datamodel or an extension table in the customer schema
      key COLUMN_ID: String(127) not null; // Must contain the name of an existing column in the table identified by TABLE_ID
      key DISPLAY_ORDER: Integer not null; // Display order of groups
      DISPLAYED_PATH: String(127) not null;
      DISPLAYED_BUSINESS_OBJECT: String(127) not null;
      DISPLAYED_COLUMN_ID: String(127) not null;
   } /*technical configuration {
      column store;
   };*/

   entity t_metadata_selection_filter {
      key PATH: String(127) not null; /* Path is used to describe what path is used to navigate through the client side models (business objects). Two examples should show this:
       * - In the side pane you want to show the material type id and the material type description. To come to the material type description you need to navigate the following way through the models: item -> material -> material_type. Thus, the path is shown as item.material.material_type
       * - In the admin UI you want  to maintain the cost center and the cost center is assigned to the controlling area, which is displayed with controlling area id and controlling area description. To navigate to the controlling area the following path is used. cost_center -> controlling_area. The path is shown as cost_center.controlling_area.
       *
       *  */
      key BUSINESS_OBJECT: String(127) not null; // Must contain the name of an existing standard table in the current PLC datamodel or an extension table in the customer schema
      key COLUMN_ID: String(127) not null; // Must contain the name of an existing column in the table identified by TABLE_ID
      key FILTER_PATH: String(127) not null;
      key FILTER_BUSINESS_OBJECT: String(127) not null;
      key FILTER_COLUMN_ID: String(127) not null;
   } /*technical configuration {
      column store;
   };*/

   // Contains a list of all currently open user sessions including links to open calculation versions and RW/RO locks.
   entity t_open_calculation_versions {
      key SESSION_ID: String(50) not null;
      key CALCULATION_VERSION_ID: Integer not null;
      key CONTEXT: String(35) not null default 'calculation_version';
      IS_WRITEABLE: hana.TINYINT not null;
   } /*technical configuration {
      column store;
      unique index UNIQUE_IS_WRITEABLE_SESSION_ID_CALCULATION_VERSION_ID_CONTEXT_LOCK on (
         IS_WRITEABLE,
	      SESSION_ID,
	      CALCULATION_VERSION_ID,
	      CONTEXT
         ) asc;
      
   };*/

   // Contains a list of all projects currently opened in the project view and 1 for Write-Lock and 0 for Read-Only-Lock
   entity t_open_projects {
      key SESSION_ID: String(50) not null;
      key PROJECT_ID: String(35) not null;
      IS_WRITEABLE: hana.TINYINT not null;
   } /*technical configuration {
      column store;
   };*/

   // corresponds to ERP table TCK14
   entity t_overhead_group {
      key OVERHEAD_GROUP_ID: String(10) not null;
      key PLANT_ID: String(8) not null;
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
      DELETED_FROM_SOURCE: hana.TINYINT;
   } /*technical configuration {
      column store;
   };*/

   // corresponds to ERP table TCK15
   entity t_overhead_group__text {
      key OVERHEAD_GROUP_ID: String(10) not null;
      key PLANT_ID: String(8) not null;
      key LANGUAGE: String(11) not null;
      OVERHEAD_GROUP_DESCRIPTION: String(250);
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
   } /*technical configuration {
      column store;
   };*/

   // corresponds to ERP table T001W
   entity t_plant {
      key PLANT_ID: String(8) not null;
      COMPANY_CODE_ID: String(4) not null;
      COUNTRY: String(100);
      POSTAL_CODE: String(35);
      REGION: String(100);
      CITY: String(100);
      STREET_NUMBER_OR_PO_BOX: String(100);
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
      DELETED_FROM_SOURCE: hana.TINYINT;
   } /*technical configuration {
      column store;
   };*/

   entity t_plant__text {
      key PLANT_ID: String(8) not null;
      key LANGUAGE: String(11) not null;
      PLANT_DESCRIPTION: String(250);
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
   } /*technical configuration {
      column store;
   };*/

   entity t_material_price__first_version {
      key PRICE_ID: String(32) not null;
      key _VALID_FROM: Timestamp not null;
      _CREATED_BY: String(256);
   } /*technical configuration {
      column store;
   };*/

   entity t_activity_price__first_version {
      key PRICE_ID: String(32) not null;
      key _VALID_FROM: Timestamp not null;
      _CREATED_BY: String(256);
   } /*technical configuration {
      column store;
   };*/

   // corresponds to price parts of MBEW in 1.0 - later it will be enriched by additional prices
   entity t_material_price {
      key PRICE_ID: String(32) not null;
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      PRICE_SOURCE_ID: String(20) not null; // 1=PLC Standard Pr
      MATERIAL_ID: String(40) not null;
      PLANT_ID: String(8) not null default '*';
      VENDOR_ID: String(10) not null default '*';
      PURCHASING_GROUP: String(20);
      PURCHASING_DOCUMENT: String(10);
      LOCAL_CONTENT: Decimal(28,7);
      PROJECT_ID: String(35) not null default '*';
      CUSTOMER_ID: String(10) not null default '*';
      VALID_FROM: Date not null;
      VALID_TO: Date;
      VALID_FROM_QUANTITY: Decimal(28,7) not null default 1;
      VALID_TO_QUANTITY: Decimal(28,7);
      PRICE_FIXED_PORTION: Decimal(28,7) not null;
      PRICE_VARIABLE_PORTION: Decimal(28,7) not null;
      TRANSACTION_CURRENCY_ID: String(3) not null;
      PRICE_UNIT: Decimal(28,7) not null;
      PRICE_UNIT_UOM_ID: String(3) not null;
      IS_PRICE_SPLIT_ACTIVE: hana.TINYINT default 0;
      IS_PREFERRED_VENDOR: hana.TINYINT not null default 0;
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
      DELETED_FROM_SOURCE: hana.TINYINT;
      _VALID_FROM_FIRST_VERSION: Timestamp; // Date & Time
      _CREATED_BY_FIRST_VERSION: String(256);
   } /*technical configuration {
      column store;
      unique index MATERIALPRICE on (
        PRICE_SOURCE_ID,
        MATERIAL_ID,
        PLANT_ID,
        VENDOR_ID,
        PROJECT_ID,
        CUSTOMER_ID,
        VALID_FROM,
        VALID_FROM_QUANTITY,
        _VALID_FROM
        ) asc;
      unique index MATERIALPRICE_UPSERT on (
        PRICE_ID,
        _VALID_TO
      ) asc;
   };*/

   entity t_price_component {
      key PRICE_ID: String(32) not null;
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      key ACCOUNT_ID: String(10) not null;
      PRICE_FIXED: Decimal(28,7) not null;
      PRICE_VARIABLE: Decimal(28,7) not null;
      key CONTROLLING_AREA_ID: String(4) not null;
   } /*technical configuration {
      column store;
   };*/

   entity t_tag {
      key TAG_ID: Integer;
      TAG_NAME: String(50) not null;
      CREATED_ON: Timestamp; // Date & Time
      CREATED_BY: String(256);
   }  /*technical configuration {
        column store;
        unique index TAG on (TAG_NAME) asc;
   };*/

   entity t_entity_tags {
      key TAG_ID: Integer not null;
      key ENTITY_TYPE: String(1) not null; // C - calculation, V - calculation version
      key ENTITY_ID: Integer not null;
      CREATED_ON: Timestamp; // Date & Time
      CREATED_BY: String(256);
   }  /*technical configuration {
        column store;
   };*/

   entity t_price_source {
      key PRICE_SOURCE_ID: String(20) not null;
      key PRICE_SOURCE_TYPE_ID: hana.TINYINT not null default 1; // 1-Material Price Source, 2-Activity Price Source, 3-Manual Price Source, 4-Calculated Price Source
      CONFIDENCE_LEVEL_ID: Integer;
      DETERMINATION_SEQUENCE: hana.TINYINT not null default 0;
      CREATED_ON: Timestamp; // Date & Time
      CREATED_BY: String(256);
      LAST_MODIFIED_ON: Timestamp; // Date & Time
      LAST_MODIFIED_BY: String(256);
   } /*technical configuration {
      column store;
   };*/

   entity t_price_source__text {
      key PRICE_SOURCE_ID: String(20) not null;
      key PRICE_SOURCE_TYPE_ID: hana.TINYINT not null default 1; // 1-Material Price Source, 2-Activity Price Source, 3-Manual Price Source, 4-Calculated Price Source
      key LANGUAGE: String(11) not null;
      PRICE_SOURCE_DESCRIPTION: String(250);
   } /*technical configuration {
      column store;
   };*/

    entity t_status {
      key STATUS_ID: String(20) not null;
      IS_ACTIVE: hana.TINYINT not null default 0;
      IS_DEFAULT: hana.TINYINT not null default 0;
      IS_STATUS_COPYABLE: hana.TINYINT not null default 0;
      DISPLAY_ORDER: hana.SMALLINT not null;
      CREATED_ON: Timestamp; // Date & Time
      CREATED_BY: String(256);
      LAST_MODIFIED_ON: Timestamp; // Date & Time
      LAST_MODIFIED_BY: String(256);
   } /*technical configuration {
         column store;
   };*/

   entity t_status__text {
      key STATUS_ID: String(20) not null;
      key LANGUAGE: String(11) not null;
      STATUS_DESCRIPTION: String(250);
      STATUS_NAME: String(30);
   } /*technical configuration {
      column store;
   };*/

   entity t_price_determination_strategy {
      key PRICE_DETERMINATION_STRATEGY_ID: String(20) not null;
      key PRICE_DETERMINATION_STRATEGY_TYPE_ID: hana.TINYINT not null default 1; // 1-Material Price Determination Strategy, 2-Activity Price Determination Strategy
      IS_VENDOR_VALUE_FILTER: hana.TINYINT not null default 0; //has effect when vendor is entered; 0-includes generic and vendor specific prices, 1-includes only vendor specific prices
      IS_VENDOR_GENERIC_FILTER: hana.TINYINT not null default 0; //has effect when vendor is blank; 0-includes generic and vendor specific prices, 1-includes only generic prices
      CREATED_ON: Timestamp; // Date & Time
      CREATED_BY: String(256);
      LAST_MODIFIED_ON: Timestamp; // Date & Time
      LAST_MODIFIED_BY: String(256);
   } /*technical configuration {
      column store;
   };*/

   entity t_price_determination_strategy__text {
      key PRICE_DETERMINATION_STRATEGY_ID: String(20) not null;
      key PRICE_DETERMINATION_STRATEGY_TYPE_ID: hana.TINYINT not null default 1; // 1-Material Price Determination Strategy, 2-Activity Price Determination Strategy
      key LANGUAGE: String(11) not null;
      PRICE_DETERMINATION_STRATEGY_DESCRIPTION: String(250);
   } /*technical configuration {
      column store;
   };*/

   entity t_price_determination_strategy_price_source {
      key PRICE_DETERMINATION_STRATEGY_ID: String(20) not null;
      key PRICE_DETERMINATION_STRATEGY_TYPE_ID: hana.TINYINT not null default 1;
      PRICE_SOURCE_ID: String(20) not null;
      PRICE_SOURCE_TYPE_ID: hana.TINYINT not null default 1;
      key DETERMINATION_SEQUENCE: hana.TINYINT;
   } /*technical configuration {
      column store;
   };*/

   entity t_price_rule {
      key RULE_CODE: String(20) not null;
      key RULE_TYPE_ID: hana.TINYINT not null; // 1 - Material price rules/2 - Activity price rules
      DEFAULT_PRIORITY: Integer not null;
   } /*technical configuration {
      column store;
   };*/

   entity t_price_determination_strategy_rule {
      key PRICE_DETERMINATION_STRATEGY_ID: String(20) not null;
      key PRICE_DETERMINATION_STRATEGY_TYPE_ID: hana.TINYINT not null default 1;
      key RULE_CODE: String(20) not null;
      PRIORITY: Integer not null;
   } /*technical configuration {
      column store;
   };*/

   entity t_exchange_rate_type {
      key EXCHANGE_RATE_TYPE_ID: String(20) not null;
      CREATED_ON: Timestamp; // Date & Time
      CREATED_BY: String(256);
      LAST_MODIFIED_ON: Timestamp; // Date & Time
      LAST_MODIFIED_BY: String(256);
   } /*technical configuration {
      column store;
   };*/

   entity t_exchange_rate_type__text {
      key EXCHANGE_RATE_TYPE_ID: String(20) not null;
      key LANGUAGE: String(11) not null;
      EXCHANGE_RATE_TYPE_DESCRIPTION: String(250);
      CREATED_ON: Timestamp; // Date & Time
      CREATED_BY: String(256);
      LAST_MODIFIED_ON: Timestamp; // Date & Time
      LAST_MODIFIED_BY: String(256);
   } /*technical configuration {
      column store;
   };*/

   // corresponds to ERP table CEPC
   entity t_profit_center {
      key PROFIT_CENTER_ID: String(10) not null;
      key CONTROLLING_AREA_ID: String(4) not null;
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
      DELETED_FROM_SOURCE: hana.TINYINT;
   } /*technical configuration {
      column store;
   };*/

   // corresponds to table CEPCT
   entity t_profit_center__text {
      key PROFIT_CENTER_ID: String(10) not null;
      key CONTROLLING_AREA_ID: String(4) not null;
      key LANGUAGE: String(11) not null;
      PROFIT_CENTER_DESCRIPTION: String(250);
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
   } /*technical configuration {
      column store;
   };*/

   entity t_project {
      key PROJECT_ID: String(35) not null;
      REFERENCE_PROJECT_ID: String(24); // could link to CPM, PS, PPM projects (has 24 characters in ERP)
      PROJECT_NAME: String(100);
      PROJECT_RESPONSIBLE: String(256);
      CONTROLLING_AREA_ID: String(4) not null;
      CUSTOMER_ID: String(10);
      SALES_DOCUMENT: String(100); // could link to a sales document in ERP such as order, inquiry
      SALES_PRICE: Decimal(28,7); /* Sales Price should be used as info field for anybody who wants to compare the final calculated costs with the sales price or do this in external analytic tools
       * Sales Price is stated in Sales Price Currency */
      SALES_PRICE_CURRENCY_ID: String(3);
      COMMENT: String(5000);
      COMPANY_CODE_ID: String(4);
      PLANT_ID: String(8);
      BUSINESS_AREA_ID: String(15);
      PROFIT_CENTER_ID: String(10);
      REPORT_CURRENCY_ID: String(3) not null default 'EUR';
      COSTING_SHEET_ID: String(15);
      COMPONENT_SPLIT_ID: String(35);
      START_OF_PROJECT: Date;
      END_OF_PROJECT: Date;
      START_OF_PRODUCTION: Date;
      END_OF_PRODUCTION: Date;
      VALUATION_DATE: Date;
      LIFECYCLE_VALUATION_DATE: Date; /* stores the valuation date lifecycle versions as Date value (which means it has year information), relative to the START_OF_PROJECT
       * Example: Start of Project March 1st 2017; Lifecycle Valuation Date set in UI to May 5th => LIFECYCLE_VALUATION_DATE value would be 2017-05-05
       * Rationale: this column is needed to calculate the valuation date for every lifecycle version (this date can be different to Default Valuation Date); however, the date need to be adapted for every lifecycle period; since we don't have any time interval data type in HANA, it is still modeled as DATE
       *  */
      LIFECYCLE_PERIOD_INTERVAL: hana.TINYINT not null default 12; /*  interval for all lifecycle periods
       * Default Value = 12 (yearly lifecycle periods) (only 12 is supported in V2.1)
       *  */
      CREATED_ON: Timestamp; // Data & Time
      CREATED_BY: String(256) not null;
      LAST_MODIFIED_ON: Timestamp not null; // Data & Time
      LAST_MODIFIED_BY: String(256) not null;
      EXCHANGE_RATE_TYPE_ID: String(20);
	   ENTITY_ID: Integer not null default 0;
      MATERIAL_PRICE_STRATEGY_ID: String(20) not null default 'PLC_STANDARD';
      ACTIVITY_PRICE_STRATEGY_ID: String(20) not null default 'PLC_STANDARD';
   } /*technical configuration {
      column store;
   };*/

    entity t_project_lifecycle_configuration {
      key PROJECT_ID: String(35) not null;
      Key CALCULATION_ID: Integer not null;
      CALCULATION_VERSION_ID: Integer;
      IS_ONE_TIME_COST_ASSIGNED: hana.TINYINT;
      MATERIAL_PRICE_SURCHARGE_STRATEGY: String(50) not null default 'NO_SURCHARGES'; /* indicates the strategy used for applying surcharges on materials;
       * is an enumeration of the following values:
       * * NO_SURCHARGES: no surcharges will be applied, is the default value for this column
       * * WITH_PRICE_DETERMINATION: a price determination will be executed and the surcharges will be applied on top of the found prices;
       * * WITHOUT_PRICE_DETERMINATION: no price determination will be executed; surcharges will be applied on top of the price of the previous lifecycle version;
       * * IF_NO_PRICE_FOUND: a price determination will be executed, but surcharges are only applied for items for which no price can be found */
      ACTIVITY_PRICE_SURCHARGE_STRATEGY: String(50) not null default 'NO_SURCHARGES'; /* indicates the strategy used for applying surcharges on activities;
       * is an enumeration of the following values:
       * * NO_SURCHARGES: no surcharges will be applied, is the default value for this column
       * * WITH_PRICE_DETERMINATION: a price determination will be executed and the surcharges will be applied on top of the found prices;
       * * WITHOUT_PRICE_DETERMINATION: no price determination will be executed; surcharges will be applied on top of the price of the previous lifecycle version;
       * * IF_NO_PRICE_FOUND: a price determination will be executed, but surcharges are only applied for items for which no price can be found */
      LAST_MODIFIED_ON: Timestamp not null; // Data & Time
      LAST_MODIFIED_BY: String(256) not null;
   } /*technical configuration {
      column store;
   };*/

   entity t_project_lifecycle_period_type {
      key PROJECT_ID: String(35) not null;
      key YEAR: Integer not null;
      IS_YEAR_SELECTED: hana.TINYINT;
      PERIOD_TYPE: String(20) not null default 'YEARLY'; //YEARLY/MONTHLY/QUARTERLY/CUSTOM
      LAST_MODIFIED_ON: Timestamp not null; // Data & Time
      LAST_MODIFIED_BY: String(256) not null;
   } /*technical configuration {
      column store;
   };*/

   entity t_project_monthly_lifecycle_period {
      key PROJECT_ID: String(35) not null;
      key YEAR: Integer not null;
      key SELECTED_MONTH: Integer not null;
      MONTH_DESCRIPTION: String(100);
      LAST_MODIFIED_ON: Timestamp not null; // Data & Time
      LAST_MODIFIED_BY: String(256) not null;
   } /*technical configuration {
      column store;
   };*/

   entity t_project_lifecycle_period_quantity_value {
      key PROJECT_ID: String(35) not null;
      key CALCULATION_ID: Integer not null;
      key LIFECYCLE_PERIOD_FROM: Integer not null;
      VALUE: Decimal(28,7) not null;
      LAST_MODIFIED_ON: Timestamp not null; // Data & Time
      LAST_MODIFIED_BY: String(256) not null;
   } /*technical configuration {
      column store;
   };*/

   // Stores the surcharge values per rule, which is specified in the t_project_activity_price_surcharge
   entity t_project_activity_price_surcharge_values {
      key RULE_ID: Integer not null; // Unique ID to describe the settings/dependencies for one row in the table activity price surcharges per  project with the values per lifecycle period
      key LIFECYCLE_PERIOD_FROM: Integer not null;
      VALUE: Decimal(28,7) not null;
   } /*technical configuration {
      column store;
   };*/

   /* Stores surcharge definitions for combinations of plant, account group, cost center and activity type (called dependency columns) used in the project lifecycle calculation;
       * each combination is referred to as surcharge rule (short: rule), whereas the surcharge values for a rule are stored in t_project_activity_price_surcharge_values.
       * Since surcharge rules must be unique for a project, the columns PLANT_ID, ACCOUNT_GROUP_ID, COST_CENTER_ID, ACTIVITY_TYPE_ID and PROJECT_ID are the primary keys; */
   entity t_project_activity_price_surcharges {
      key ACCOUNT_GROUP_ID: Integer not null; /* id of the account group for which the surcharges are defined;
       * -2 ...means...Rule applies to all values of the dependency column; basically means that the column can be ignored for the rule;
       *  shall be used if a rule makes no use of some dependency column;
       * -1 ...means...Rule applies only if an item has no value for the dependency column (e.g., item without account group; also applies if the relationship is indirect
       *  (e.g., an item is not directly assigned to an account group, but only to an account; in this case the surcharge would affect items with no account set) */
      key COST_CENTER_ID: String(10) not null; /* id of the cost center for which the surcharges are defined;
       * *...Rule applies to all values of the dependency column; basically means that the column can be ignored for the rule;
       *  shall be used if a rule makes no use of some dependency column;
       * "" (empty string) ...Rule applies only if an item has no value for the dependency column (e.g., item without cost center) */
      key ACTIVITY_TYPE_ID: String(12) not null; /* id of the activity type  for which the surcharges are defined;
       * *...Rule applies to all values of the dependency column; basically means that the column can be ignored for the rule;
       *  shall be used if a rule makes no use of some dependency column;
       * "" (empty string) ...Rule applies only if an item has no value for the dependency column (e.g., item without cost center) */
      key PLANT_ID: String(8) not null; /* id of the plant for which the surcharges are defined;
       * *...Rule applies to all values of the dependency column; basically means that the column can be ignored for the rule;
       *  shall be used if a rule makes no use of some dependency column;
       * "" (empty string) ...Rule applies only if an item has no value for the dependency column (e.g., item without plant) */
      key PROJECT_ID: String(35) not null; // id of the project for which the surcharges are defined;
      RULE_ID: Integer not null; /* unique id in order to assign multiple time segment values from t_project_activity_prices_surcharge_values;
       * Is generated by using the sequence sap.plc.db.s_rule_id in order to ensure the rule id is unique across t_project_lifecycle_configuration, t_project_material_price_surcharges and t_project_activity_price_surcharges */
   } /*technical configuration {
      column store;
   };*/

   // Stores the surcharge values per rule, which is specified in the t_project_material_price_surcharge
   entity t_project_material_price_surcharge_values {
      key RULE_ID: Integer not null; // Unique ID to describe the settings/dependencies for one row in the table material price surcharges per project with the values per lifecycle period
      key LIFECYCLE_PERIOD_FROM: Integer not null;
      VALUE: Decimal(28,7) not null;
   } /*technical configuration {
      column store;
   };*/

   /* Stores surcharge definitions for combinations of plant, account group, material type and material group (called dependency columns) used in the project lifecycle calculation;
       * each combination is referred to as surcharge rule (short: rule), whereas the surcharge values for a rule are stored in t_project_material_price_surcharge_values.
       * Since surcharge rules must be unique for a project, the columns PLANT_ID, ACCOUNT_GROUP_ID, MATERIAL_GROUP_ID, MATERIAL_TYPE_ID and PROJECT_ID are the primary keys; */
   entity t_project_material_price_surcharges {
      key ACCOUNT_GROUP_ID: Integer not null; /* id of the account group for which the surcharges are defined;
       * -2 ...Rule applies to all values of the dependency column; basically means that the column can be ignored for the rule;
       *  shall be used if a rule makes no use of some dependency column;
       * -1 ...Rule applies only if an item has no value for the dependency column (e.g., item without; also applies if the relationship is indirect
       *  (e.g., an item is not directly assigned to an account group, but only to an account; in this case the surcharge would affect items with no account set) */
      key MATERIAL_TYPE_ID: String(4) not null; /* id of the material type for which the surcharges are defined;
       * *...Rule applies to all values of the dependency column; basically means that the column can be ignored for the rule;
       *  shall be used if a rule makes no use of some dependency column;
       * "" (empty string) ...Rule applies only if an item has no value for the dependency column (e.g., item without material type) */
      key MATERIAL_GROUP_ID: String(9) not null; /* id of the material group for which the surcharges are defined;
       * *...Rule applies to all values of the dependency column; basically means that the column can be ignored for the rule;
       *  shall be used if a rule makes no use of some dependency column;
       * "" (empty string) ...Rule applies only if an item has no value for the dependency column (e.g., item without material group) */
      key PLANT_ID: String(8) not null; /* id of the plant for which the surcharges are defined;
       * *...Rule applies to all values of the dependency column; basically means that the column can be ignored for the rule;
       *  shall be used if a rule makes no use of some dependency column;
       * "" (empty string) ...Rule applies only if an item has no value for the dependency column (e.g., item without plant) */
      key PROJECT_ID: String(35) not null; // id of the project for which the surcharges are defined
      key MATERIAL_ID: String(40) not null default '*'; /* id of the material for which the surcharges are defined
       * *...Rule applies to all values of the dependency column; basically means that the column can be ignored for the rule;
       *  shall be used if a rule makes no use of some dependency column;
       * "" (empty string) ...Rule applies only if an item has no value for the dependency column (e.g., item without material) */
      RULE_ID: Integer not null; /* unique id in order to assign multiple time segment values from t_project_material_prices_surcharge_values;
       * Is generated by using the sequence sap.plc.db.s_rule_id in order to ensure the rule id is unique across t_project_lifecycle_configuration, t_project_material_price_surcharges and t_project_activity_price_surcharges */
   } /*technical configuration {
      column store;
   };*/

   entity t_recent_calculation_versions {
      key CALCULATION_VERSION_ID: Integer not null;
      key USER_ID: String(256) not null;
      LAST_USED_ON: Timestamp not null; // Date & Time
   } /*technical configuration {
      column store;
   };*/

   entity t_regex {
      key VALIDATION_REGEX_ID: String(30) not null;
      VALIDATION_REGEX_VALUE: String(256);
   } /*technical configuration {
      column store;
   };*/

   entity t_session {
      key SESSION_ID: String(50) not null;
      USER_ID: String(256) not null;
      LANGUAGE: String(11) not null;
      LAST_ACTIVITY_TIME: Timestamp not null default timestamp'2016-01-01 09:00:00.0000000';
   } /*technical configuration {
      column store;
   };*/

   // table used to define a group in the side pane
   entity t_side_panel_group {
      key SIDE_PANEL_GROUP_ID: Integer not null;
      SIDE_PANEL_GROUP_DISPLAY_ORDER: Integer not null; // Display order of groups
      RESOURCE_KEY_GROUP_DESCRIPTION: String(256); /* This field contains the string that is shown on the UI as the field's label. This is mandatory for new custom fields and shall later also be used for standard fields.
       *  */
   } /*technical configuration {
      column store;
   };*/

   // Table used to display a system message to all users in the login-language
   entity t_system_message {
      key LANGUAGE: String(11) not null;
      MESSAGE: String(500) not null;
   } /*technical configuration {
      column store;
   };*/

   // used to support long-running tasks, which are running in an asynchronous manner
   entity t_task {
      key TASK_ID: Integer not null; // unique id for a task generated by the sequence sap.plc.db.s_task_id
      SESSION_ID: String(50) not null; /* id of the session the task belongs to
       * need to filter task by the users who started a task and only the task that they started
       *  */
      TASK_TYPE: String(50) not null; // Enumeration with allowed values: PROJECT_CALCULATE_LIFECYCLE_VERSIONS
      STATUS: String(10) not null; // Enumeration with allowed values: INACTIVE, ACTIVE, COMPLETED, CANCELED, FAILED
      PARAMETERS: String(200); // the parameters the task was started with
      PROGRESS_STEP: Integer; // the current progress of the task
      PROGRESS_TOTAL: Integer; // the total amount of steps the task needs to execute until its completion 
      CREATED_ON: Timestamp; // timestamp when the task was created
      STARTED: Timestamp; // timestamp when the task was started
      LAST_UPDATED_ON: Timestamp; /* a timestamp when the task was last updated; the value is updated when STATUS or PROGRESS_STEP is changed
       *  */
      ERROR_CODE: String(50); // the code for the error in case during the task execution occurred one
      ERROR_DETAILS: LargeString; // details to error; could be a plain string or in some notation
   } /*technical configuration {
      column store;
   };*/

   entity t_uom {
      key UOM_ID: String(3) not null;
      DIMENSION_ID: String(10) not null;
      NUMERATOR: Integer not null;
      DENOMINATOR: Integer not null;
      EXPONENT_BASE10: hana.SMALLINT not null;
      SI_CONSTANT: Decimal(9,6) not null;
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
      DELETED_FROM_SOURCE: hana.TINYINT;
   } /*technical configuration {
      column store;
   };*/

   entity t_uom__text {
      key UOM_ID: String(3) not null;
      key LANGUAGE: String(11) not null;
      UOM_CODE: String(5);
      UOM_DESCRIPTION: String(40);
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
   } /*technical configuration {
      column store;
   };*/

   // corresponds to T025 in ERP
   entity t_valuation_class {
      key VALUATION_CLASS_ID: String(4) not null;
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
      DELETED_FROM_SOURCE: hana.TINYINT;
   } /*technical configuration {
      column store;
   };*/

   // corresponds to T025T in ERP
   entity t_valuation_class__text {
      key VALUATION_CLASS_ID: String(4) not null;
      key LANGUAGE: String(11) not null;
      VALUATION_CLASS_DESCRIPTION: String(250);
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
   } /*technical configuration {
      column store;
   };*/

   // Stores definitions for variants, including their layout information.
   entity t_variant {
      key VARIANT_ID: Integer not null; /* Unique id of the variant. Generated automatically from sequence s_variant_id.hdbsequence when creating a variant.
       *  */
      CALCULATION_VERSION_ID: Integer not null; // Id of the variant base calculation version with maximal structure, for which the variants are defined.
      VARIANT_NAME: String(250); // Name of the variant
      COMMENT: String(5000);
      EXCHANGE_RATE_TYPE_ID: String(20) not null; // Exchange rate type used during calculation of the variant
      TOTAL_COST: Decimal(28,7);
      TOTAL_SALES_PRICE: Decimal(28,7);
      REPORT_CURRENCY_ID: String(3) not null;
      SALES_PRICE: Decimal(28,7);
      SALES_PRICE_CURRENCY_ID: String(3);
      VARIANT_ORDER: Integer; /* Order priority for each variant in the sequence of presentation in UI
       *  */
      IS_SELECTED: hana.TINYINT not null default 0; /* Shows if variant is active/displayed as a column in the variant matrix.
       * Values: 1 = selected in the variant matrix, 0 = not selected in the variant matrix, default: 0 */
      VARIANT_TYPE: hana.TINYINT default 0; /*
       * 0 = Normal Variant
       * 1 = Sum Variant */
      LAST_REMOVED_MARKINGS_ON: Timestamp; // Updated when the user has accepted the changes in items of variant. Used among others for determining if the items of the variant have changed compared to the variant base.
      LAST_REMOVED_MARKINGS_BY: String(256);
      LAST_MODIFIED_ON: Timestamp; // Updated when the user has made any changes in variant header or items.
      LAST_MODIFIED_BY: String(256);
      LAST_CALCULATED_ON: Timestamp; // Updated when the user has calculated the variant.
      LAST_CALCULATED_BY: String(256);
   } /*technical configuration {
      column store;
   };*/

   // Calculated values for unsaved variants are stored in a new table T_VARIANT_TEMPORARY
   entity t_variant_temporary {
      key VARIANT_ID: Integer not null; // Unique id of the variant
      key CALCULATION_VERSION_ID: Integer not null; // Id of the variant base calculation version with maximal structure, for which the variants are defined.
      VARIANT_NAME: String(250); // Name of the variant
      COMMENT: String(5000);
      EXCHANGE_RATE_TYPE_ID: String(20) not null; // Exchange rate type used during calculation of the variant
      TOTAL_COST: Decimal(28,7);
      TOTAL_SALES_PRICE: Decimal(28,7);
      REPORT_CURRENCY_ID: String(3) not null;
      SALES_PRICE: Decimal(28,7);
      SALES_PRICE_CURRENCY_ID: String(3);
      VARIANT_ORDER: Integer; /* Order priority for each variant in the sequence of presentation in UI
        *  */
      IS_SELECTED: hana.TINYINT not null default 0; /* Shows if variant is active/displayed as a column in the variant matrix.
        * Values: 1 = selected in the variant matrix, 0 = not selected in the variant matrix, default: 0 */
      VARIANT_TYPE: hana.TINYINT default 0; /*
        * 0 = Normal Variant
        * 1 = Sum Variant */
      LAST_REMOVED_MARKINGS_ON: Timestamp; // Updated when the user has accepted the changes in items of variant. Used among others for determining if the items of the variant have changed compared to the variant base.
      LAST_REMOVED_MARKINGS_BY: String(256);
      LAST_MODIFIED_ON: Timestamp; // Updated when the user has made any changes in variant header or items.
      LAST_MODIFIED_BY: String(256);
      LAST_CALCULATED_ON: Timestamp; // Updated when the user has calculated the variant.
      LAST_CALCULATED_BY: String(256);
   } /*technical configuration {
      column store;
   };*/

   // Stores information about items for each variant. All items of the variant base are stored, even if the corresponding items in the variant base have been deactivated.
   entity t_variant_item {
      key VARIANT_ID: Integer not null; // Unique id of the variant
      key ITEM_ID: Integer not null; // Item id of item in the variant base
      IS_INCLUDED: hana.TINYINT not null  default 0; /* Shows if the item is included in the variant
       * Values: 1 = included, 0 = not included,  default: 0 */
      QUANTITY: Decimal(28,7); /* Specifies which quantity of this component is necessary to produce the base quantity of the assembly item.
       * It will store the manual value of the quantity */
      QUANTITY_CALCULATED: Decimal(28,7); /* Specifies which quantity of this component is necessary to produce the base quantity of the assembly item.
       * It will store the calculated value of the quantity */
      QUANTITY_STATE: hana.SMALLINT default 2; /* Indicates whether the current value has been entered manually / it's linked to base version value / is calculated
       * Values: 0-calculated value, 1-manual value, 2-linked value; For root, it will be null. */
      QUANTITY_UOM_ID: String(3);
      TOTAL_QUANTITY: Decimal(28,7); // Total quantity for item. The UoMs for QUANTITY and TOTAL_QUANTITY are taken from the corresponding item in the variant base.
      TOTAL_COST: Decimal(28,7); // Total cost in reporting currency from the variant header
   } /*technical configuration {
      column store;
   };*/

   // Calculated values for variant items are stored in a temporary table T_VARIANT_ITEM_TEMPORARY
   entity t_variant_item_temporary {
      key VARIANT_ID: Integer not null; // Unique id of the variant
      key ITEM_ID: Integer not null; // Item id of item in the variant base
      key CALCULATION_VERSION_ID: Integer not null; //Calculation version id of variants
      IS_INCLUDED: hana.TINYINT not null  default 0; /* Shows if the item is included in the variant
       * Values: 1 = included, 0 = not included,  default: 0 */
      QUANTITY: Decimal(28,7); /* Specifies which quantity of this component is necessary to produce the base quantity of the assembly item.
       * It will store the manual value of the quantity */
      QUANTITY_CALCULATED: Decimal(28,7); /* Specifies which quantity of this component is necessary to produce the base quantity of the assembly item.
       * It will store the calculated value of the quantity */
      QUANTITY_STATE: hana.SMALLINT default 2; /* Indicates whether the current value has been entered manually / it's linked to base version value / is calculated
       * Values: 0-calculated value, 1-manual value, 2-linked value; For root, it will be null. */
      QUANTITY_UOM_ID: String(3);
      TOTAL_QUANTITY: Decimal(28,7); // Total quantity for item. The UoMs for QUANTITY and TOTAL_QUANTITY are taken from the corresponding item in the variant base.
      TOTAL_COST: Decimal(28,7); // Total cost in reporting currency from the variant header
   } /*technical configuration {
      column store;
   };*/

   // corresponds to table LFA1
   entity t_vendor {
      key VENDOR_ID: String(10) not null;
      VENDOR_NAME: String(100); // not localized
      COUNTRY: String(100);
      POSTAL_CODE: String(35);
      REGION: String(100);
      CITY: String(100);
      STREET_NUMBER_OR_PO_BOX: String(100);
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
      DELETED_FROM_SOURCE: hana.TINYINT;
      IS_PERSONAL_DATA: hana.TINYINT default 0;
   } /*technical configuration {
      column store;
   };*/

   // CRHD, CRCO
   entity t_work_center {
      key WORK_CENTER_ID: String(15) not null;
      key PLANT_ID: String(8) not null;
      WORK_CENTER_CATEGORY: String(50); /* can have the following values
       * - MACHINE
       * - MACHINE_GROUP
       * - LABOR
       * - LABOR_GROUP
       * - PRODUCTION_LINEW
       * - WORK_CENTER_ON_PRODUCTION_LINE
       * - PROCESSING_UNIT
       * - TRANSPORTATION_UNIT
       * - STORAGE_UNIT
       * - PLANT_MAINTENANCE
       * - ZONE
       * - STATION
       * - DESIGN_AND_DEVELOPMENT
       * - EXTERNAL PROCESSING_UNIT */
      COST_CENTER_ID: String(10) not null;
      CONTROLLING_AREA_ID: String(4) not null;
      WORK_CENTER_RESPONSIBLE: String(256);
      EFFICIENCY: Decimal(28,7); // Default value from Work Center Efficiency
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
      DELETED_FROM_SOURCE: hana.TINYINT;
   } /*technical configuration {
      column store;
   };*/

   entity t_work_center__text {
      key WORK_CENTER_ID: String(15) not null;
      key PLANT_ID: String(8) not null;
      key LANGUAGE: String(11) not null;
      WORK_CENTER_DESCRIPTION: String(250);
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
   } /*technical configuration {
      column store;
   };*/

   entity t_work_center_activity_type {
      key WORK_CENTER_ID: String(15) not null;
      key CONTROLLING_AREA_ID: String(4) not null;
      key PLANT_ID: String(8) not null;
      key ACTIVITY_TYPE_ID: String(12) not null;
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      key PROCESS_ID: String(12) not null default '*';
      QUANTITY: Decimal(28,7);
      QUANTITY_UOM_ID: String(3);
      TOTAL_QUANTITY_DEPENDS_ON: Integer default 1; /* Enumeration would mean:
       * - Fix Quantity  = 0
       * - Dep. on Assembly Quantity = 1
       * - Dep. On Lot Size = 2
       *  */
      LOT_SIZE: Decimal(28,7);
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
   } /*technical configuration {
      column store;
   };*/

   entity t_work_center_process {
      key WORK_CENTER_ID: String(15) not null;
      key PLANT_ID: String(8) not null;
      key CONTROLLING_AREA_ID: String(4) not null;
      key PROCESS_ID: String(12) not null;
      key _VALID_FROM: Timestamp not null; // used to define the validity of master data
      _VALID_TO: Timestamp; // used to define the validity of master data
      _SOURCE: hana.TINYINT; /* used to define the source of master data
       * 1=PLC
       * 2=ERP */
      _CREATED_BY: String(256);
   } /*technical configuration {
      column store;
   };*/

   entity t_formula_staging {
      key FORMULA_ID: Integer not null;
      PATH: String(127) not null; /* Path is used to describe what path is used to navigate through the client side models (business objects). Two examples should show this:
       * - In the side pane you want to show the material type id and the material type description. To come to the material type description you need to navigate the following way through the models: item -> material -> material_type. Thus, the path is shown as item.material.material_type
       * - In the admin UI you want  to maintain the cost center and the cost center is assigned to the controlling area, which is displayed with controlling area id and controlling area description. To navigate to the controlling area the following path is used. cost_center -> controlling_area. The path is shown as cost_center.controlling_area. */
      BUSINESS_OBJECT: String(127) not null;
      COLUMN_ID: String(127) not null;
      ITEM_CATEGORY_ID: Integer not null; /* Same enumeration as  t_item.ITEM_CATEGORY_ID
       * However, -1 means "default" or "for all categories" */
      IS_FORMULA_USED: hana.TINYINT not null;
      FORMULA_STRING: LargeString not null; // Must contain the formula string in Excel syntax
      FORMULA_DESCRIPTION: String(5000);
      NEW_ID: Integer;
   } /*technical configuration {
      row store;
   };*/

   // t_metadata contains all required metadata about standard and custom PLC fields. As such it also features the fields of the item_metadata.xlsx .
   entity t_metadata_staging {
      key PATH: String(127) not null; /* Path is used to describe what path is used to navigate through the client side models (business objects). Two examples should show this:
       * - In the side pane you want to show the material type id and the material type description. To come to the material type description you need to navigate the following way through the models: item -> material -> material_type. Thus, the path is shown as item.material.material_type
       * - In the admin UI you want  to maintain the cost center and the cost center is assigned to the controlling area, which is displayed with controlling area id and controlling area description. To navigate to the controlling area the following path is used. cost_center -> controlling_area. The path is shown as cost_center.controlling_area. */
      key BUSINESS_OBJECT: String(127) not null; // Must contain the name of an existing standard table in the current PLC datamodel or an extension table in the customer schema
      key COLUMN_ID: String(127) not null; // Must contain the name of an existing column in the table identified by TABLE_ID
      IS_CUSTOM: hana.TINYINT not null default 0; /* If 0 (default), TABLE_ID and COLUMN_ID refer to an existing field in the PLC schema. Otherwise they point to a field in the customer schema.
       *  */
      ROLLUP_TYPE_ID: Integer default 0; /* Specifies whether this field is going to be rolled up, and, if yes, which aggregation function is to be used.
       * 0 = no rollup
       * 1 = SUM
       * 2 = MIN
       * 3 = MAX
       * 4 = AVG
       * 5 = COUNT
       * 6 = DISTINCT
       *  */
      SIDE_PANEL_GROUP_ID: Integer;
      DISPLAY_ORDER: Integer; // Display order of columns within the group
      TABLE_DISPLAY_ORDER: Integer; // Display order of columns within the admin grid, this is especially used for the uom when multiple value fields have the same uom in order to have the column one one time in the table.
      REF_UOM_CURRENCY_PATH: String(127); /* Path is used to describe what path is used to navigate through the client side models (business objects). Two examples should show this:
       * - In the side pane you want to show the material type id and the material type description. To come to the material type description you need to navigate the following way through the models: item -> material -> material_type. Thus, the path is shown as item.material.material_type
       * - In the admin UI you want  to maintain the cost center and the cost center is assigned to the controlling area, which is displayed with controlling area id and controlling area description. To navigate to the controlling area the following path is used. cost_center -> controlling_area. The path is shown as cost_center.controlling_area.
       *
       *  */
      REF_UOM_CURRENCY_BUSINESS_OBJECT: String(127); // only valid for numeric fields; references the table where the column with the UoM or the currency can be find, which belongs to this value
      REF_UOM_CURRENCY_COLUMN_ID: String(127); // only valid for numeric fields; references the column where the UoM or the currency can be found, which belongs to this value
      UOM_CURRENCY_FLAG: hana.TINYINT; /* 1: for all columns which store a UoM or currency
       * 0: for all columns which does not store a UoM or currency
       * necessary for UI to know which column should be displayed independentyl and which column should be displayed as UoM/currency field */
      SEMANTIC_DATA_TYPE: String(35) not null; /* from Item_Metadata.xlsx
       *
       * Mapping from HANA datatypes to C# datatypes. For example, HANA does not know BOOLEAN and uses TINYINT instead. However,  BOOLEAN exists as a datatype in C# and the customer would also rather choose BOOLEAN.  Therefore, we need to store that TINYINT actually means BOOLEAN for a particular field.
       *
       * Possible values are:
       * 0 : Date
       * 1 : Time
       * 2 : TimeStamp
       * 3 : Currency
       * 4 : Unit of Measure
       * 5 : String
       * 6 : Number  (Decimal (28,7))
       * 7 : Boolean
       * ---
       * 8 : BooleanInt
       * 9 : Integer
       * 10 : PositiveInteger
       * 11 : NegativeInteger
       *
       * 0-7 are the semantic datatypes the enduser can choose from when creating a custom field.
       *
       * 8-11 are additional semantic  data types that are used for semantic validation between frontend and backend. For example, new item IDs are always PostiveIntegers, client-side handles for newly created entities are always NegativeIntegers. BooleanInt expresses that the value is represented by 0 and 1, whereas Boolean applies TRUE and FALSE. This distinction is also required for validity checks.
       *
       * Decimals are always 28,7.
       * The length of a string is specified in SEMANTIC_DATA_TYPE_LENGTH. */
      SEMANTIC_DATA_TYPE_ATTRIBUTES: String(250); /* Used to define the SEMANTIC_DATA_TYPE in more detail. It is maintained in the following way:
       * 	- For String fields it describes the length with the syntax: "length=20"
       * 	- For Decimal fields it specifies precision and scale with the syntax:  "precision=28; scale=7"
       * 	- For integer and decimal field values, this syntax is used:
       * "lowerBound=0; upperBound = 100"
       *
       *  */
      VALIDATION_REGEX_ID: String(30);
      PROPERTY_TYPE: Integer; /*         CostingSheetRow = 0,
       *         Price = 1,
       *         Number = 2,
       *         Text = 3,
       *         TextArea = 4,
       *         Boolean = 5,
       *         UoM = 6,
       *         Currency = 7,
       *         MasterData = 8,
       *         ItemCategory = 9,
       *         CustomField = 10 */
      IS_IMMUTABLE_AFTER_SAVE: hana.TINYINT;
      IS_REQUIRED_IN_MASTERDATA: hana.TINYINT; // from Item_Metadata.xlsx
      IS_WILDCARD_ALLOWED: hana.TINYINT; // from Item_Metadata.xlsx
      IS_USABLE_IN_FORMULA: hana.TINYINT;
      RESOURCE_KEY_DISPLAY_NAME: String(256); /* This field contains the string that is shown on the UI as the field's label. This is mandatory for new custom fields and shall later also be used for standard fields.
       *  */
      RESOURCE_KEY_DISPLAY_DESCRIPTION: String(256);
      CREATED_ON: Timestamp;
      CREATED_BY: String(256);
      LAST_MODIFIED_ON: Timestamp;
      LAST_MODIFIED_BY: String(256);
   } /*technical configuration {
      row store;
   };*/

   entity t_metadata__text_staging {
      key PATH: String(127) not null; /* Path is used to describe what path is used to navigate through the client side models (business objects). Two examples should show this:
       * - In the side pane you want to show the material type id and the material type description. To come to the material type description you need to navigate the following way through the models: item -> material -> material_type. Thus, the path is shown as item.material.material_type
       * - In the admin UI you want  to maintain the cost center and the cost center is assigned to the controlling area, which is displayed with controlling area id and controlling area description. To navigate to the controlling area the following path is used. cost_center -> controlling_area. The path is shown as cost_center.controlling_area.
       *
       *  */
      key COLUMN_ID: String(127) not null;
      key LANGUAGE: String(11) not null;
      DISPLAY_NAME: String(250); /* This field contains the string that is shown on the UI as the field's label. This is mandatory for new custom fields and shall later also be used for standard fields.
       *  */
      DISPLAY_DESCRIPTION: String(5000);
      CREATED_ON: Timestamp;
      CREATED_BY: String(256);
      LAST_MODIFIED_ON: Timestamp;
      LAST_MODIFIED_BY: String(256);
   } /*technical configuration {
      row store;
   };*/

   /* As of Dec 2014, there exists an Excel file  item_metadata.xlsx  which specifies the different metadata properties of an item  field (isMandatory, ..., Comments). Four of the metadata properties depend on the item category and whether the item has children (isMandatory, isRequiredForCompleteness, isReadOnly, isTransferable). For example, if we have a "preliminary material", the MATERIAL_ID is not required for completing an item entry. The opposite  is true when we have an item category "material". In addition some of the fields also differ if the current item has children.
       *
       * This kind of metadata is maintained  in the Excel file and imported from Excel into XS for validity checks.
       *
       * Handling and persisting such metadata for custom fields requires corresponding storage in the database. Accordingly, it is expected that the metadata contained in Excel will eventually also be replicated into the PLC database.
       *
       * Note, that eventually such metadata is also envisioned for the fields on higher levels and potentially also master data. On such levels we do not have to distinguish between different item categories at all.
       * However, for the metadata properties depending on item category, there is a 1:N relation between the description of the field itself, e.g., MATERIAL_ID, and its different properties depending on the item category (as outlined in the example above).
       *
       * The four metadata properties for item fields which depend on the item category are captured in this table. Accordingly, we find foreign keys to t_metadata and two additional keys, namely, ITEM_CATEGORY_ID and SUBITEM_STATE.
       * If we maintain metadata properties for a field that does not depend on item category and/or has children, the two additional keys are amended by default values.
       *
       *
       *
       *  */
   entity t_metadata_item_attributes_staging {
      key PATH: String(127) not null; /* Path is used to describe what path is used to navigate through the client side models (business objects). Two examples should show this:
       * - In the side pane you want to show the material type id and the material type description. To come to the material type description you need to navigate the following way through the models: item -> material -> material_type. Thus, the path is shown as item.material.material_type
       * - In the admin UI you want  to maintain the cost center and the cost center is assigned to the controlling area, which is displayed with controlling area id and controlling area description. To navigate to the controlling area the following path is used. cost_center -> controlling_area. The path is shown as cost_center.controlling_area.
       *
       *
       *  */
      key BUSINESS_OBJECT: String(127) not null; // Refers to t_metadata.TABLE_ID
      key COLUMN_ID: String(127) not null; // Refers to t_metadata.COLUMN_ID
      key ITEM_CATEGORY_ID: Integer not null; /* Same enumeration as  t_item.ITEM_CATEGORY_ID
       * However, -1 means "default" or "for all categories" */
      key SUBITEM_STATE: hana.SMALLINT not null; /* If true, the current entry in this table refers to the meaning of the metadata properties below when the corresponding item has child items
       * However, -1 means "default" or "do not care"
       *  */
      IS_MANDATORY: hana.TINYINT; /* Stems from Item_Metadata.xlsx
       * Field has to be entered such that calculation version can be saved
       *
       * Field depends on item type and if item has children
       * Field is potentially relevant for higher levels and master data tables
       *  */
      IS_READ_ONLY: hana.TINYINT; /* Stems from Item_Metadata.xlsx
       * Some fields might contain calculated values, e.g., the price of an assembly item whose value has been rolled up and cannot be changed accordingly.
       * Field depends on item type and if item has children
       * Field is potentially relevant for higher levels and master data tables
       *  */
      IS_TRANSFERABLE: hana.TINYINT; /* Stems from Item_Metadata.xlsx
       * Field depends on item type and if item has children
       * Field is potentially relevant for higher levels and master data tables
       *  */
      DEFAULT_VALUE: String(5000);
      CREATED_ON: Timestamp;
      CREATED_BY: String(256);
      LAST_MODIFIED_ON: Timestamp;
      LAST_MODIFIED_BY: String(256);
   } /*technical configuration {
      row store;
   };*/

   entity t_personal_data_validity {
      key ENTITY: String(127) not null;
      key SUBJECT: String(127) not null;
      VALID_TO: Timestamp;
      VALID_FOR: hana.SMALLINT;
   } /*technical configuration {
      column store;
   };*/

   entity t_auto_complete_user {
      key USER_ID: String(256) not null;
   } /*technical configuration {
      column store;
   };*/

   entity t_entity_relation {
      key ENTITY_ID: Integer not null;
      PARENT_ENTITY_ID: Integer;
      ENTITY_TYPE: String(1) not null; /* The type of the entity. The values can be:
      * P = Project
      * F = Folder
      * C = Calculation */
   } /*technical configuration {
      column store;
   };*/

   entity t_folder {
      key ENTITY_ID: Integer not null;
      FOLDER_NAME:  String(127) not null;
      CREATED_BY:  String(127) not null;
      MODIFIED_BY:  String(127) not null;
      CREATED_ON:  Timestamp not null;
      MODIFIED_ON:  Timestamp not null;
   } /*technical configuration {
      column store;
   };*/

   entity t_user_activity {
      key USER_ID: String(50) not null;
      key LAST_ACTIVITY_TIME: Timestamp not null;
   } /*technical configuration {
      column store;
   };*/
};