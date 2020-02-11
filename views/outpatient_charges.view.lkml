view: outpatient_charges {
  sql_table_name: sc_hhs_casestudy_202002.outpatient_charges ;;

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

  dimension: chrgs_line_item {
    type: number
    sql: ${TABLE}.CHRGS_LINE_ITEM ;;
  }

  dimension: chrgs_non_cov {
    type: number
    sql: ${TABLE}.CHRGS_NON_COV ;;
  }

  dimension: hcpcs_procedure_code {
    type: string
    sql: ${TABLE}.HCPCS_PROCEDURE_CODE ;;
  }

  dimension: hcpcs_qualifier {
    type: string
    sql: ${TABLE}.HCPCS_QUALIFIER ;;
  }

  dimension: modifier_1 {
    type: string
    sql: ${TABLE}.MODIFIER_1 ;;
  }

  dimension: modifier_2 {
    type: string
    sql: ${TABLE}.MODIFIER_2 ;;
  }

  dimension: modifier_3 {
    type: string
    sql: ${TABLE}.MODIFIER_3 ;;
  }

  dimension: modifier_4 {
    type: string
    sql: ${TABLE}.MODIFIER_4 ;;
  }

  dimension: record_id {
    type: number
    sql: ${TABLE}.RECORD_ID ;;
  }

  dimension: revenue_code {
    type: string
    sql: ${TABLE}.REVENUE_CODE ;;
  }

  dimension: unit_measurement_code {
    type: string
    sql: ${TABLE}.UNIT_MEASUREMENT_CODE ;;
  }

  dimension: unit_rate {
    type: number
    sql: ${TABLE}.UNIT_RATE ;;
  }

  dimension: units_of_service {
    type: number
    sql: ${TABLE}.UNITS_OF_SERVICE ;;
  }

  measure: count {
    type: count
    drill_fields: [_metadata_file_name]
  }
}
