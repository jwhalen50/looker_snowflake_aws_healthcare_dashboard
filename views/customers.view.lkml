view: customers {
  sql_table_name: healthcare_snowflake.customers ;;
  drill_fields: [customer_id]
  suggestions: no

  dimension: customer_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.customer_id ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.country_code ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.customer_name ;;
  }

  dimension: customer_unique_id {
    type: string
    sql: ${TABLE}.customer_unique_id ;;
  }

  dimension: customer_unique_name {
    type: string
    sql: ${TABLE}.customer_unique_name ;;
  }

  dimension_group: dob {
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
    sql: ${TABLE}.dob ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: ip {
    type: string
    sql: ${TABLE}.ip ;;
  }

  dimension: mac {
    type: string
    sql: ${TABLE}.mac ;;
  }

  measure: count {
    type: count
    drill_fields: [customer_id, customer_unique_name, customer_name, superstore.count]
  }
}
