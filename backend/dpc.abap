class ZCL_ZENISB_DPC definition
  public
  inheriting from /IWBEP/CL_MGW_PUSH_ABS_DATA
  abstract
  create public .

public section.

  interfaces /IWBEP/IF_SB_DPC_COMM_SERVICES .
  interfaces /IWBEP/IF_SB_GEN_DPC_INJECTION .

  methods /IWBEP/IF_MGW_APPL_SRV_RUNTIME~GET_ENTITYSET
    redefinition .
  methods /IWBEP/IF_MGW_APPL_SRV_RUNTIME~GET_ENTITY
    redefinition .
  methods /IWBEP/IF_MGW_APPL_SRV_RUNTIME~UPDATE_ENTITY
    redefinition .
  methods /IWBEP/IF_MGW_APPL_SRV_RUNTIME~CREATE_ENTITY
    redefinition .
  methods /IWBEP/IF_MGW_APPL_SRV_RUNTIME~DELETE_ENTITY
    redefinition .
protected section.

  data mo_injection type ref to /IWBEP/IF_SB_GEN_DPC_INJECTION .

  methods HEADERSET_CREATE_ENTITY
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY_C optional
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
      !IO_DATA_PROVIDER type ref to /IWBEP/IF_MGW_ENTRY_PROVIDER optional
    exporting
      !ER_ENTITY type ZCL_ZENISB_MPC=>TS_HEADER
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods HEADERSET_DELETE_ENTITY
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY_D optional
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods HEADERSET_GET_ENTITY
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IO_REQUEST_OBJECT type ref to /IWBEP/IF_MGW_REQ_ENTITY optional
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY optional
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
    exporting
      !ER_ENTITY type ZCL_ZENISB_MPC=>TS_HEADER
      !ES_RESPONSE_CONTEXT type /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods HEADERSET_GET_ENTITYSET
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_FILTER_SELECT_OPTIONS type /IWBEP/T_MGW_SELECT_OPTION
      !IS_PAGING type /IWBEP/S_MGW_PAGING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
      !IT_ORDER type /IWBEP/T_MGW_SORTING_ORDER
      !IV_FILTER_STRING type STRING
      !IV_SEARCH_STRING type STRING
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITYSET optional
    exporting
      !ET_ENTITYSET type ZCL_ZENISB_MPC=>TT_HEADER
      !ES_RESPONSE_CONTEXT type /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods HEADERSET_UPDATE_ENTITY
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY_U optional
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
      !IO_DATA_PROVIDER type ref to /IWBEP/IF_MGW_ENTRY_PROVIDER optional
    exporting
      !ER_ENTITY type ZCL_ZENISB_MPC=>TS_HEADER
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods ITEMSET_CREATE_ENTITY
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY_C optional
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
      !IO_DATA_PROVIDER type ref to /IWBEP/IF_MGW_ENTRY_PROVIDER optional
    exporting
      !ER_ENTITY type ZCL_ZENISB_MPC=>TS_ITEM
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods ITEMSET_DELETE_ENTITY
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY_D optional
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods ITEMSET_GET_ENTITY
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IO_REQUEST_OBJECT type ref to /IWBEP/IF_MGW_REQ_ENTITY optional
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY optional
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
    exporting
      !ER_ENTITY type ZCL_ZENISB_MPC=>TS_ITEM
      !ES_RESPONSE_CONTEXT type /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods ITEMSET_GET_ENTITYSET
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_FILTER_SELECT_OPTIONS type /IWBEP/T_MGW_SELECT_OPTION
      !IS_PAGING type /IWBEP/S_MGW_PAGING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
      !IT_ORDER type /IWBEP/T_MGW_SORTING_ORDER
      !IV_FILTER_STRING type STRING
      !IV_SEARCH_STRING type STRING
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITYSET optional
    exporting
      !ET_ENTITYSET type ZCL_ZENISB_MPC=>TT_ITEM
      !ES_RESPONSE_CONTEXT type /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods ITEMSET_UPDATE_ENTITY
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY_U optional
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
      !IO_DATA_PROVIDER type ref to /IWBEP/IF_MGW_ENTRY_PROVIDER optional
    exporting
      !ER_ENTITY type ZCL_ZENISB_MPC=>TS_ITEM
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .

  methods CHECK_SUBSCRIPTION_AUTHORITY
    redefinition .
private section.
ENDCLASS.



CLASS ZCL_ZENISB_DPC IMPLEMENTATION.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Public Method ZCL_ZENISB_DPC->/IWBEP/IF_MGW_APPL_SRV_RUNTIME~CREATE_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING(optional)
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING(optional)
* | [--->] IV_SOURCE_NAME                 TYPE        STRING(optional)
* | [--->] IO_DATA_PROVIDER               TYPE REF TO /IWBEP/IF_MGW_ENTRY_PROVIDER
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY_C(optional)
* | [<---] ER_ENTITY                      TYPE REF TO DATA
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
method /IWBEP/IF_MGW_APPL_SRV_RUNTIME~CREATE_ENTITY.
*&----------------------------------------------------------------------------------------------*
*&  Include           /IWBEP/DPC_TEMP_CRT_ENTITY_BASE
*&* This class has been generated on 12.06.2018 14:58:53 in client 001
*&*
*&*       WARNING--> NEVER MODIFY THIS CLASS <--WARNING
*&*   If you want to change the DPC implementation, use the
*&*   generated methods inside the DPC provider subclass - ZCL_ZENISB_DPC_EXT
*&-----------------------------------------------------------------------------------------------*

 DATA headerset_create_entity TYPE zcl_zenisb_mpc=>ts_header.
 DATA itemset_create_entity TYPE zcl_zenisb_mpc=>ts_item.
 DATA lv_entityset_name TYPE string.

lv_entityset_name = io_tech_request_context->get_entity_set_name( ).

CASE lv_entityset_name.
*-------------------------------------------------------------------------*
*             EntitySet -  HeaderSet
*-------------------------------------------------------------------------*
     WHEN 'HeaderSet'.
*     Call the entity set generated method
    headerset_create_entity(
         EXPORTING iv_entity_name     = iv_entity_name
                   iv_entity_set_name = iv_entity_set_name
                   iv_source_name     = iv_source_name
                   io_data_provider   = io_data_provider
                   it_key_tab         = it_key_tab
                   it_navigation_path = it_navigation_path
                   io_tech_request_context = io_tech_request_context
       	 IMPORTING er_entity          = headerset_create_entity
    ).
