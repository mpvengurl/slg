connection: "texasdhhs_looker_bq"
label: "Texas Department of Health and Human Services"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project

explore: hospitals {
  description: "Learn more about your hosptials."
}


explore: out_base {
  from: outpatient_base

  label: "Outpatient"
  description: "Outpatient Information and Charges"

  join: out_charge {
    from: outpatient_charges
    type: full_outer
    relationship: one_to_many
    sql_on: ${out_charge.record_id} = ${out_base.record_id};;
  }

  join: out_class {
    from: outpatient_classification
    type: full_outer
    relationship: one_to_many
    sql_on: ${out_class.record_id} = ${out_base.record_id};;
  }
}
