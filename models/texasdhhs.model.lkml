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


explore: drug_predictions {
  description: "Predicts supply and cost of the top 10 drugs used within HHS."
}
