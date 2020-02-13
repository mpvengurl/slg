view: outpatient_facility_types {
  sql_table_name: sc_hhs_casestudy_202002.outpatient_facility_types ;;

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
#   dimension: _metadata__uuid {
#     type: string
#     sql: ${TABLE}._metadata__uuid ;;
#   }
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

  dimension: fac_acute_care_ind {
    type: string
    sql: ${TABLE}.FAC_ACUTE_CARE_IND ;;
  }

  dimension: fac_cardiovascular_ind {
    type: string
    sql: ${TABLE}.FAC_CARDIOVASCULAR_IND ;;
  }

  dimension: fac_chiropractic_ind {
    type: string
    sql: ${TABLE}.FAC_CHIROPRACTIC_IND ;;
  }

  dimension: fac_endoscopy_ind {
    type: string
    sql: ${TABLE}.FAC_ENDOSCOPY_IND ;;
  }

  dimension: fac_foot_ind {
    type: string
    sql: ${TABLE}.FAC_FOOT_IND ;;
  }

  dimension: fac_gastroenterology_ind {
    type: string
    sql: ${TABLE}.FAC_GASTROENTEROLOGY_IND ;;
  }

  dimension: fac_general_ind {
    type: string
    sql: ${TABLE}.FAC_GENERAL_IND ;;
  }

  dimension: fac_long_term_ac_ind {
    type: string
    sql: ${TABLE}.FAC_LONG_TERM_AC_IND ;;
  }

  dimension: fac_neurological_ind {
    type: string
    sql: ${TABLE}.FAC_NEUROLOGICAL_IND ;;
  }

  dimension: fac_ob_gyn_ind {
    type: string
    sql: ${TABLE}.FAC_OB_GYN_IND ;;
  }

  dimension: fac_opthamology_ind {
    type: string
    sql: ${TABLE}.FAC_OPTHAMOLOGY_IND ;;
  }

  dimension: fac_oral_ind {
    type: string
    sql: ${TABLE}.FAC_ORAL_IND ;;
  }

  dimension: fac_orthopedic_ind {
    type: string
    sql: ${TABLE}.FAC_ORTHOPEDIC_IND ;;
  }

  dimension: fac_other_ind {
    type: string
    sql: ${TABLE}.FAC_OTHER_IND ;;
  }

  dimension: fac_other_ltc_ind {
    type: string
    sql: ${TABLE}.FAC_OTHER_LTC_IND ;;
  }

  dimension: fac_otolaryrgology_ind {
    type: string
    sql: ${TABLE}.FAC_OTOLARYRGOLOGY_IND ;;
  }

  dimension: fac_pain_mngmt_ind {
    type: string
    sql: ${TABLE}.FAC_PAIN_MNGMT_IND ;;
  }

  dimension: fac_peds_ind {
    type: string
    sql: ${TABLE}.FAC_PEDS_IND ;;
  }

  dimension: fac_plastic_ind {
    type: string
    sql: ${TABLE}.FAC_PLASTIC_IND ;;
  }

  dimension: fac_psych_ind {
    type: string
    sql: ${TABLE}.FAC_PSYCH_IND ;;
  }

  dimension: fac_rehab_ind {
    type: string
    sql: ${TABLE}.FAC_REHAB_IND ;;
  }

  dimension: fac_snf_ind {
    type: string
    sql: ${TABLE}.FAC_SNF_IND ;;
  }

  dimension: fac_teaching_ind {
    type: string
    sql: ${TABLE}.FAC_TEACHING_IND ;;
  }

  dimension: fac_thoracic_ind {
    type: string
    sql: ${TABLE}.FAC_THORACIC_IND ;;
  }

  dimension: fac_urology_ind {
    type: string
    sql: ${TABLE}.FAC_UROLOGY_IND ;;
  }

  dimension: provider_name {
    type: string
    sql: ${TABLE}.PROVIDER_NAME ;;
  }

  dimension: thcic_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.THCIC_ID ;;
  }

  measure: count {
    type: count
  }
}
