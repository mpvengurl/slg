connection: "texasdhhs_looker_bq"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project

explore: hospitals {}