*     Send specific entity data to the caller interfaces
    copy_data_to_ref(
      EXPORTING
        is_data = headerset_create_entity
      CHANGING
        cr_data = er_entity
   ).

*-------------------------------------------------------------------------*
*             EntitySet -  ItemSet
*-------------------------------------------------------------------------*
     WHEN 'ItemSet'.
*     Call the entity set generated method
    itemset_create_entity(
         EXPORTING iv_entity_name     = iv_entity_name
                   iv_entity_set_name = iv_entity_set_name
                   iv_source_name     = iv_source_name
                   io_data_provider   = io_data_provider
                   it_key_tab         = it_key_tab
                   it_navigation_path = it_navigation_path
                   io_tech_request_context = io_tech_request_context
       	 IMPORTING er_entity          = itemset_create_entity
    ).
*     Send specific entity data to the caller interfaces
    copy_data_to_ref(
      EXPORTING
        is_data = itemset_create_entity
      CHANGING
        cr_data = er_entity
   ).

  when others.
    super->/iwbep/if_mgw_appl_srv_runtime~create_entity(
       EXPORTING
         iv_entity_name = iv_entity_name
         iv_entity_set_name = iv_entity_set_name
         iv_source_name = iv_source_name
         io_data_provider   = io_data_provider
         it_key_tab = it_key_tab
         it_navigation_path = it_navigation_path
      IMPORTING
        er_entity = er_entity
  ).
ENDCASE.
endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Public Method ZCL_ZENISB_DPC->/IWBEP/IF_MGW_APPL_SRV_RUNTIME~DELETE_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING(optional)
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING(optional)
* | [--->] IV_SOURCE_NAME                 TYPE        STRING(optional)
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY_D(optional)
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
method /IWBEP/IF_MGW_APPL_SRV_RUNTIME~DELETE_ENTITY.
*&----------------------------------------------------------------------------------------------*
*&  Include           /IWBEP/DPC_TEMP_DEL_ENTITY_BASE
*&* This class has been generated on 12.06.2018 14:58:53 in client 001
*&*
*&*       WARNING--> NEVER MODIFY THIS CLASS <--WARNING
*&*   If you want to change the DPC implementation, use the
*&*   generated methods inside the DPC provider subclass - ZCL_ZENISB_DPC_EXT
*&-----------------------------------------------------------------------------------------------*

 DATA lv_entityset_name TYPE string.

lv_entityset_name = io_tech_request_context->get_entity_set_name( ).

CASE lv_entityset_name.
*-------------------------------------------------------------------------*
*             EntitySet -  HeaderSet
*-------------------------------------------------------------------------*
      when 'HeaderSet'.
*     Call the entity set generated method
     headerset_delete_entity(
          EXPORTING iv_entity_name     = iv_entity_name
                    iv_entity_set_name = iv_entity_set_name
                    iv_source_name     = iv_source_name
                    it_key_tab         = it_key_tab
                    it_navigation_path = it_navigation_path
                    io_tech_request_context = io_tech_request_context
     ).

*-------------------------------------------------------------------------*
*             EntitySet -  ItemSet
*-------------------------------------------------------------------------*
      when 'ItemSet'.
*     Call the entity set generated method
     itemset_delete_entity(
          EXPORTING iv_entity_name     = iv_entity_name
                    iv_entity_set_name = iv_entity_set_name
                    iv_source_name     = iv_source_name
                    it_key_tab         = it_key_tab
                    it_navigation_path = it_navigation_path
                    io_tech_request_context = io_tech_request_context
     ).

   when others.
     super->/iwbep/if_mgw_appl_srv_runtime~delete_entity(
        EXPORTING
          iv_entity_name = iv_entity_name
          iv_entity_set_name = iv_entity_set_name
          iv_source_name = iv_source_name
          it_key_tab = it_key_tab
          it_navigation_path = it_navigation_path
 ).
 ENDCASE.
endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Public Method ZCL_ZENISB_DPC->/IWBEP/IF_MGW_APPL_SRV_RUNTIME~GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING(optional)
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING(optional)
* | [--->] IV_SOURCE_NAME                 TYPE        STRING(optional)
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [<---] ER_ENTITY                      TYPE REF TO DATA
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
method /IWBEP/IF_MGW_APPL_SRV_RUNTIME~GET_ENTITY.
*&-----------------------------------------------------------------------------------------------*
*&  Include           /IWBEP/DPC_TEMP_GETENTITY_BASE
*&* This class has been generated  on 12.06.2018 14:58:53 in client 001
*&*
*&*       WARNING--> NEVER MODIFY THIS CLASS <--WARNING
*&*   If you want to change the DPC implementation, use the
*&*   generated methods inside the DPC provider subclass - ZCL_ZENISB_DPC_EXT
*&-----------------------------------------------------------------------------------------------*

 DATA headerset_get_entity TYPE zcl_zenisb_mpc=>ts_header.
 DATA itemset_get_entity TYPE zcl_zenisb_mpc=>ts_item.
 DATA lv_entityset_name TYPE string.
 DATA lr_entity TYPE REF TO data.

lv_entityset_name = io_tech_request_context->get_entity_set_name( ).

CASE lv_entityset_name.
*-------------------------------------------------------------------------*
*             EntitySet -  HeaderSet
*-------------------------------------------------------------------------*
      WHEN 'HeaderSet'.
*     Call the entity set generated method
          headerset_get_entity(
               EXPORTING iv_entity_name     = iv_entity_name
                         iv_entity_set_name = iv_entity_set_name
                         iv_source_name     = iv_source_name
                         it_key_tab         = it_key_tab
                         it_navigation_path = it_navigation_path
                         io_tech_request_context = io_tech_request_context
             	 IMPORTING er_entity          = headerset_get_entity
                         es_response_context = es_response_context
          ).

        IF headerset_get_entity IS NOT INITIAL.
*     Send specific entity data to the caller interface
          copy_data_to_ref(
            EXPORTING
              is_data = headerset_get_entity
            CHANGING
              cr_data = er_entity
          ).
        ELSE.
*         In case of initial values - unbind the entity reference
          er_entity = lr_entity.
        ENDIF.
*-------------------------------------------------------------------------*
*             EntitySet -  ItemSet
*-------------------------------------------------------------------------*
      WHEN 'ItemSet'.
*     Call the entity set generated method
          itemset_get_entity(
               EXPORTING iv_entity_name     = iv_entity_name
                         iv_entity_set_name = iv_entity_set_name
                         iv_source_name     = iv_source_name
                         it_key_tab         = it_key_tab
                         it_navigation_path = it_navigation_path
                         io_tech_request_context = io_tech_request_context
             	 IMPORTING er_entity          = itemset_get_entity
                         es_response_context = es_response_context
          ).

        IF itemset_get_entity IS NOT INITIAL.
