view: outpatient_classification {
  sql_table_name: sc_hhs_casestudy_202002.outpatient_classification ;;

  dimension_group: _metadata__timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}._metadata__timestamp AS TIMESTAMP) ;;
  }

  dimension: _metadata__uuid {
    type: string
    sql: ${TABLE}._metadata__uuid ;;
  }

  dimension_group: _metadata_file_modified_ts {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}._metadata_file_modified_ts AS TIMESTAMP) ;;
  }

  dimension: _metadata_file_name {
    type: string
    sql: ${TABLE}._metadata_file_name ;;
  }

  dimension: _metadata_line_number {
    type: number
    sql: ${TABLE}._metadata_line_number ;;
  }

  dimension: _metadata_total_rows {
    type: number
    sql: ${TABLE}._metadata_total_rows ;;
  }

  dimension: apc_grp_ver {
    type: string
    sql: ${TABLE}.APC_GRP_VER ;;
  }

  dimension: apc_procedure_code_1 {
    type: string
    sql: ${TABLE}.APC_PROCEDURE_CODE_1 ;;
  }

  dimension: apc_procedure_code_10 {
    type: string
    sql: ${TABLE}.APC_PROCEDURE_CODE_10 ;;
  }

  dimension: apc_procedure_code_2 {
    type: string
    sql: ${TABLE}.APC_PROCEDURE_CODE_2 ;;
  }

  dimension: apc_procedure_code_3 {
    type: string
    sql: ${TABLE}.APC_PROCEDURE_CODE_3 ;;
  }

  dimension: apc_procedure_code_4 {
    type: string
    sql: ${TABLE}.APC_PROCEDURE_CODE_4 ;;
  }

  dimension: apc_procedure_code_5 {
    type: string
    sql: ${TABLE}.APC_PROCEDURE_CODE_5 ;;
  }

  dimension: apc_procedure_code_6 {
    type: string
    sql: ${TABLE}.APC_PROCEDURE_CODE_6 ;;
  }

  dimension: apc_procedure_code_7 {
    type: string
    sql: ${TABLE}.APC_PROCEDURE_CODE_7 ;;
  }

  dimension: apc_procedure_code_8 {
    type: string
    sql: ${TABLE}.APC_PROCEDURE_CODE_8 ;;
  }

  dimension: apc_procedure_code_9 {
    type: string
    sql: ${TABLE}.APC_PROCEDURE_CODE_9 ;;
  }

  dimension: apc_px_status_ind_code_1 {
    type: string
    sql: ${TABLE}.APC_PX_STATUS_IND_CODE_1 ;;
  }

  dimension: apc_px_status_ind_code_10 {
    type: string
    sql: ${TABLE}.APC_PX_STATUS_IND_CODE_10 ;;
  }

  dimension: apc_px_status_ind_code_2 {
    type: string
    sql: ${TABLE}.APC_PX_STATUS_IND_CODE_2 ;;
  }

  dimension: apc_px_status_ind_code_3 {
    type: string
    sql: ${TABLE}.APC_PX_STATUS_IND_CODE_3 ;;
  }

  dimension: apc_px_status_ind_code_4 {
    type: string
    sql: ${TABLE}.APC_PX_STATUS_IND_CODE_4 ;;
  }

  dimension: apc_px_status_ind_code_5 {
    type: string
    sql: ${TABLE}.APC_PX_STATUS_IND_CODE_5 ;;
  }

  dimension: apc_px_status_ind_code_6 {
    type: string
    sql: ${TABLE}.APC_PX_STATUS_IND_CODE_6 ;;
  }

  dimension: apc_px_status_ind_code_7 {
    type: string
    sql: ${TABLE}.APC_PX_STATUS_IND_CODE_7 ;;
  }

  dimension: apc_px_status_ind_code_8 {
    type: string
    sql: ${TABLE}.APC_PX_STATUS_IND_CODE_8 ;;
  }

  dimension: apc_px_status_ind_code_9 {
    type: string
    sql: ${TABLE}.APC_PX_STATUS_IND_CODE_9 ;;
  }

  dimension: apc_weight_1 {
    type: string
    sql: ${TABLE}.APC_WEIGHT_1 ;;
  }

  dimension: apc_weight_10 {
    type: string
    sql: ${TABLE}.APC_WEIGHT_10 ;;
  }

  dimension: apc_weight_2 {
    type: string
    sql: ${TABLE}.APC_WEIGHT_2 ;;
  }

  dimension: apc_weight_3 {
    type: string
    sql: ${TABLE}.APC_WEIGHT_3 ;;
  }

  dimension: apc_weight_4 {
    type: string
    sql: ${TABLE}.APC_WEIGHT_4 ;;
  }

  dimension: apc_weight_5 {
    type: string
    sql: ${TABLE}.APC_WEIGHT_5 ;;
  }

  dimension: apc_weight_6 {
    type: string
    sql: ${TABLE}.APC_WEIGHT_6 ;;
  }

  dimension: apc_weight_7 {
    type: string
    sql: ${TABLE}.APC_WEIGHT_7 ;;
  }

  dimension: apc_weight_8 {
    type: string
    sql: ${TABLE}.APC_WEIGHT_8 ;;
  }

  dimension: apc_weight_9 {
    type: string
    sql: ${TABLE}.APC_WEIGHT_9 ;;
  }

  dimension: ccs_oth_diag_code_1 {
    type: string
    sql: ${TABLE}.CCS_OTH_DIAG_CODE_1 ;;
  }

  dimension: ccs_oth_diag_code_10 {
    type: string
    sql: ${TABLE}.CCS_OTH_DIAG_CODE_10 ;;
  }

  dimension: ccs_oth_diag_code_11 {
    type: string
    sql: ${TABLE}.CCS_OTH_DIAG_CODE_11 ;;
  }

  dimension: ccs_oth_diag_code_12 {
    type: string
    sql: ${TABLE}.CCS_OTH_DIAG_CODE_12 ;;
  }

  dimension: ccs_oth_diag_code_13 {
    type: string
    sql: ${TABLE}.CCS_OTH_DIAG_CODE_13 ;;
  }

  dimension: ccs_oth_diag_code_14 {
    type: string
    sql: ${TABLE}.CCS_OTH_DIAG_CODE_14 ;;
  }

  dimension: ccs_oth_diag_code_15 {
    type: string
    sql: ${TABLE}.CCS_OTH_DIAG_CODE_15 ;;
  }

  dimension: ccs_oth_diag_code_16 {
    type: string
    sql: ${TABLE}.CCS_OTH_DIAG_CODE_16 ;;
  }

  dimension: ccs_oth_diag_code_17 {
    type: string
    sql: ${TABLE}.CCS_OTH_DIAG_CODE_17 ;;
  }

  dimension: ccs_oth_diag_code_18 {
    type: string
    sql: ${TABLE}.CCS_OTH_DIAG_CODE_18 ;;
  }

  dimension: ccs_oth_diag_code_19 {
    type: string
    sql: ${TABLE}.CCS_OTH_DIAG_CODE_19 ;;
  }

  dimension: ccs_oth_diag_code_2 {
    type: string
    sql: ${TABLE}.CCS_OTH_DIAG_CODE_2 ;;
  }

  dimension: ccs_oth_diag_code_20 {
    type: string
    sql: ${TABLE}.CCS_OTH_DIAG_CODE_20 ;;
  }

  dimension: ccs_oth_diag_code_21 {
    type: string
    sql: ${TABLE}.CCS_OTH_DIAG_CODE_21 ;;
  }

  dimension: ccs_oth_diag_code_22 {
    type: string
    sql: ${TABLE}.CCS_OTH_DIAG_CODE_22 ;;
  }

  dimension: ccs_oth_diag_code_23 {
    type: string
    sql: ${TABLE}.CCS_OTH_DIAG_CODE_23 ;;
  }

  dimension: ccs_oth_diag_code_24 {
    type: string
    sql: ${TABLE}.CCS_OTH_DIAG_CODE_24 ;;
  }

  dimension: ccs_oth_diag_code_3 {
    type: string
    sql: ${TABLE}.CCS_OTH_DIAG_CODE_3 ;;
  }

  dimension: ccs_oth_diag_code_4 {
    type: string
    sql: ${TABLE}.CCS_OTH_DIAG_CODE_4 ;;
  }

  dimension: ccs_oth_diag_code_5 {
    type: string
    sql: ${TABLE}.CCS_OTH_DIAG_CODE_5 ;;
  }

  dimension: ccs_oth_diag_code_6 {
    type: string
    sql: ${TABLE}.CCS_OTH_DIAG_CODE_6 ;;
  }

  dimension: ccs_oth_diag_code_7 {
    type: string
    sql: ${TABLE}.CCS_OTH_DIAG_CODE_7 ;;
  }

  dimension: ccs_oth_diag_code_8 {
    type: string
    sql: ${TABLE}.CCS_OTH_DIAG_CODE_8 ;;
  }

  dimension: ccs_oth_diag_code_9 {
    type: string
    sql: ${TABLE}.CCS_OTH_DIAG_CODE_9 ;;
  }

  dimension: ccs_princ_diag_code {
    type: string
    sql: ${TABLE}.CCS_PRINC_DIAG_CODE ;;
  }

  dimension: ccs_proc_code_1 {
    type: string
    sql: ${TABLE}.CCS_PROC_CODE_1 ;;
  }

  dimension: ccs_proc_code_10 {
    type: string
    sql: ${TABLE}.CCS_PROC_CODE_10 ;;
  }

  dimension: ccs_proc_code_11 {
    type: string
    sql: ${TABLE}.CCS_PROC_CODE_11 ;;
  }

  dimension: ccs_proc_code_12 {
    type: string
    sql: ${TABLE}.CCS_PROC_CODE_12 ;;
  }

  dimension: ccs_proc_code_13 {
    type: string
    sql: ${TABLE}.CCS_PROC_CODE_13 ;;
  }

  dimension: ccs_proc_code_14 {
    type: string
    sql: ${TABLE}.CCS_PROC_CODE_14 ;;
  }

  dimension: ccs_proc_code_15 {
    type: string
    sql: ${TABLE}.CCS_PROC_CODE_15 ;;
  }

  dimension: ccs_proc_code_16 {
    type: string
    sql: ${TABLE}.CCS_PROC_CODE_16 ;;
  }

  dimension: ccs_proc_code_17 {
    type: string
    sql: ${TABLE}.CCS_PROC_CODE_17 ;;
  }

  dimension: ccs_proc_code_18 {
    type: string
    sql: ${TABLE}.CCS_PROC_CODE_18 ;;
  }

  dimension: ccs_proc_code_19 {
    type: string
    sql: ${TABLE}.CCS_PROC_CODE_19 ;;
  }

  dimension: ccs_proc_code_2 {
    type: string
    sql: ${TABLE}.CCS_PROC_CODE_2 ;;
  }

  dimension: ccs_proc_code_20 {
    type: string
    sql: ${TABLE}.CCS_PROC_CODE_20 ;;
  }

  dimension: ccs_proc_code_21 {
    type: string
    sql: ${TABLE}.CCS_PROC_CODE_21 ;;
  }

  dimension: ccs_proc_code_22 {
    type: string
    sql: ${TABLE}.CCS_PROC_CODE_22 ;;
  }

  dimension: ccs_proc_code_23 {
    type: string
    sql: ${TABLE}.CCS_PROC_CODE_23 ;;
  }

  dimension: ccs_proc_code_24 {
    type: string
    sql: ${TABLE}.CCS_PROC_CODE_24 ;;
  }

  dimension: ccs_proc_code_25 {
    type: string
    sql: ${TABLE}.CCS_PROC_CODE_25 ;;
  }

  dimension: ccs_proc_code_3 {
    type: string
    sql: ${TABLE}.CCS_PROC_CODE_3 ;;
  }

  dimension: ccs_proc_code_4 {
    type: string
    sql: ${TABLE}.CCS_PROC_CODE_4 ;;
  }

  dimension: ccs_proc_code_5 {
    type: string
    sql: ${TABLE}.CCS_PROC_CODE_5 ;;
  }

  dimension: ccs_proc_code_6 {
    type: string
    sql: ${TABLE}.CCS_PROC_CODE_6 ;;
  }

  dimension: ccs_proc_code_7 {
    type: string
    sql: ${TABLE}.CCS_PROC_CODE_7 ;;
  }

  dimension: ccs_proc_code_8 {
    type: string
    sql: ${TABLE}.CCS_PROC_CODE_8 ;;
  }

  dimension: ccs_proc_code_9 {
    type: string
    sql: ${TABLE}.CCS_PROC_CODE_9 ;;
  }

  dimension: crg_code_1 {
    type: string
    sql: ${TABLE}.CRG_CODE_1 ;;
  }

  dimension: crg_code_10 {
    type: string
    sql: ${TABLE}.CRG_CODE_10 ;;
  }

  dimension: crg_code_2 {
    type: string
    sql: ${TABLE}.CRG_CODE_2 ;;
  }

  dimension: crg_code_3 {
    type: string
    sql: ${TABLE}.CRG_CODE_3 ;;
  }

  dimension: crg_code_4 {
    type: string
    sql: ${TABLE}.CRG_CODE_4 ;;
  }

  dimension: crg_code_5 {
    type: string
    sql: ${TABLE}.CRG_CODE_5 ;;
  }

  dimension: crg_code_6 {
    type: string
    sql: ${TABLE}.CRG_CODE_6 ;;
  }

  dimension: crg_code_7 {
    type: string
    sql: ${TABLE}.CRG_CODE_7 ;;
  }

  dimension: crg_code_8 {
    type: string
    sql: ${TABLE}.CRG_CODE_8 ;;
  }

  dimension: crg_code_9 {
    type: string
    sql: ${TABLE}.CRG_CODE_9 ;;
  }

  dimension: crg_severity_1 {
    type: string
    sql: ${TABLE}.CRG_SEVERITY_1 ;;
  }

  dimension: crg_severity_10 {
    type: string
    sql: ${TABLE}.CRG_SEVERITY_10 ;;
  }

  dimension: crg_severity_2 {
    type: string
    sql: ${TABLE}.CRG_SEVERITY_2 ;;
  }

  dimension: crg_severity_3 {
    type: string
    sql: ${TABLE}.CRG_SEVERITY_3 ;;
  }

  dimension: crg_severity_4 {
    type: string
    sql: ${TABLE}.CRG_SEVERITY_4 ;;
  }

  dimension: crg_severity_5 {
    type: string
    sql: ${TABLE}.CRG_SEVERITY_5 ;;
  }

  dimension: crg_severity_6 {
    type: string
    sql: ${TABLE}.CRG_SEVERITY_6 ;;
  }

  dimension: crg_severity_7 {
    type: string
    sql: ${TABLE}.CRG_SEVERITY_7 ;;
  }

  dimension: crg_severity_8 {
    type: string
    sql: ${TABLE}.CRG_SEVERITY_8 ;;
  }

  dimension: crg_severity_9 {
    type: string
    sql: ${TABLE}.CRG_SEVERITY_9 ;;
  }

  dimension: crg_status_1 {
    type: string
    sql: ${TABLE}.CRG_STATUS_1 ;;
  }

  dimension: crg_status_10 {
    type: string
    sql: ${TABLE}.CRG_STATUS_10 ;;
  }

  dimension: crg_status_2 {
    type: string
    sql: ${TABLE}.CRG_STATUS_2 ;;
  }

  dimension: crg_status_3 {
    type: string
    sql: ${TABLE}.CRG_STATUS_3 ;;
  }

  dimension: crg_status_4 {
    type: string
    sql: ${TABLE}.CRG_STATUS_4 ;;
  }

  dimension: crg_status_5 {
    type: string
    sql: ${TABLE}.CRG_STATUS_5 ;;
  }

  dimension: crg_status_6 {
    type: string
    sql: ${TABLE}.CRG_STATUS_6 ;;
  }

  dimension: crg_status_7 {
    type: string
    sql: ${TABLE}.CRG_STATUS_7 ;;
  }

  dimension: crg_status_8 {
    type: string
    sql: ${TABLE}.CRG_STATUS_8 ;;
  }

  dimension: crg_status_9 {
    type: string
    sql: ${TABLE}.CRG_STATUS_9 ;;
  }

  dimension: eapg_grp_ver {
    type: string
    sql: ${TABLE}.EAPG_GRP_VER ;;
  }

  dimension: final_eapg_1 {
    type: string
    sql: ${TABLE}.FINAL_EAPG_1 ;;
  }

  dimension: final_eapg_10 {
    type: string
    sql: ${TABLE}.FINAL_EAPG_10 ;;
  }

  dimension: final_eapg_2 {
    type: string
    sql: ${TABLE}.FINAL_EAPG_2 ;;
  }

  dimension: final_eapg_3 {
    type: string
    sql: ${TABLE}.FINAL_EAPG_3 ;;
  }

  dimension: final_eapg_4 {
    type: string
    sql: ${TABLE}.FINAL_EAPG_4 ;;
  }

  dimension: final_eapg_5 {
    type: string
    sql: ${TABLE}.FINAL_EAPG_5 ;;
  }

  dimension: final_eapg_6 {
    type: string
    sql: ${TABLE}.FINAL_EAPG_6 ;;
  }

  dimension: final_eapg_7 {
    type: string
    sql: ${TABLE}.FINAL_EAPG_7 ;;
  }

  dimension: final_eapg_8 {
    type: string
    sql: ${TABLE}.FINAL_EAPG_8 ;;
  }

  dimension: final_eapg_9 {
    type: string
    sql: ${TABLE}.FINAL_EAPG_9 ;;
  }

  dimension: final_eapg_category_code_1 {
    type: string
    sql: ${TABLE}.FINAL_EAPG_CATEGORY_CODE_1 ;;
  }

  dimension: final_eapg_category_code_10 {
    type: string
    sql: ${TABLE}.FINAL_EAPG_CATEGORY_CODE_10 ;;
  }

  dimension: final_eapg_category_code_2 {
    type: string
    sql: ${TABLE}.FINAL_EAPG_CATEGORY_CODE_2 ;;
  }

  dimension: final_eapg_category_code_3 {
    type: string
    sql: ${TABLE}.FINAL_EAPG_CATEGORY_CODE_3 ;;
  }

  dimension: final_eapg_category_code_4 {
    type: string
    sql: ${TABLE}.FINAL_EAPG_CATEGORY_CODE_4 ;;
  }

  dimension: final_eapg_category_code_5 {
    type: string
    sql: ${TABLE}.FINAL_EAPG_CATEGORY_CODE_5 ;;
  }

  dimension: final_eapg_category_code_6 {
    type: string
    sql: ${TABLE}.FINAL_EAPG_CATEGORY_CODE_6 ;;
  }

  dimension: final_eapg_category_code_7 {
    type: string
    sql: ${TABLE}.FINAL_EAPG_CATEGORY_CODE_7 ;;
  }

  dimension: final_eapg_category_code_8 {
    type: string
    sql: ${TABLE}.FINAL_EAPG_CATEGORY_CODE_8 ;;
  }

  dimension: final_eapg_category_code_9 {
    type: string
    sql: ${TABLE}.FINAL_EAPG_CATEGORY_CODE_9 ;;
  }

  dimension: final_eapg_type_code_1 {
    type: string
    sql: ${TABLE}.FINAL_EAPG_TYPE_CODE_1 ;;
  }

  dimension: final_eapg_type_code_10 {
    type: string
    sql: ${TABLE}.FINAL_EAPG_TYPE_CODE_10 ;;
  }

  dimension: final_eapg_type_code_2 {
    type: string
    sql: ${TABLE}.FINAL_EAPG_TYPE_CODE_2 ;;
  }

  dimension: final_eapg_type_code_3 {
    type: string
    sql: ${TABLE}.FINAL_EAPG_TYPE_CODE_3 ;;
  }

  dimension: final_eapg_type_code_4 {
    type: string
    sql: ${TABLE}.FINAL_EAPG_TYPE_CODE_4 ;;
  }

  dimension: final_eapg_type_code_5 {
    type: string
    sql: ${TABLE}.FINAL_EAPG_TYPE_CODE_5 ;;
  }

  dimension: final_eapg_type_code_6 {
    type: string
    sql: ${TABLE}.FINAL_EAPG_TYPE_CODE_6 ;;
  }

  dimension: final_eapg_type_code_7 {
    type: string
    sql: ${TABLE}.FINAL_EAPG_TYPE_CODE_7 ;;
  }

  dimension: final_eapg_type_code_8 {
    type: string
    sql: ${TABLE}.FINAL_EAPG_TYPE_CODE_8 ;;
  }

  dimension: final_eapg_type_code_9 {
    type: string
    sql: ${TABLE}.FINAL_EAPG_TYPE_CODE_9 ;;
  }

  dimension: record_id {
    type: number
    sql: ${TABLE}.RECORD_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [_metadata_file_name]
  }
}
