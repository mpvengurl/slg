connection: "texasdhhs_looker_bq"
label: "Texas Department of Health and Human Services"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
include: "/prediction_models/drug_predictions.view.lkml" # include BQML view
include: "/dashboards/Hospital_Pulse.dashboard.lookml" # include dashboard


datagroup: infinite {
  sql_trigger: SELECT 1 ;;
}


explore: hospitals {
  persist_with: infinite

  description: "Learn more about your hosptials."
}


explore: outpatient_base {
  persist_with: infinite

  label: "Outpatient"
  description: "Outpatient information and charges."

  join: outpatient_charges {
    type: inner
    relationship: many_to_many
    sql_on: ${outpatient_charges.record_id} = ${outpatient_base.record_id};;
  }

  join: outpatient_classification {
    type: inner
    relationship: many_to_one
    sql_on: ${outpatient_classification.record_id} = ${outpatient_base.record_id};;
  }

  join: outpatient_facility_types {
    type: inner
    relationship: many_to_one
    sql_on: ${outpatient_facility_types.provider_name} = ${outpatient_base.provider_name} ;;
  }
}

explore: drug_predictions {
  description: "Predicts supply and cost of the top 10 drugs used within HHS."
}
