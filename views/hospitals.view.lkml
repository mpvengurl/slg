view: hospitals {
  sql_table_name: sc_hhs_casestudy_202002.hospitals ;;

  dimension: address {
    type: string
    sql: ${TABLE}.ADDRESS ;;
    link: {
      label: "Hospital Street View"
      url: "https://www.google.com/maps/@?api=1&map_action=pano&viewpoint={{n_lat._value}},{{n_lon._value}}&heading=-45&pitch=15&fov=80"
    }
  }

  dimension: linked_address {
    hidden: yes
    type: string
    sql: CONCAT(REPLACE(${address},' ', '+'), '+', REPLACE(${city}, ' ', '+')) ;;
  }

  dimension: linked_name {
    hidden: yes
    sql: REPLACE(${name}, ' ', '+') ;;
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

  measure: sum_ldrp_beds {
    label: "Total LDRP Beds"
    description: "Total number of Labor, Delivery, Recovery, Postpartum beds at the hospital"
    type: sum
    sql: ${ldrp_beds} ;;
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

  dimension: n_lon {
    type: number
    sql: ${TABLE}.N_LON ;;
  }

  dimension: location {
    type: location
    sql_latitude: ${n_lat} ;;
    sql_longitude: ${n_lon} ;;
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
    tags: ["phone"]
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

  measure: sum_psych_beds {
    label: "Total Psychiatric Beds"
    type: sum
    sql: ${psych_beds} ;;
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

  dimension: beds {
    type: number
    sql: ${TABLE}.TOTAL_BEDS ;;
  }

  measure: sum_total_beds {
    label: "Total Beds"
    type: sum
    sql: ${beds} ;;
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
    drill_fields: [hospital_info*]
  }

  set: hospital_info {
    fields: [
      name
      , phone
      , address
      , sum_total_beds
    ]
  }
}
