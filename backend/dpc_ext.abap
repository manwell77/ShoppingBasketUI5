class ZCL_ZENISB_DPC_EXT definition
  public
  inheriting from ZCL_ZENISB_DPC
  create public .

public section.

  methods /IWBEP/IF_MGW_APPL_SRV_RUNTIME~GET_EXPANDED_ENTITY
    redefinition .
protected section.
private section.
ENDCLASS.



CLASS ZCL_ZENISB_DPC_EXT IMPLEMENTATION.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Public Method ZCL_ZENISB_DPC_EXT->/IWBEP/IF_MGW_APPL_SRV_RUNTIME~GET_EXPANDED_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING(optional)
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING(optional)
* | [--->] IV_SOURCE_NAME                 TYPE        STRING(optional)
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH(optional)
* | [--->] IO_EXPAND                      TYPE REF TO /IWBEP/IF_MGW_ODATA_EXPAND(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [<---] ER_ENTITY                      TYPE REF TO DATA
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [<---] ET_EXPANDED_CLAUSES            TYPE        STRING_TABLE
* | [<---] ET_EXPANDED_TECH_CLAUSES       TYPE        STRING_TABLE
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
method /iwbep/if_mgw_appl_srv_runtime~get_expanded_entity.

  data:
        ##NEEDED
        lx_cnt              TYPE REF TO CX_SWF_CNT_CONTAINER,
        lv_guid             type bbp_guid,
        lv_wid              type sww_wiid,
        lv_uname            type xubname,
        ##needed
        lv_uni         type setst_type_any,
        ls_key_tab          type /iwbep/s_mgw_name_value_pair,
        lt_key_tab          type /iwbep/t_mgw_name_value_pair,
        lt_navigation_path  type /iwbep/t_mgw_navigation_path.

  field-symbols: <ls_navigation_path> type /iwbep/s_mgw_navigation_path.

* prepare
  append lines of: it_key_tab to lt_key_tab, it_navigation_path to lt_navigation_path.

* modify for going to user
  read table lt_navigation_path assigning <ls_navigation_path> with key nav_prop = 'RequesterSet' target_type = 'Requester'. "#EC NOTEXT
  if sy-subrc eq 0.
*   with workitemid
    read table it_key_tab into ls_key_tab index 1.
    try.
        lv_wid = ls_key_tab-value.
        cl_swf_run_wim_factory=>find_by_wiid( lv_wid )->get_wi_container( )->if_swf_cnt_element_access_1~element_get_value( exporting name = 'BOID' importing value = lv_guid unit = lv_uni exception_return = lx_cnt ).
        select single created_by from crmd_orderadm_h into lv_uname where guid eq lv_guid.
      catch cx_static_check cx_dynamic_check.
        clear er_entity. return.
    endtry.
*   for expanded
    refresh: <ls_navigation_path>-key_tab, lt_key_tab.
    ls_key_tab-name = 'UserID'.
    ls_key_tab-value = lv_uname.
    append ls_key_tab to: lt_key_tab, <ls_navigation_path>-key_tab.
  endif.

  super->/iwbep/if_mgw_appl_srv_runtime~get_expanded_entity(
    exporting
      iv_entity_name = iv_entity_name
      iv_entity_set_name = iv_entity_set_name
      iv_source_name = iv_source_name
      it_key_tab = lt_key_tab
      it_navigation_path = it_navigation_path
      io_expand = io_expand
      io_tech_request_context = io_tech_request_context
    importing
      er_entity = er_entity
      es_response_context = es_response_context
      et_expanded_clauses = et_expanded_clauses
      et_expanded_tech_clauses = et_expanded_tech_clauses ).

endmethod.
ENDCLASS.