connection: "texasdhhs_looker_bq"
label: "Texas Department of Health and Human Services"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project

explore: hospitals {
  description: "Learn more about your hosptials."
}


explore: outpatient_base {
  label: "Outpatient"
  description: "Outpatient Information and Charges"
}
