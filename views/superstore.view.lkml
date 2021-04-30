view: superstore {
  sql_table_name: healthcare_snowflake.superstore ;;
  suggestions: no

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: customer_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.customer_name ;;
  }

  dimension: discount {
    type: string
    sql: ${TABLE}.discount ;;
  }

  dimension: order_date {
    type: string
    sql: ${TABLE}."order date" ;;
  }

  dimension: order_id {
    type: string
    sql: ${TABLE}."order id" ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}."postal code" ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}."product id" ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}."product name" ;;
  }

  dimension: profit {
    type: string
    sql: ${TABLE}.profit ;;
  }

  dimension: quantity {
    type: string
    sql: ${TABLE}.quantity ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: row_id {
    type: string
    sql: ${TABLE}."row id" ;;
  }

  dimension: sales {
    type: string
    sql: ${TABLE}.sales ;;
  }

  dimension: segment {
    type: string
    sql: ${TABLE}.segment ;;
  }

  dimension: ship_date {
    type: string
    sql: ${TABLE}."ship date" ;;
  }

  dimension: ship_mode {
    type: string
    sql: ${TABLE}."ship mode" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: subcategory {
    type: string
    sql: ${TABLE}."sub-category" ;;
  }

  measure: count {
    type: count
    drill_fields: [product_name, customer_name, customers.customer_unique_name, customers.customer_id, customers.customer_name]
  }
}
