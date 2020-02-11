view: outpatient_base {
  sql_table_name: sc_hhs_casestudy_202002.outpatient_base ;;
  label: "Outpatient"

#   dimension_group: _metadata__timestamp {
#     type: time
#     timeframes: [
#       raw,
#       time,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     sql: CAST(${TABLE}._metadata__timestamp AS TIMESTAMP) ;;
#   }
#
  dimension: _metadata__uuid {
    primary_key: yes
    hidden: yes
    type: string
    sql: ${TABLE}._metadata__uuid ;;
  }
#
#   dimension_group: _metadata_file_modified_ts {
#     type: time
#     timeframes: [
#       raw,
#       time,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     sql: CAST(${TABLE}._metadata_file_modified_ts AS TIMESTAMP) ;;
#   }
#
#   dimension: _metadata_file_name {
#     type: string
#     sql: ${TABLE}._metadata_file_name ;;
#   }
#
#   dimension: _metadata_line_number {
#     type: number
#     sql: ${TABLE}._metadata_line_number ;;
#   }
#
#   dimension: _metadata_total_rows {
#     type: number
#     sql: ${TABLE}._metadata_total_rows ;;
#   }

  dimension: ambulance_amount {
    type: number
    sql: ${TABLE}.AMBULANCE_AMOUNT ;;
  }

  measure: sum_ambulance_amount {
    label: "Total Ambulance Amount"
    type: sum
    value_format_name: usd_0
    sql: ${ambulance_amount} ;;
  }

  dimension: anes_amount {
    type: number
    sql: ${TABLE}.ANES_AMOUNT ;;
  }

  dimension: blood_adm_amount {
    type: number
    sql: ${TABLE}.BLOOD_ADM_AMOUNT ;;
  }

  dimension: blood_amount {
    type: number
    sql: ${TABLE}.BLOOD_AMOUNT ;;
  }

  dimension: card_amount {
    type: number
    sql: ${TABLE}.CARD_AMOUNT ;;
  }

  dimension: cert_status {
    type: number
    sql: ${TABLE}.CERT_STATUS ;;
  }

  dimension: clinic_amount {
    type: number
    sql: ${TABLE}.CLINIC_AMOUNT ;;
  }

  measure: sum_clinic_amount {
    label: "Total Clinic Amount"
    type: sum
    value_format_name: usd_0
    sql: ${clinic_amount} ;;
  }

  dimension: condition_code_1 {
    type: string
    sql: ${TABLE}.CONDITION_CODE_1 ;;
  }

  dimension: condition_code_2 {
    type: string
    sql: ${TABLE}.CONDITION_CODE_2 ;;
  }

  dimension: condition_code_3 {
    type: string
    sql: ${TABLE}.CONDITION_CODE_3 ;;
  }

  dimension: condition_code_4 {
    type: string
    sql: ${TABLE}.CONDITION_CODE_4 ;;
  }

  dimension: condition_code_5 {
    type: string
    sql: ${TABLE}.CONDITION_CODE_5 ;;
  }

  dimension: condition_code_6 {
    type: string
    sql: ${TABLE}.CONDITION_CODE_6 ;;
  }

  dimension: condition_code_7 {
    type: string
    sql: ${TABLE}.CONDITION_CODE_7 ;;
  }

  dimension: condition_code_8 {
    type: string
    sql: ${TABLE}.CONDITION_CODE_8 ;;
  }

  dimension: dme_amount {
    type: number
    sql: ${TABLE}.DME_AMOUNT ;;
  }

  dimension: e_code_1 {
    type: string
    sql: ${TABLE}.E_CODE_1 ;;
  }

  dimension: e_code_10 {
    type: string
    sql: ${TABLE}.E_CODE_10 ;;
  }

  dimension: e_code_2 {
    type: string
    sql: ${TABLE}.E_CODE_2 ;;
  }

  dimension: e_code_3 {
    type: string
    sql: ${TABLE}.E_CODE_3 ;;
  }

  dimension: e_code_4 {
    type: string
    sql: ${TABLE}.E_CODE_4 ;;
  }

  dimension: e_code_5 {
    type: string
    sql: ${TABLE}.E_CODE_5 ;;
  }

  dimension: e_code_6 {
    type: string
    sql: ${TABLE}.E_CODE_6 ;;
  }

  dimension: e_code_7 {
    type: string
    sql: ${TABLE}.E_CODE_7 ;;
  }

  dimension: e_code_8 {
    type: string
    sql: ${TABLE}.E_CODE_8 ;;
  }

  dimension: e_code_9 {
    type: string
    sql: ${TABLE}.E_CODE_9 ;;
  }

  dimension: er_amount {
    type: number
    sql: ${TABLE}.ER_AMOUNT ;;
  }

  dimension: esrd_amount {
    type: number
    sql: ${TABLE}.ESRD_AMOUNT ;;
  }

  dimension: ethnicity {
    type: string
    sql: ${TABLE}.ETHNICITY ;;
  }

  dimension: first_payment_src {
    type: string
    sql: ${TABLE}.FIRST_PAYMENT_SRC ;;
  }

  dimension: input_format {
    type: number
    sql: ${TABLE}.INPUT_FORMAT ;;
  }

  dimension: it_amount {
    type: number
    sql: ${TABLE}.IT_AMOUNT ;;
  }

  dimension: lab_amount {
    type: number
    sql: ${TABLE}.LAB_AMOUNT ;;
  }

  dimension: length_of_service {
    type: string
    sql: ${TABLE}.LENGTH_OF_SERVICE ;;
  }

  dimension: lith_amount {
    type: number
    sql: ${TABLE}.LITH_AMOUNT ;;
  }

  dimension: medsurg_amount {
    type: number
    sql: ${TABLE}.MEDSURG_AMOUNT ;;
  }

  dimension: mri_amount {
    type: number
    sql: ${TABLE}.MRI_AMOUNT ;;
  }

  dimension: op_amount {
    type: number
    sql: ${TABLE}.OP_AMOUNT ;;
  }

  dimension: or_amount {
    type: number
    sql: ${TABLE}.OR_AMOUNT ;;
  }

  dimension: organ_amount {
    type: number
    sql: ${TABLE}.ORGAN_AMOUNT ;;
  }

  dimension: ot_amount_ {
    type: number
    sql: ${TABLE}.OT_AMOUNT_ ;;
  }

  dimension: oth_diag_code_1 {
    type: string
    sql: ${TABLE}.OTH_DIAG_CODE_1 ;;
  }

  dimension: oth_diag_code_10 {
    type: string
    sql: ${TABLE}.OTH_DIAG_CODE_10 ;;
  }

  dimension: oth_diag_code_11 {
    type: string
    sql: ${TABLE}.OTH_DIAG_CODE_11 ;;
  }

  dimension: oth_diag_code_12 {
    type: string
    sql: ${TABLE}.OTH_DIAG_CODE_12 ;;
  }

  dimension: oth_diag_code_13 {
    type: string
    sql: ${TABLE}.OTH_DIAG_CODE_13 ;;
  }

  dimension: oth_diag_code_14 {
    type: string
    sql: ${TABLE}.OTH_DIAG_CODE_14 ;;
  }

  dimension: oth_diag_code_15 {
    type: string
    sql: ${TABLE}.OTH_DIAG_CODE_15 ;;
  }

  dimension: oth_diag_code_16 {
    type: string
    sql: ${TABLE}.OTH_DIAG_CODE_16 ;;
  }

  dimension: oth_diag_code_17 {
    type: string
    sql: ${TABLE}.OTH_DIAG_CODE_17 ;;
  }

  dimension: oth_diag_code_18 {
    type: string
    sql: ${TABLE}.OTH_DIAG_CODE_18 ;;
  }

  dimension: oth_diag_code_19 {
    type: string
    sql: ${TABLE}.OTH_DIAG_CODE_19 ;;
  }

  dimension: oth_diag_code_2 {
    type: string
    sql: ${TABLE}.OTH_DIAG_CODE_2 ;;
  }

  dimension: oth_diag_code_20 {
    type: string
    sql: ${TABLE}.OTH_DIAG_CODE_20 ;;
  }

  dimension: oth_diag_code_21 {
    type: string
    sql: ${TABLE}.OTH_DIAG_CODE_21 ;;
  }

  dimension: oth_diag_code_22 {
    type: string
    sql: ${TABLE}.OTH_DIAG_CODE_22 ;;
  }

  dimension: oth_diag_code_23 {
    type: string
    sql: ${TABLE}.OTH_DIAG_CODE_23 ;;
  }

  dimension: oth_diag_code_24 {
    type: string
    sql: ${TABLE}.OTH_DIAG_CODE_24 ;;
  }

  dimension: oth_diag_code_3 {
    type: string
    sql: ${TABLE}.OTH_DIAG_CODE_3 ;;
  }

  dimension: oth_diag_code_4 {
    type: string
    sql: ${TABLE}.OTH_DIAG_CODE_4 ;;
  }

  dimension: oth_diag_code_5 {
    type: string
    sql: ${TABLE}.OTH_DIAG_CODE_5 ;;
  }

  dimension: oth_diag_code_6 {
    type: string
    sql: ${TABLE}.OTH_DIAG_CODE_6 ;;
  }

  dimension: oth_diag_code_7 {
    type: string
    sql: ${TABLE}.OTH_DIAG_CODE_7 ;;
  }

  dimension: oth_diag_code_8 {
    type: string
    sql: ${TABLE}.OTH_DIAG_CODE_8 ;;
  }

  dimension: oth_diag_code_9 {
    type: string
    sql: ${TABLE}.OTH_DIAG_CODE_9 ;;
  }

  dimension: other_amount {
    type: number
    sql: ${TABLE}.OTHER_AMOUNT ;;
  }

  dimension: pat_age {
    type: number
    sql: ${TABLE}.PAT_AGE ;;
  }

  dimension: pat_country {
    type: string
    sql: ${TABLE}.PAT_COUNTRY ;;
  }

  dimension: pat_county {
    type: string
    sql: ${TABLE}.PAT_COUNTY ;;
  }

  dimension: pat_reason_for_visit {
    type: string
    sql: ${TABLE}.PAT_REASON_FOR_VISIT ;;
  }

  dimension: pat_state {
    type: string
    sql: ${TABLE}.PAT_STATE ;;
  }

  dimension: pat_zip {
    type: string
    sql: ${TABLE}.PAT_ZIP ;;
  }

  dimension: pharm_amount {
    type: number
    sql: ${TABLE}.PHARM_AMOUNT ;;
  }

  dimension: physician1_index_number {
    type: string
    sql: ${TABLE}.PHYSICIAN1_INDEX_NUMBER ;;
  }

  dimension: physician2_index_number {
    type: string
    sql: ${TABLE}.PHYSICIAN2_INDEX_NUMBER ;;
  }

  dimension: princ_diag_code {
    type: string
    sql: ${TABLE}.PRINC_DIAG_CODE ;;
  }

  dimension: pro_fee_amount {
    type: number
    sql: ${TABLE}.PRO_FEE_AMOUNT ;;
  }

  dimension: proc_code_1 {
    type: string
    sql: ${TABLE}.PROC_CODE_1 ;;
  }

  dimension: proc_code_10 {
    type: string
    sql: ${TABLE}.PROC_CODE_10 ;;
  }

  dimension: proc_code_11 {
    type: string
    sql: ${TABLE}.PROC_CODE_11 ;;
  }

  dimension: proc_code_12 {
    type: string
    sql: ${TABLE}.PROC_CODE_12 ;;
  }

  dimension: proc_code_13 {
    type: string
    sql: ${TABLE}.PROC_CODE_13 ;;
  }

  dimension: proc_code_14 {
    type: string
    sql: ${TABLE}.PROC_CODE_14 ;;
  }

  dimension: proc_code_15 {
    type: string
    sql: ${TABLE}.PROC_CODE_15 ;;
  }

  dimension: proc_code_16 {
    type: string
    sql: ${TABLE}.PROC_CODE_16 ;;
  }

  dimension: proc_code_17 {
    type: string
    sql: ${TABLE}.PROC_CODE_17 ;;
  }

  dimension: proc_code_18 {
    type: string
    sql: ${TABLE}.PROC_CODE_18 ;;
  }

  dimension: proc_code_19 {
    type: string
    sql: ${TABLE}.PROC_CODE_19 ;;
  }

  dimension: proc_code_2 {
    type: string
    sql: ${TABLE}.PROC_CODE_2 ;;
  }

  dimension: proc_code_20 {
    type: string
    sql: ${TABLE}.PROC_CODE_20 ;;
  }

  dimension: proc_code_21 {
    type: string
    sql: ${TABLE}.PROC_CODE_21 ;;
  }

  dimension: proc_code_22 {
    type: string
    sql: ${TABLE}.PROC_CODE_22 ;;
  }

  dimension: proc_code_23 {
    type: string
    sql: ${TABLE}.PROC_CODE_23 ;;
  }

  dimension: proc_code_24 {
    type: string
    sql: ${TABLE}.PROC_CODE_24 ;;
  }

  dimension: proc_code_25 {
    type: string
    sql: ${TABLE}.PROC_CODE_25 ;;
  }

  dimension: proc_code_3 {
    type: string
    sql: ${TABLE}.PROC_CODE_3 ;;
  }

  dimension: proc_code_4 {
    type: string
    sql: ${TABLE}.PROC_CODE_4 ;;
  }

  dimension: proc_code_5 {
    type: string
    sql: ${TABLE}.PROC_CODE_5 ;;
  }

  dimension: proc_code_6 {
    type: string
    sql: ${TABLE}.PROC_CODE_6 ;;
  }

  dimension: proc_code_7 {
    type: string
    sql: ${TABLE}.PROC_CODE_7 ;;
  }

  dimension: proc_code_8 {
    type: string
    sql: ${TABLE}.PROC_CODE_8 ;;
  }

  dimension: proc_code_9 {
    type: string
    sql: ${TABLE}.PROC_CODE_9 ;;
  }

  dimension: provider_name {
    type: string
    sql: ${TABLE}.PROVIDER_NAME ;;
  }

  dimension: pt_amount {
    type: number
    sql: ${TABLE}.PT_AMOUNT ;;
  }

  dimension: public_health_region {
    type: string
    sql: ${TABLE}.PUBLIC_HEALTH_REGION ;;
  }

  dimension: race {
    type: number
    sql: ${TABLE}.RACE ;;
  }

  dimension: rad_amount {
    type: number
    sql: ${TABLE}.RAD_AMOUNT ;;
  }

  dimension: record_id {
    type: number
    sql: ${TABLE}.RECORD_ID ;;
  }

  dimension: related_cause_code_1 {
    type: string
    sql: ${TABLE}.RELATED_CAUSE_CODE_1 ;;
  }

  dimension: related_cause_code_2 {
    type: string
    sql: ${TABLE}.RELATED_CAUSE_CODE_2 ;;
  }

  dimension: related_cause_code_3 {
    type: string
    sql: ${TABLE}.RELATED_CAUSE_CODE_3 ;;
  }

  dimension: secondary_payment_src {
    type: string
    sql: ${TABLE}.SECONDARY_PAYMENT_SRC ;;
  }

  dimension: service_quarter {
    type: string
    sql: ${TABLE}.SERVICE_QUARTER ;;
  }

  dimension: sex_code {
    type: string
    sql: ${TABLE}.SEX_CODE ;;
  }

  dimension: spec_unit {
    type: string
    sql: ${TABLE}.SPEC_UNIT ;;
  }

  dimension: speech_amount {
    type: number
    sql: ${TABLE}.SPEECH_AMOUNT ;;
  }

  dimension: thcic_id {
    type: number
    sql: ${TABLE}.THCIC_ID ;;
  }

  dimension: total_charges {
    type: number
    sql: ${TABLE}.TOTAL_CHARGES ;;
  }

  dimension: total_charges_ancil {
    type: number
    sql: ${TABLE}.TOTAL_CHARGES_ANCIL ;;
  }

  dimension: total_non_cov_charges {
    type: number
    sql: ${TABLE}.TOTAL_NON_COV_CHARGES ;;
  }

  dimension: total_non_cov_charges_ancil {
    type: number
    sql: ${TABLE}.TOTAL_NON_COV_CHARGES_ANCIL ;;
  }

  dimension: type_of_bill {
    type: number
    sql: ${TABLE}.TYPE_OF_BILL ;;
  }

  dimension: used_dme_amount {
    type: number
    sql: ${TABLE}.USED_DME_AMOUNT ;;
  }

  measure: count {
    type: count
#     drill_fields: [_metadata_file_name, provider_name]
  }
}