*     Send specific entity data to the caller interface
          copy_data_to_ref(
            EXPORTING
              is_data = itemset_get_entity
            CHANGING
              cr_data = er_entity
          ).
        ELSE.
*         In case of initial values - unbind the entity reference
          er_entity = lr_entity.
        ENDIF.

      WHEN OTHERS.
        super->/iwbep/if_mgw_appl_srv_runtime~get_entity(
           EXPORTING
             iv_entity_name = iv_entity_name
             iv_entity_set_name = iv_entity_set_name
             iv_source_name = iv_source_name
             it_key_tab = it_key_tab
             it_navigation_path = it_navigation_path
          IMPORTING
            er_entity = er_entity
    ).
 ENDCASE.
endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Public Method ZCL_ZENISB_DPC->/IWBEP/IF_MGW_APPL_SRV_RUNTIME~GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING(optional)
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING(optional)
* | [--->] IV_SOURCE_NAME                 TYPE        STRING(optional)
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION(optional)
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER(optional)
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH(optional)
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR(optional)
* | [--->] IV_FILTER_STRING               TYPE        STRING(optional)
* | [--->] IV_SEARCH_STRING               TYPE        STRING(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ER_ENTITYSET                   TYPE REF TO DATA
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
method /IWBEP/IF_MGW_APPL_SRV_RUNTIME~GET_ENTITYSET.
*&----------------------------------------------------------------------------------------------*
*&  Include           /IWBEP/DPC_TMP_ENTITYSET_BASE
*&* This class has been generated on 12.06.2018 14:58:53 in client 001
*&*
*&*       WARNING--> NEVER MODIFY THIS CLASS <--WARNING
*&*   If you want to change the DPC implementation, use the
*&*   generated methods inside the DPC provider subclass - ZCL_ZENISB_DPC_EXT
*&-----------------------------------------------------------------------------------------------*
 DATA headerset_get_entityset TYPE zcl_zenisb_mpc=>tt_header.
 DATA itemset_get_entityset TYPE zcl_zenisb_mpc=>tt_item.
 DATA lv_entityset_name TYPE string.

lv_entityset_name = io_tech_request_context->get_entity_set_name( ).

CASE lv_entityset_name.
*-------------------------------------------------------------------------*
*             EntitySet -  HeaderSet
*-------------------------------------------------------------------------*
   WHEN 'HeaderSet'.
*     Call the entity set generated method
      headerset_get_entityset(
        EXPORTING
         iv_entity_name = iv_entity_name
         iv_entity_set_name = iv_entity_set_name
         iv_source_name = iv_source_name
         it_filter_select_options = it_filter_select_options
         it_order = it_order
         is_paging = is_paging
         it_navigation_path = it_navigation_path
         it_key_tab = it_key_tab
         iv_filter_string = iv_filter_string
         iv_search_string = iv_search_string
         io_tech_request_context = io_tech_request_context
       IMPORTING
         et_entityset = headerset_get_entityset
         es_response_context = es_response_context
       ).
*     Send specific entity data to the caller interface
      copy_data_to_ref(
        EXPORTING
          is_data = headerset_get_entityset
        CHANGING
          cr_data = er_entityset
      ).

*-------------------------------------------------------------------------*
*             EntitySet -  ItemSet
*-------------------------------------------------------------------------*
   WHEN 'ItemSet'.
*     Call the entity set generated method
      itemset_get_entityset(
        EXPORTING
         iv_entity_name = iv_entity_name
         iv_entity_set_name = iv_entity_set_name
         iv_source_name = iv_source_name
         it_filter_select_options = it_filter_select_options
         it_order = it_order
         is_paging = is_paging
         it_navigation_path = it_navigation_path
         it_key_tab = it_key_tab
         iv_filter_string = iv_filter_string
         iv_search_string = iv_search_string
         io_tech_request_context = io_tech_request_context
       IMPORTING
         et_entityset = itemset_get_entityset
         es_response_context = es_response_context
       ).
*     Send specific entity data to the caller interface
      copy_data_to_ref(
        EXPORTING
          is_data = itemset_get_entityset
        CHANGING
          cr_data = er_entityset
      ).

    WHEN OTHERS.
      super->/iwbep/if_mgw_appl_srv_runtime~get_entityset(
        EXPORTING
          iv_entity_name = iv_entity_name
          iv_entity_set_name = iv_entity_set_name
          iv_source_name = iv_source_name
          it_filter_select_options = it_filter_select_options
          it_order = it_order
          is_paging = is_paging
          it_navigation_path = it_navigation_path
          it_key_tab = it_key_tab
          iv_filter_string = iv_filter_string
          iv_search_string = iv_search_string
          io_tech_request_context = io_tech_request_context
       IMPORTING
         er_entityset = er_entityset ).
 ENDCASE.
endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Public Method ZCL_ZENISB_DPC->/IWBEP/IF_MGW_APPL_SRV_RUNTIME~UPDATE_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING(optional)
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING(optional)
* | [--->] IV_SOURCE_NAME                 TYPE        STRING(optional)
* | [--->] IO_DATA_PROVIDER               TYPE REF TO /IWBEP/IF_MGW_ENTRY_PROVIDER
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY_U(optional)
* | [<---] ER_ENTITY                      TYPE REF TO DATA
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
method /IWBEP/IF_MGW_APPL_SRV_RUNTIME~UPDATE_ENTITY.
*&----------------------------------------------------------------------------------------------*
*&  Include           /IWBEP/DPC_TEMP_UPD_ENTITY_BASE
*&* This class has been generated on 12.06.2018 14:58:53 in client 001
*&*
*&*       WARNING--> NEVER MODIFY THIS CLASS <--WARNING
*&*   If you want to change the DPC implementation, use the
*&*   generated methods inside the DPC provider subclass - ZCL_ZENISB_DPC_EXT
*&-----------------------------------------------------------------------------------------------*

 DATA headerset_update_entity TYPE zcl_zenisb_mpc=>ts_header.
 DATA itemset_update_entity TYPE zcl_zenisb_mpc=>ts_item.
 DATA lv_entityset_name TYPE string.
 DATA lr_entity TYPE REF TO data.

lv_entityset_name = io_tech_request_context->get_entity_set_name( ).

CASE lv_entityset_name.
*-------------------------------------------------------------------------*
*             EntitySet -  HeaderSet
*-------------------------------------------------------------------------*
      WHEN 'HeaderSet'.
*     Call the entity set generated method
          headerset_update_entity(
               EXPORTING iv_entity_name     = iv_entity_name
                         iv_entity_set_name = iv_entity_set_name
                         iv_source_name     = iv_source_name
                         io_data_provider   = io_data_provider
                         it_key_tab         = it_key_tab
                         it_navigation_path = it_navigation_path
                         io_tech_request_context = io_tech_request_context
             	 IMPORTING er_entity          = headerset_update_entity
          ).
       IF headerset_update_entity IS NOT INITIAL.
*     Send specific entity data to the caller interface
          copy_data_to_ref(
            EXPORTING
              is_data = headerset_update_entity
            CHANGING
              cr_data = er_entity
          ).
        ELSE.
*         In case of initial values - unbind the entity reference
          er_entity = lr_entity.
        ENDIF.
*-------------------------------------------------------------------------*
*             EntitySet -  ItemSet
*-------------------------------------------------------------------------*
      WHEN 'ItemSet'.
*     Call the entity set generated method
          itemset_update_entity(
               EXPORTING iv_entity_name     = iv_entity_name
                         iv_entity_set_name = iv_entity_set_name
                         iv_source_name     = iv_source_name
                         io_data_provider   = io_data_provider
                         it_key_tab         = it_key_tab
                         it_navigation_path = it_navigation_path
                         io_tech_request_context = io_tech_request_context
             	 IMPORTING er_entity          = itemset_update_entity
          ).
       IF itemset_update_entity IS NOT INITIAL.
*     Send specific entity data to the caller interface
          copy_data_to_ref(
            EXPORTING
              is_data = itemset_update_entity
            CHANGING
              cr_data = er_entity
          ).
        ELSE.
*         In case of initial values - unbind the entity reference
          er_entity = lr_entity.
        ENDIF.
      WHEN OTHERS.
        super->/iwbep/if_mgw_appl_srv_runtime~update_entity(
           EXPORTING
             iv_entity_name = iv_entity_name
             iv_entity_set_name = iv_entity_set_name
             iv_source_name = iv_source_name
             io_data_provider   = io_data_provider
             it_key_tab = it_key_tab
             it_navigation_path = it_navigation_path
          IMPORTING
            er_entity = er_entity
    ).
 ENDCASE.
endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Public Method ZCL_ZENISB_DPC->/IWBEP/IF_SB_DPC_COMM_SERVICES~COMMIT_WORK
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_RFC_DEST                    TYPE        /IWBEP/DEFI_RFC_DEST(optional)
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
method /IWBEP/IF_SB_DPC_COMM_SERVICES~COMMIT_WORK.
* Call RFC commit work functionality
DATA lt_message      TYPE bapiret2.
DATA lv_message_text TYPE BAPI_MSG.
DATA lo_logger       TYPE REF TO /iwbep/cl_cos_logger.
DATA lv_subrc        TYPE syst-subrc.

lo_logger = /iwbep/if_mgw_conv_srv_runtime~get_logger( ).

  IF iv_rfc_dest IS INITIAL OR iv_rfc_dest EQ 'NONE'.
    CALL FUNCTION 'BAPI_TRANSACTION_COMMIT'
      EXPORTING
      wait   = abap_true
    IMPORTING
      return = lt_message.
  ELSE.
    CALL FUNCTION 'BAPI_TRANSACTION_COMMIT'
      DESTINATION iv_rfc_dest
    EXPORTING
      wait                  = abap_true
    IMPORTING
      return                = lt_message
    EXCEPTIONS
      communication_failure = 1000 MESSAGE lv_message_text
      system_failure        = 1001 MESSAGE lv_message_text
      OTHERS                = 1002.

  IF sy-subrc <> 0.
    lv_subrc = sy-subrc.
    /iwbep/cl_sb_gen_dpc_rt_util=>rfc_exception_handling(
        EXPORTING
          iv_subrc            = lv_subrc
          iv_exp_message_text = lv_message_text
          io_logger           = lo_logger ).
    EXIT.
  ENDIF.
  ENDIF.
endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Public Method ZCL_ZENISB_DPC->/IWBEP/IF_SB_DPC_COMM_SERVICES~GET_GENERATION_STRATEGY
* +-------------------------------------------------------------------------------------------------+
* | [<-()] RV_GENERATION_STRATEGY         TYPE        I
* +--------------------------------------------------------------------------------------</SIGNATURE>
method /IWBEP/IF_SB_DPC_COMM_SERVICES~GET_GENERATION_STRATEGY.
* Get generation strategy
  rv_generation_strategy = '1'.
endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Public Method ZCL_ZENISB_DPC->/IWBEP/IF_SB_DPC_COMM_SERVICES~LOG_MESSAGE
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_MSG_TYPE                    TYPE        SYMSGTY
* | [--->] IV_MSG_ID                      TYPE        SYMSGID(optional)
* | [--->] IV_MSG_NUMBER                  TYPE        SYMSGNO(optional)
* | [--->] IV_MSG_V1                      TYPE        ANY(optional)
* | [--->] IV_MSG_V2                      TYPE        ANY(optional)
* | [--->] IV_MSG_V3                      TYPE        ANY(optional)
* | [--->] IV_MSG_V4                      TYPE        ANY(optional)
* +--------------------------------------------------------------------------------------</SIGNATURE>
method /IWBEP/IF_SB_DPC_COMM_SERVICES~LOG_MESSAGE.
* Log message in the application log
DATA lo_logger TYPE REF TO /iwbep/cl_cos_logger.
DATA lv_text TYPE /iwbep/sup_msg_longtext.

  MESSAGE ID iv_msg_id TYPE iv_msg_type NUMBER iv_msg_number
    WITH iv_msg_v1 iv_msg_v2 iv_msg_v3 iv_msg_v4 INTO lv_text.

  lo_logger = mo_context->get_logger( ).
  lo_logger->log_message(
    EXPORTING
     iv_msg_type   = iv_msg_type
     iv_msg_id     = iv_msg_id
     iv_msg_number = iv_msg_number
     iv_msg_text   = lv_text
     iv_msg_v1     = iv_msg_v1
     iv_msg_v2     = iv_msg_v2
     iv_msg_v3     = iv_msg_v3
     iv_msg_v4     = iv_msg_v4
     iv_agent      = 'DPC' ).
endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Public Method ZCL_ZENISB_DPC->/IWBEP/IF_SB_DPC_COMM_SERVICES~RFC_EXCEPTION_HANDLING
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_SUBRC                       TYPE        SY-SUBRC
* | [--->] IV_EXP_MESSAGE_TEXT            TYPE        /IWBEP/MGW_BOP_RFC_EXCEP_TEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
method /IWBEP/IF_SB_DPC_COMM_SERVICES~RFC_EXCEPTION_HANDLING.
* RFC call exception handling
DATA lo_logger  TYPE REF TO /iwbep/cl_cos_logger.

lo_logger = /iwbep/if_mgw_conv_srv_runtime~get_logger( ).

/iwbep/cl_sb_gen_dpc_rt_util=>rfc_exception_handling(
  EXPORTING
    iv_subrc            = iv_subrc
    iv_exp_message_text = iv_exp_message_text
    io_logger           = lo_logger ).
endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Public Method ZCL_ZENISB_DPC->/IWBEP/IF_SB_DPC_COMM_SERVICES~RFC_SAVE_LOG
* +-------------------------------------------------------------------------------------------------+
* | [--->] IS_RETURN                      TYPE        ANY(optional)
* | [--->] IT_RETURN                      TYPE        ANY TABLE(optional)
* | [--->] IV_ENTITY_TYPE                 TYPE        STRING(optional)
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR(optional)
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
method /IWBEP/IF_SB_DPC_COMM_SERVICES~RFC_SAVE_LOG.
  DATA lo_logger  TYPE REF TO /iwbep/cl_cos_logger.
  DATA lo_message_container TYPE REF TO /iwbep/if_message_container.

  lo_logger = /iwbep/if_mgw_conv_srv_runtime~get_logger( ).
  lo_message_container = /iwbep/if_mgw_conv_srv_runtime~get_message_container( ).

  " Save the RFC call log in the application log
  /iwbep/cl_sb_gen_dpc_rt_util=>rfc_save_log(
    EXPORTING
      is_return            = is_return
      iv_entity_type       = iv_entity_type
      it_return            = it_return
      it_key_tab           = it_key_tab
      io_logger            = lo_logger
      io_message_container = lo_message_container ).
endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Public Method ZCL_ZENISB_DPC->/IWBEP/IF_SB_DPC_COMM_SERVICES~SET_INJECTION
* +-------------------------------------------------------------------------------------------------+
* | [--->] IO_UNIT                        TYPE REF TO /IWBEP/IF_SB_GEN_DPC_INJECTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
method /IWBEP/IF_SB_DPC_COMM_SERVICES~SET_INJECTION.
* Unit test injection
  IF io_unit IS BOUND.
    mo_injection = io_unit.
  ELSE.
    mo_injection = me.
  ENDIF.
endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZENISB_DPC->CHECK_SUBSCRIPTION_AUTHORITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IS_SUBSCRIPTION_DATA           TYPE        /IWBEP/S_MGW_DB_SUB_DATA
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
method CHECK_SUBSCRIPTION_AUTHORITY.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'CHECK_SUBSCRIPTION_AUTHORITY'.
endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZENISB_DPC->HEADERSET_CREATE_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY_C(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IO_DATA_PROVIDER               TYPE REF TO /IWBEP/IF_MGW_ENTRY_PROVIDER(optional)
* | [<---] ER_ENTITY                      TYPE        ZCL_ZENISB_MPC=>TS_HEADER
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
method HEADERSET_CREATE_ENTITY.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'HEADERSET_CREATE_ENTITY'.
endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZENISB_DPC->HEADERSET_DELETE_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY_D(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
method HEADERSET_DELETE_ENTITY.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'HEADERSET_DELETE_ENTITY'.
endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZENISB_DPC->HEADERSET_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_ZENISB_MPC=>TS_HEADER
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
method HEADERSET_GET_ENTITY.

  data: lx_root        type ref to cx_root,
        lx_cnt         type ref to cx_swf_cnt_container,
        lo_ret         type ref to /iwbep/if_message_container,
        lt_wi          type ibo_t_wf_facade_inbox_wi,
        lt_task_filter type ibo_t_inbox_task_id,
        lt_sort        type abap_sortorder_tab,
        ls_hdr         type crmd_orderadm_h,
        ls_wi          type ibo_s_wf_facade_inbox_wi,
        ls_key         type /iwbep/s_mgw_name_value_pair,
        ##needed
        lv_uni         type setst_type_any,
        lv_task_filter type ibo_inbox_task_id.

  field-symbols: <ls_set> type zcl_zenisb_mpc=>ts_header.

* to map return messages in header response (sap-message)
  lo_ret = me->/iwbep/if_mgw_conv_srv_runtime~get_message_container( ).

*  raise exception type /iwbep/cx_mgw_busi_exception
*    exporting
*      textid            = /iwbep/cx_mgw_busi_exception=>business_error
*      message           = ''
*      message_container = lo_ret.

* build entity set
************************************************************************************************

  try.

*     get key (must be provided)
      if it_key_tab is initial. return. else. read table it_key_tab into ls_key index 1. if sy-subrc ne 0 or ls_key-value is initial. return. endif. endif.

*     get workitem list
      lv_task_filter = 'TS90000006'. append lv_task_filter to lt_task_filter.
      cl_ibo_wf_inbox_facade=>get_workitem_list( exporting iv_user = sy-uname iv_passive_substitution = space it_task_filter = lt_task_filter importing et_work_item = lt_wi ).

*     nothing -> exit
      if lt_wi is initial. return. else. read table lt_wi into ls_wi with key wi_id = ls_key-value. if sy-subrc ne 0. return. endif. endif.

    catch cx_static_check cx_dynamic_check into lx_root.

      raise exception type /iwbep/cx_mgw_not_impl_exc
        exporting
          textid   = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
          previous = lx_root
          method   = 'HEADERSET_GET_ENTITYSET'.

  endtry.

  try.
      er_entity-workitemid = ls_wi-wi_id.
*     get cart guid
      cl_swf_run_wim_factory=>find_by_wiid( ls_wi-wi_id )->get_wi_container( )->if_swf_cnt_element_access_1~element_get_value( exporting name = 'BOID' importing value = er_entity-basketguid unit = lv_uni exception_return = lx_cnt ).
      if lx_cnt is bound or er_entity-basketguid is initial. clear er_entity. endif.
    catch cx_static_check cx_dynamic_check.
      clear er_entity.
  endtry.

* nothing -> exit
  if er_entity is initial. return. endif.

  try.

      select single * from crmd_orderadm_h into ls_hdr where guid eq er_entity-basketguid.
      er_entity-basketnumber = ls_hdr-object_id.
      er_entity-createdby = ls_hdr-created_by.
      er_entity-status = 'WTG'.

    catch cx_static_check cx_dynamic_check into lx_root.

      raise exception type /iwbep/cx_mgw_not_impl_exc
        exporting
          textid   = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
          previous = lx_root
          method   = 'HEADERSET_GET_ENTITYSET'.

  endtry.

endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZENISB_DPC->HEADERSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZENISB_MPC=>TT_HEADER
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
method headerset_get_entityset.

  data: lx_root        type ref to cx_root,
        lx_cnt         type ref to cx_swf_cnt_container,
        lo_ret         type ref to /iwbep/if_message_container,
        lt_hdr         type standard table of crmd_orderadm_h,
        lt_wi          type ibo_t_wf_facade_inbox_wi,
        lt_task_filter type ibo_t_inbox_task_id,
        lt_sort        type abap_sortorder_tab,
        ls_set         type zcl_zenisb_mpc=>ts_header,
        ls_order       type /iwbep/s_mgw_sorting_order,
        ls_sort        type abap_sortorder,
        ls_hdr         type crmd_orderadm_h,
        ls_wi          type ibo_s_wf_facade_inbox_wi,
        ls_key         type /iwbep/s_mgw_name_value_pair,
        ##needed
        lv_uni         type setst_type_any,
        lv_search      type string,
        lv_search_str  type string,
        lv_osql        type string,
        lv_task_filter type ibo_inbox_task_id.

  field-symbols: <ls_set> type zcl_zenisb_mpc=>ts_header.

* to map return messages in header response (sap-message)
  lo_ret = me->/iwbep/if_mgw_conv_srv_runtime~get_message_container( ).

*  raise exception type /iwbep/cx_mgw_busi_exception
*    exporting
*      textid            = /iwbep/cx_mgw_busi_exception=>business_error
*      message           = ''
*      message_container = lo_ret.

* build entity set
************************************************************************************************

  try.

*     get workitem list
      lv_task_filter = 'TS90000006'. append lv_task_filter to lt_task_filter.
      cl_ibo_wf_inbox_facade=>get_workitem_list( exporting iv_user = sy-uname iv_passive_substitution = space it_task_filter = lt_task_filter importing et_work_item = lt_wi ).

*     nothing -> exit
      if lt_wi is initial. return. endif.

    catch cx_static_check cx_dynamic_check into lx_root.

      raise exception type /iwbep/cx_mgw_not_impl_exc
        exporting
          textid   = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
          previous = lx_root
          method   = 'HEADERSET_GET_ENTITYSET'.

  endtry.

  loop at lt_wi into ls_wi.
    try.
*       prepare fields
        clear: ls_set.
        ls_set-workitemid = ls_wi-wi_id.
*       get cart guid
        cl_swf_run_wim_factory=>find_by_wiid( ls_wi-wi_id )->get_wi_container( )->if_swf_cnt_element_access_1~element_get_value( exporting name = 'BOID' importing value = ls_set-basketguid unit = lv_uni exception_return = lx_cnt ).
        if lx_cnt is bound or ls_set-basketguid is initial. continue. endif.
        append ls_set to et_entityset.
      catch cx_static_check cx_dynamic_check.
        continue.
    endtry.
  endloop.

* nothing -> exit
  if et_entityset is initial. return. endif.

  try.

      select * from: crmd_orderadm_h into table lt_hdr for all entries in et_entityset where guid eq et_entityset-basketguid.

      loop at et_entityset assigning <ls_set>.
        read table lt_hdr into ls_hdr with key guid = <ls_set>-basketguid.
        if sy-subrc ne 0. continue. endif.
        <ls_set>-basketnumber = ls_hdr-object_id.
        <ls_set>-createdby = ls_hdr-created_by.
        <ls_set>-status = 'WTG'.
        <ls_set>-searchkey = |{ <ls_set>-basketnumber }{ <ls_set>-createdby }|.
        translate <ls_set>-searchkey to upper case.
      endloop.

    catch cx_static_check cx_dynamic_check into lx_root.

      raise exception type /iwbep/cx_mgw_not_impl_exc
        exporting
          textid   = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
          previous = lx_root
          method   = 'HEADERSET_GET_ENTITYSET'.

  endtry.

  try.

*     filter 4 keytab (if provided)
************************************************************************************************
      if not it_key_tab is initial.
        loop at it_key_tab into ls_key.
          translate ls_key-name to upper case.
          if sy-tabix eq 1. lv_osql = |{ ls_key-name } EQ '{ ls_key-value }'|. else. lv_osql = |{ lv_osql } AND { ls_key-name } EQ '{ ls_key-value }'|. endif.
        endloop.
        lv_osql = |NOT ( { lv_osql } )|.  delete et_entityset where (lv_osql).
      endif.

*     filter with open sql (instead of using it_filter_select_options or iv_filter_string)
************************************************************************************************
      clear lv_osql. lv_osql = io_tech_request_context->get_osql_where_clause( ).
      if not lv_osql is initial.
        translate lv_osql: to upper case, using '_+', using '%*'. replace all occurrences of 'LIKE' in lv_osql with 'CP'. lv_osql = |NOT { lv_osql }|.
        delete et_entityset where (lv_osql).
      endif.

*     sorting
************************************************************************************************
      if not it_order is initial.
        loop at it_order into ls_order.
          translate: ls_order-order to upper case, ls_order-property to upper case.
          ls_sort-name = ls_order-property.
          if ls_order-order eq 'DESC'. ls_sort-descending = abap_true. endif.
          append ls_sort to lt_sort.
        endloop.
        sort et_entityset by (lt_sort).
      else.
        sort et_entityset by basketnumber descending.
      endif.

*     search string
************************************************************************************************
      if not iv_search_string is initial.
*       not supported in odata v2
      endif.

*     paging (last thing to do)
************************************************************************************************
      if not is_paging-skip is initial. delete et_entityset to is_paging-skip. endif.
      if not is_paging-top is initial. delete et_entityset from is_paging-top + 1. endif.

    catch cx_static_check cx_dynamic_check into lx_root.

      raise exception type /iwbep/cx_mgw_not_impl_exc
        exporting
          textid   = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
          previous = lx_root
          method   = 'HEADERSET_GET_ENTITYSET'.

  endtry.

endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZENISB_DPC->HEADERSET_UPDATE_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY_U(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IO_DATA_PROVIDER               TYPE REF TO /IWBEP/IF_MGW_ENTRY_PROVIDER(optional)
* | [<---] ER_ENTITY                      TYPE        ZCL_ZENISB_MPC=>TS_HEADER
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
method headerset_update_entity.

* for instance handle only full header approval/rejection

  data: lo_sc     type ref to /sapsrm/cl_pdo_bo_sc_adv,
        lo_msg    type ref to /sapsrm/if_pdo_msg_consumer,
        lo_ret    type ref to /iwbep/if_message_container,
        lo_cont   type ref to if_swf_ifs_parameter_container,
        lt_msg    type bbpt_pd_messages,
        lx_root   type ref to cx_root,
        ls_basket type zcl_zenisb_mpc=>ts_header,
        ls_msg    type bbp_pds_messages,
        lv_wiid   type sww_wiid,
        lv_key    type text255,
        lv_mode   type /sapsrm/pdo_inst_mode,
        ##needed
        lv_uni    type setst_type_any.

  data: lt_cv    type swfnamvtab,
        lt_co    type swfnamvtab,
        lt_cs    type swfnamvtab,
        lt_cm    type swft100tab,
        lt_cw    type swft100tab,
        ls_cv    type swaconextv,
        ls_cs    type swaconextv.

* to map return messages in header response (sap-message)
  lo_ret = me->/iwbep/if_mgw_conv_srv_runtime~get_message_container( ).

*  raise exception type /iwbep/cx_mgw_busi_exception
*    exporting
*      textid            = /iwbep/cx_mgw_busi_exception=>business_error
*      message           = ''
*      message_container = lo_ret.

  try.

*     get http data
      io_data_provider->read_entry_data( importing es_data = ls_basket ). lv_wiid = ls_basket-workitemid.

*     get decision set key & mode
      cl_swf_run_wim_factory=>find_by_wiid( lv_wiid )->get_wi_container( )->to_simple_container( importing ex_container_values = lt_cv ex_container_objects = lt_co ex_container_sibflporbs = lt_cs ex_t_messages = lt_cm ex_t_warnings = lt_cw ).
      read table lt_cv into ls_cv with key element = 'BOMODE'. lv_mode  = ls_cv-value.
      read table lt_cs into ls_cs with key element = 'DECISIONSET'. lv_key = ls_cs-value(32).

*     get cart instance
      lo_sc ?= zcl_stdobjwi=>get_instance( document_type = /sapsrm/if_pdo_obj_types_c=>gc_pdo_shop document_guid = ls_basket-basketguid mode = lv_mode workitem_id = lv_wiid ).

*     perform action
      case ls_basket-status.
        when 'APP'. lo_sc->/sapsrm/if_pdo_adv_base~approve( changing co_message_handler = lo_msg ).
        when 'REJ'. lo_sc->/sapsrm/if_pdo_adv_base~reject( changing co_message_handler = lo_msg ).
        when others. raise exception type /iwbep/cx_mgw_not_impl_exc exporting textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented method = 'HEADERSET_UPDATE_ENTITY'.
      endcase.

*     result -> if error exit without closing workitem
      if lo_msg is bound.
        lo_msg->get_messages( importing et_messages = lt_msg ).
        loop at lt_msg into ls_msg where msgty ca 'EA'.
          raise exception type /iwbep/cx_mgw_not_impl_exc
            exporting
              textid   = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
              previous = lx_root
              method   = 'HEADERSET_UPDATE_ENTITY'.
        endloop.
      endif.

*     prepare event container
      lo_cont = cl_swf_evt_event=>get_event_container( im_objcateg = 'CL' im_objtype = '/SAPSRM/CL_WF_DSET_SBWF' im_event = 'EXECUTED' ).
      lo_cont->set( name = 'MV_AGENT_ID' value = sy-uname ).

*     raise event
      cl_swf_evt_event=>raise_in_update_task( im_objcateg = 'CL' im_objtype = '/SAPSRM/CL_WF_DSET_SBWF' im_event = 'EXECUTED' im_objkey = lv_key im_event_container = lo_cont ).

    catch cx_static_check cx_dynamic_check into lx_root.

      raise exception type /iwbep/cx_mgw_not_impl_exc
        exporting
          textid   = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
          previous = lx_root
          method   = 'HEADERSET_UPDATE_ENTITY'.

  endtry.


endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZENISB_DPC->ITEMSET_CREATE_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY_C(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IO_DATA_PROVIDER               TYPE REF TO /IWBEP/IF_MGW_ENTRY_PROVIDER(optional)
* | [<---] ER_ENTITY                      TYPE        ZCL_ZENISB_MPC=>TS_ITEM
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
method ITEMSET_CREATE_ENTITY.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'ITEMSET_CREATE_ENTITY'.
endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZENISB_DPC->ITEMSET_DELETE_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY_D(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
method ITEMSET_DELETE_ENTITY.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'ITEMSET_DELETE_ENTITY'.
endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZENISB_DPC->ITEMSET_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_ZENISB_MPC=>TS_ITEM
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
method ITEMSET_GET_ENTITY.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'ITEMSET_GET_ENTITY'.
endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZENISB_DPC->ITEMSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZENISB_MPC=>TT_ITEM
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
method itemset_get_entityset.

  data: lx_root        type ref to cx_root,
        lo_itm         type ref to /sapsrm/cl_wf_ds_item,
        lo_ret         type ref to /iwbep/if_message_container,
        lo_ds          type ref to /sapsrm/cl_wf_decisionset,
        lo_dslo        type ref to /sapsrm/if_wf_leading_obj_deco,
        ls_order       type /iwbep/s_mgw_sorting_order,
        lt_item        type standard table of crmd_orderadm_i,
        lt_igp         type standard table of bbp_pdigp,
        lt_wi          type ibo_t_wf_facade_inbox_wi,
        lt_itm         type /sapsrm/t_wf_ds_item,
        lt_task_filter type ibo_t_inbox_task_id,
        lt_sort        type abap_sortorder_tab,
        lt_set         type zcl_zenisb_mpc=>tt_item,
        ls_set         type zcl_zenisb_mpc=>ts_item,
        ls_sort        type abap_sortorder,
        ls_item        type crmd_orderadm_i,
        ls_igp         type bbp_pdigp,
        ls_wi          type ibo_s_wf_facade_inbox_wi,
        ls_key         type /iwbep/s_mgw_name_value_pair,
        ##needed
        lv_guid        type /sapsrm/wf_document_guid,
        lv_search      type string,
        lv_search_str  type string,
        lv_osql        type string,
        lv_task_filter type ibo_inbox_task_id.

  field-symbols: <ls_set> type zcl_zenisb_mpc=>ts_item.

* to map return messages in header response (sap-message)
  lo_ret = me->/iwbep/if_mgw_conv_srv_runtime~get_message_container( ).

* build entity set
************************************************************************************************

  try.

*     get workitem list
      lv_task_filter = 'TS90000006'. append lv_task_filter to lt_task_filter.
      cl_ibo_wf_inbox_facade=>get_workitem_list( exporting iv_user = sy-uname iv_passive_substitution = space it_task_filter = lt_task_filter importing et_work_item = lt_wi ).

*     nothing -> exit
      if lt_wi is initial. return. endif.

    catch cx_static_check cx_dynamic_check into lx_root.

      raise exception type /iwbep/cx_mgw_not_impl_exc
        exporting
          textid   = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
          previous = lx_root
          method   = 'ITEMSET_GET_ENTITYSET'.

  endtry.

  loop at lt_wi into ls_wi.
    try.
*       prepare fields
        ls_set-workitemid = ls_wi-wi_id.
*       get items subject to approval
        clear: lv_guid. refresh: lt_itm. free: lo_dslo, lo_ds, lo_itm.
        lv_guid = /sapsrm/cl_wf_process_manager=>get_workitem_ref_by_sbwf_id( ls_wi-wi_id )->get_mv_leading_object_guid( ).
        create object lo_dslo type /sapsrm/cl_wf_ds_leading_obj exporting iv_leading_object_guid = lv_guid.
        lo_ds ?= lo_dslo->get_leading_object( ).
        ls_set-basketguid = lo_ds->get_mv_document_guid( ).
        if lo_ds->get_mv_decision_type( ) ne '1'.
*         multiple decision set or item decision -> items added
          lt_itm = lo_ds->/sapsrm/if_wf_decisionset~get_ds_item_list( ).
          loop at lt_itm into lo_itm. ls_set-itemguid = lo_itm->get_mv_item_guid( ). append ls_set to et_entityset. endloop.
        else.
*         fucking standard don't add items to set -> se /sapsrm/cl_wf_ds_generator=>create_ds_by_decision_type method
*         -> append and explode right after
          append ls_set to et_entityset.
        endif.
      catch cx_static_check cx_dynamic_check.
        continue.
    endtry.
  endloop.

* nothing -> exit
  if et_entityset is initial. return. endif.

  try.

      select * from: crmd_orderadm_i into table lt_item for all entries in et_entityset where header eq et_entityset-basketguid, bbp_pdigp into table lt_igp for all entries in lt_item where guid eq lt_item-guid.

      loop at et_entityset assigning <ls_set>.
        if not <ls_set>-itemguid is initial.
          read table lt_item into ls_item with key guid = <ls_set>-itemguid.
          if sy-subrc ne 0. continue. endif.
          read table lt_igp into ls_igp with key guid = ls_item-guid.
          if sy-subrc ne 0. continue. endif.
          <ls_set>-itemid = ls_item-number_int.
          <ls_set>-description = ls_item-description.
          <ls_set>-value = ls_igp-value.
          <ls_set>-currency = ls_igp-currency.
          <ls_set>-quantity = ls_igp-quantity.
          <ls_set>-unit = ls_igp-unit.
        else.
          loop at lt_item into ls_item where header eq <ls_set>-basketguid.
            read table lt_igp into ls_igp with key guid = ls_item-guid del_ind = space.
            if sy-subrc ne 0. continue. endif.
            move-corresponding <ls_set> to ls_set.
            ls_set-itemguid = ls_item-guid.
            ls_set-itemid = ls_item-number_int.
            ls_set-description = ls_item-description.
            ls_set-value = ls_igp-value.
            ls_set-currency = ls_igp-currency.
            ls_set-quantity = ls_igp-quantity.
            ls_set-unit = ls_igp-unit.
            append ls_set to lt_set.
          endloop.
        endif.
      endloop.

      delete et_entityset where itemguid is initial. append lines of lt_set to et_entityset.

    catch cx_static_check cx_dynamic_check into lx_root.

      raise exception type /iwbep/cx_mgw_not_impl_exc
        exporting
          textid   = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
          previous = lx_root
          method   = 'ITEMSET_GET_ENTITYSET'.

  endtry.

  try.

*     filter 4 keytab (if provided)
************************************************************************************************
      if not it_key_tab is initial.
        loop at it_key_tab into ls_key.
          translate ls_key-name to upper case.
          if sy-tabix eq 1. lv_osql = |{ ls_key-name } EQ '{ ls_key-value }'|. else. lv_osql = |{ lv_osql } AND { ls_key-name } EQ '{ ls_key-value }'|. endif.
        endloop.
        lv_osql = |NOT ( { lv_osql } )|. delete et_entityset where (lv_osql).
      endif.

*     filter with open sql (instead of using it_filter_select_options or iv_filter_string)
************************************************************************************************
      clear lv_osql. lv_osql = io_tech_request_context->get_osql_where_clause( ).
      if not lv_osql is initial.
        translate lv_osql: to upper case, using '_+', using '%*'. replace all occurrences of 'LIKE' in lv_osql with 'CP'. lv_osql = |NOT { lv_osql }|.
        delete et_entityset where (lv_osql).
      endif.

*     sorting
************************************************************************************************
      if not it_order is initial.
        loop at it_order into ls_order.
          translate: ls_order-order to upper case, ls_order-property to upper case.
          ls_sort-name = ls_order-property.
          if ls_order-order eq 'DESC'. ls_sort-descending = abap_true. endif.
          append ls_sort to lt_sort.
        endloop.
        sort et_entityset by (lt_sort).
      else.
        sort et_entityset by basketguid itemid.
      endif.

*     search string
************************************************************************************************
      if not iv_search_string is initial.
*       not supported in odata v2
      endif.

*     paging (last thing to do)
************************************************************************************************
      if not is_paging-skip is initial. delete et_entityset to is_paging-skip. endif.
      if not is_paging-top is initial. delete et_entityset from is_paging-top + 1. endif.

    catch cx_static_check cx_dynamic_check into lx_root.

      raise exception type /iwbep/cx_mgw_not_impl_exc
        exporting
          textid   = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
          previous = lx_root
          method   = 'ITEMSET_GET_ENTITYSET'.

  endtry.

endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZENISB_DPC->ITEMSET_UPDATE_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY_U(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IO_DATA_PROVIDER               TYPE REF TO /IWBEP/IF_MGW_ENTRY_PROVIDER(optional)
* | [<---] ER_ENTITY                      TYPE        ZCL_ZENISB_MPC=>TS_ITEM
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
method ITEMSET_UPDATE_ENTITY.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'ITEMSET_UPDATE_ENTITY'.
endmethod.
ENDCLASS.