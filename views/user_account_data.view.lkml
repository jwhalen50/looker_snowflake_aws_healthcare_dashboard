view: user_account_data {
  sql_table_name: healthcare_snowflake.user_account_data ;;
  suggestions: no

  dimension: creditcardnumber {
    type: string
    sql: ${TABLE}.creditcardnumber ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: ipv4_address {
    type: string
    sql: ${TABLE}.ipv4_address ;;
  }

  dimension: ipv6_address {
    type: string
    sql: ${TABLE}.ipv6_address ;;
  }

  dimension: lastlogin {
    type: string
    sql: ${TABLE}.lastlogin ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: userid {
    type: string
    sql: ${TABLE}.userid ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
