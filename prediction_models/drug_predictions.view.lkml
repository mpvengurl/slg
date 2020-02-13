view: drug_predictions {
  derived_table: {
    sql: SELECT

        drug_name, SUM(predicted_label) as total_day_supply, total_drug_cost

      FROM

        ml.PREDICT(MODEL `bqml_medicare.drug_model`, (

      SELECT

        npi, nppes_provider_last_org_name, nppes_provider_first_name, nppes_provider_state, specialty_description, drug_name, generic_name,

      IFNULL(bene_count, 0) AS bene_count,

      IFNULL(total_claim_count , 0) AS total_claim_count ,

      IFNULL(total_drug_cost , 0) AS total_drug_cost ,

      IFNULL(bene_count_ge65 , 0) AS bene_count_ge65 ,

      IFNULL(total_30_day_fill_count , 0) AS total_30_day_fill_count

      FROM

      `bqml_medicare.drug_data` ))


      GROUP BY drug_name, total_drug_cost

      ORDER BY total_day_supply DESC

      LIMIT 10
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: drug_name {
    type: string
    sql: ${TABLE}.drug_name ;;
  }

  dimension: day_supply {
    type: number
    sql: ${TABLE}.total_day_supply ;;
  }

  measure: total_day_supply {
    type: sum
    value_format_name: decimal_1
    sql: ${day_supply} ;;
  }

  dimension: drug_cost {
    type: number
    sql: ${TABLE}.total_drug_cost ;;
  }

  measure: total_drug_cost {
    type: sum
    value_format_name: usd
    sql: ${drug_cost} ;;
  }

  set: detail {
    fields: [drug_name, total_day_supply, total_drug_cost]
  }
}
