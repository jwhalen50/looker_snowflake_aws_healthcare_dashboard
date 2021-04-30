view: parquet_data {
  sql_table_name: healthcare_snowflake.parquet_data ;;
  suggestions: no

  dimension: cab_type {
    type: string
    sql: ${TABLE}.cab_type ;;
  }

  dimension: dropoff {
    type: string
    sql: ${TABLE}.dropoff ;;
  }

  dimension: dropoff_borocode {
    type: number
    sql: ${TABLE}.dropoff_borocode ;;
  }

  dimension: dropoff_boroct2010 {
    type: string
    sql: ${TABLE}.dropoff_boroct2010 ;;
  }

  dimension: dropoff_boroname {
    type: string
    sql: ${TABLE}.dropoff_boroname ;;
  }

  dimension: dropoff_cdeligibil {
    type: string
    sql: ${TABLE}.dropoff_cdeligibil ;;
  }

  dimension: dropoff_ct2010 {
    type: string
    sql: ${TABLE}.dropoff_ct2010 ;;
  }

  dimension: dropoff_ctlabel {
    type: string
    sql: ${TABLE}.dropoff_ctlabel ;;
  }

  dimension_group: dropoff_datetime {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.dropoff_datetime ;;
  }

  dimension: dropoff_latitude {
    type: number
    sql: ${TABLE}.dropoff_latitude ;;
  }

  dimension: dropoff_longitude {
    type: number
    sql: ${TABLE}.dropoff_longitude ;;
  }

  dimension: dropoff_ntacode {
    type: string
    sql: ${TABLE}.dropoff_ntacode ;;
  }

  dimension: dropoff_ntaname {
    type: string
    sql: ${TABLE}.dropoff_ntaname ;;
  }

  dimension: dropoff_nyct2010_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.dropoff_nyct2010_gid ;;
  }

  dimension: dropoff_puma {
    type: string
    sql: ${TABLE}.dropoff_puma ;;
  }

  dimension: ehail_fee {
    type: number
    sql: ${TABLE}.ehail_fee ;;
  }

  dimension: extra {
    type: number
    sql: ${TABLE}.extra ;;
  }

  dimension: fare_amount {
    type: number
    sql: ${TABLE}.fare_amount ;;
  }

  dimension: improvement_surcharge {
    type: number
    sql: ${TABLE}.improvement_surcharge ;;
  }

  dimension: mta_tax {
    type: number
    sql: ${TABLE}.mta_tax ;;
  }

  dimension: passenger_count {
    type: number
    sql: ${TABLE}.passenger_count ;;
  }

  dimension: payment_type {
    type: string
    sql: ${TABLE}.payment_type ;;
  }

  dimension: pickup {
    type: string
    sql: ${TABLE}.pickup ;;
  }

  dimension: pickup_borocode {
    type: number
    sql: ${TABLE}.pickup_borocode ;;
  }

  dimension: pickup_boroct2010 {
    type: string
    sql: ${TABLE}.pickup_boroct2010 ;;
  }

  dimension: pickup_boroname {
    type: string
    sql: ${TABLE}.pickup_boroname ;;
  }

  dimension: pickup_cdeligibil {
    type: string
    sql: ${TABLE}.pickup_cdeligibil ;;
  }

  dimension: pickup_ct2010 {
    type: string
    sql: ${TABLE}.pickup_ct2010 ;;
  }

  dimension: pickup_ctlabel {
    type: string
    sql: ${TABLE}.pickup_ctlabel ;;
  }

  dimension_group: pickup_datetime {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.pickup_datetime ;;
  }

  dimension: pickup_latitude {
    type: number
    sql: ${TABLE}.pickup_latitude ;;
  }

  dimension: pickup_longitude {
    type: number
    sql: ${TABLE}.pickup_longitude ;;
  }

  dimension: pickup_ntacode {
    type: string
    sql: ${TABLE}.pickup_ntacode ;;
  }

  dimension: pickup_ntaname {
    type: string
    sql: ${TABLE}.pickup_ntaname ;;
  }

  dimension: pickup_nyct2010_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.pickup_nyct2010_gid ;;
  }

  dimension: pickup_puma {
    type: string
    sql: ${TABLE}.pickup_puma ;;
  }

  dimension: rate_code_id {
    type: number
    sql: ${TABLE}.rate_code_id ;;
  }

  dimension: store_and_fwd_flag {
    type: string
    sql: ${TABLE}.store_and_fwd_flag ;;
  }

  dimension: tip_amount {
    type: number
    sql: ${TABLE}.tip_amount ;;
  }

  dimension: tolls_amount {
    type: number
    sql: ${TABLE}.tolls_amount ;;
  }

  dimension: total_amount {
    type: number
    sql: ${TABLE}.total_amount ;;
  }

  dimension: trip_distance {
    type: number
    sql: ${TABLE}.trip_distance ;;
  }

  dimension: trip_id {
    type: number
    sql: ${TABLE}.trip_id ;;
  }

  dimension: trip_type {
    type: number
    sql: ${TABLE}.trip_type ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }

  dimension: vendor_id {
    type: string
    sql: ${TABLE}.vendor_id ;;
  }

  measure: count {
    type: count
    drill_fields: [pickup_ntaname, dropoff_boroname, dropoff_ntaname, pickup_boroname]
  }
}
