view: hospitals {
  sql_table_name: sc_hhs_casestudy_202002.hospitals ;;

  dimension: address {
    hidden: yes
    type: string
    sql: ${TABLE}.ADDRESS ;;
  }

  dimension: address_complete {
    label: "Address"
    type: string
    sql: CONCAT(${address}, ', ', ${city}, ', ', ${state}, ' ', ${zip} ) ;;
    # The commented out link would be used to link out to street view, but not sure that's the application for this
#     link: {
#       label: "Hospital Street View"
#       url: "https://www.google.com/maps/@?api=1&map_action=pano&viewpoint={{n_lat._value}},{{n_lon._value}}&heading=-45&pitch=15&fov=80"
#     }
    link: {
      label: "Route on Google Maps"
      icon_url: "http://maps.google.com/mapfiles/ms/micons/hospitals.png"
      url: "https://www.google.com/maps/dir/?api=1&destination={{value | url_encode }}"
    }
  }

  dimension: address_street_view {
    type: string
    sql: CONCAT(${address}, ', ', ${city}, ', ', ${state}, ' ', ${zip} ) ;;
    # example from Kabalan G. from the retail demoo of surfacing the address as a screenshot of street view to be used in a single tile viz
    html: <img src="https://maps.googleapis.com/maps/api/streetview?size=200x113&location={{value | encode_uri}}&fov=120&key=AIzaSyCpNqLNfBtd1iw0UdeKwv9kORpCFRhNG4o"/> ;;
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
    label: "CCN"
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

  dimension: designation {
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

  measure: sum_nicu_beds {
    label: "Total NICO Beds"
    type: sum
    sql: ${nicu_beds} ;;
  }

  dimension: pediatric_ {
    type: string
    sql: ${TABLE}.PEDIATRIC_ ;;
  }

  dimension: phone {
    hidden: yes
    type: string
    sql: CAST(${TABLE}.PHONE AS string) ;;
  }

  dimension: phone_formatted {
    label: "Phone Number"
    type: string
    tags: ["phone"]
    sql: CONCAT( SUBSTR(${phone}, 0, 3) , '-', SUBSTR(${phone}, 4, 3) , '-', SUBSTR(${phone}, 7, 4)) ;;
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
    drill_fields: [beds_info*]
  }

  dimension: general_beds {
    type: number
    sql: ${beds} - (${ldrp_beds} + ${nicu_beds} + ${psych_beds}) ;;
  }

  measure: sum_general_beds {
    label: "Total General Beds"
    type: sum
    sql: ${general_beds} ;;
  }

  dimension: universal_ {
    type: string
    sql: ${TABLE}.UNIVERSAL_ ;;
  }

  dimension: zip {
    type: zipcode
    sql: CAST(${TABLE}.ZIP AS string) ;;
    drill_fields: [hospital_info*]
  }

  measure: count {
    type: count
    drill_fields: [hospital_info*]
  }

  set: hospital_info {
    fields: [
      name
      , address_street_view
      , address_complete
      , phone_formatted
      , sum_total_beds
    ]
  }

  set: beds_info {
    fields: [
      sum_general_beds
      , sum_ldrp_beds
      , sum_psych_beds
      , sum_nicu_beds
      ]
  }
}
