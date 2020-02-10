view: hospitals {
  sql_table_name: sc_hhs_casestudy_202002.hospitals ;;

  dimension: address {
    type: string
    sql: ${TABLE}.ADDRESS ;;
  }

  dimension: antepartum {
    type: string
    sql: ${TABLE}.ANTEPARTUM ;;
  }

  dimension: ccn {
    type: number
    sql: ${TABLE}.CCN ;;
  }

  dimension: ceo_admini {
    type: string
    sql: ${TABLE}.CEO_ADMINI ;;
  }

  dimension: chemical_d {
    type: string
    sql: ${TABLE}.CHEMICAL_D ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.CITY ;;
  }

  dimension: comp_med_r {
    type: number
    sql: ${TABLE}.COMP_MED_R ;;
  }

  dimension: continuing {
    type: string
    sql: ${TABLE}.CONTINUING ;;
  }

  dimension: county {
    type: string
    map_layer_name: us_counties_fips
    sql: ${TABLE}.COUNTY ;;
  }

  dimension: designatio {
    type: string
    sql: ${TABLE}.DESIGNATIO ;;
  }

  dimension_group: effective {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.EFFECTIVE ;;
  }

  dimension_group: expiration {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.EXPIRATION ;;
  }

  dimension: icu_ccu_be {
    type: number
    sql: ${TABLE}.ICU_CCU_BE ;;
  }

  dimension: intermedia {
    type: number
    sql: ${TABLE}.INTERMEDIA ;;
  }

  dimension: ldrp_beds {
    type: number
    sql: ${TABLE}.LDRP_BEDS ;;
  }

  dimension: license_nu {
    type: number
    sql: ${TABLE}.LICENSE_NU ;;
  }

  dimension: mailing_ad {
    type: string
    sql: ${TABLE}.MAILING_AD ;;
  }

  dimension: mailing_ci {
    type: string
    sql: ${TABLE}.MAILING_CI ;;
  }

  dimension: mailing_st {
    type: string
    sql: ${TABLE}.MAILING_ST ;;
  }

  dimension: mailing_zi {
    type: number
    sql: ${TABLE}.MAILING_ZI ;;
  }

  dimension: med_surg_b {
    type: number
    sql: ${TABLE}.MED_SURG_B ;;
  }

  dimension: n_lat {
    hidden: yes
    type: number
    sql: ${TABLE}.N_LAT ;;
  }

  dimension: n_lcode {
    hidden: yes
    type: string
    sql: ${TABLE}.N_LCODE ;;
  }

  dimension: location {
    type: location
    sql_latitude: ${n_lat} ;;
    sql_longitude: ${n_lcode} ;;
  }

  dimension: n_lon {
    type: number
    sql: ${TABLE}.N_LON ;;
  }

  dimension: n_mcode {
    type: string
    sql: ${TABLE}.N_MCODE ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: nicu_beds {
    type: number
    sql: ${TABLE}.NICU_BEDS ;;
  }

  dimension: pediatric_ {
    type: string
    sql: ${TABLE}.PEDIATRIC_ ;;
  }

  dimension: phone {
    type: number
    sql: ${TABLE}.PHONE ;;
  }

  dimension: postpartum {
    type: number
    sql: ${TABLE}.POSTPARTUM ;;
  }

  dimension: psych_beds {
    type: number
    sql: ${TABLE}.PSYCH_BEDS ;;
  }

  dimension: skilled_nu {
    type: number
    sql: ${TABLE}.SKILLED_NU ;;
  }

  dimension: state {
    type: string
    map_layer_name: us_states
    sql: ${TABLE}.STATE ;;
  }

  dimension: total_beds {
    type: number
    sql: ${TABLE}.TOTAL_BEDS ;;
  }

  dimension: universal_ {
    type: string
    sql: ${TABLE}.UNIVERSAL_ ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.ZIP ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
