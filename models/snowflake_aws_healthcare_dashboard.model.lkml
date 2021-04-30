connection: "aws_demo"

# include all the views
include: "/views/**/*.view"

explore: customers {}

explore: hospital_discharge {}

explore: hospital_discharge_sampled {}

explore: parquet_data {}

explore: patient {}

explore: superstore {
  join: customers {
    type: left_outer
    sql_on: ${superstore.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
  }
}

explore: transactions {}

explore: user_account_data {}

explore: whoami {}
