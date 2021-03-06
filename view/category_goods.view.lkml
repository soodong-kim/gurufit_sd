view: category_goods {

  derived_table: {
     sql: SELECT es_categoryBrand.cateCd
         , es_categoryBrand.cateNm
         , es_goods.goodsNo
         , es_goods.goodsNm
         , es_goods.goodsSellFl
         , es_goods.hitCnt
         , es_goods.cartCnt
         , es_goods.wishCnt
         , es_goods.reviewCnt
         , es_goods.brandCd
         , es_goods.brandcateCd
         , es_goods.lesmoreDcRate
         , es_goods.purchaseNo
         FROM es_categoryBrand
    LEFT JOIN es_goods
           ON es_categoryBrand.cateCd = es_goods.brandCd
        LIMIT 3000
       ;;
      persist_for: "1 hours"
      indexes: ["cateCd", "goodsNo"]
   }

  dimension: cateCd {
    label: "카테고리코드"
    type: string
    sql: ${TABLE}.cateCd ;;
  }

  dimension: cateNm {
    label: "카테고리명"
    type: string
    sql: ${TABLE}.cateNm ;;
  }

  dimension: goodsNo {
    label: "상품번호"
    type: number
    sql: ${TABLE}.goodsNo ;;
  }

 ##############################################################################################
 # 판매대금-이익금 계산을 위해 아래의 필드 추가
 ##############################################################################################

  dimension: brandcate_cd {
    hidden: yes
    type: string
    sql: ${TABLE}.brandcateCd ;;
  }

  dimension: lesmore_dc_rate {
    hidden: yes
    type: number
    sql: ${TABLE}.lesmoreDcRate ;;
  }

  dimension: purchase_no {
    hidden: yes
    type: number
    sql: ${TABLE}.purchaseNo ;;
  }



  # # You can specify the table name if it's different from the view name:
  # sql_table_name: my_schema_name.tester ;;
  #
  # # Define your dimensions and measures here, like this:
  # dimension: user_id {
  #   description: "Unique ID for each user that has ordered"
  #   type: number
  #   sql: ${TABLE}.user_id ;;
  # }
  #
  # dimension: lifetime_orders {
  #   description: "The total number of orders for each user"
  #   type: number
  #   sql: ${TABLE}.lifetime_orders ;;
  # }
  #
  # dimension_group: most_recent_purchase {
  #   description: "The date when each user last ordered"
  #   type: time
  #   timeframes: [date, week, month, year]
  #   sql: ${TABLE}.most_recent_purchase_at ;;
  # }
  #
  # measure: total_lifetime_orders {
  #   description: "Use this for counting lifetime orders across many users"
  #   type: sum
  #   sql: ${lifetime_orders} ;;
  # }
}

# view: category_goods {
#   # Or, you could make this view a derived table, like this:
#   derived_table: {
#     sql: SELECT
#         user_id as user_id
#         , COUNT(*) as lifetime_orders
#         , MAX(orders.created_at) as most_recent_purchase_at
#       FROM orders
#       GROUP BY user_id
#       ;;
#   }
#
#   # Define your dimensions and measures here, like this:
#   dimension: user_id {
#     description: "Unique ID for each user that has ordered"
#     type: number
#     sql: ${TABLE}.user_id ;;
#   }
#
#   dimension: lifetime_orders {
#     description: "The total number of orders for each user"
#     type: number
#     sql: ${TABLE}.lifetime_orders ;;
#   }
#
#   dimension_group: most_recent_purchase {
#     description: "The date when each user last ordered"
#     type: time
#     timeframes: [date, week, month, year]
#     sql: ${TABLE}.most_recent_purchase_at ;;
#   }
#
#   measure: total_lifetime_orders {
#     description: "Use this for counting lifetime orders across many users"
#     type: sum
#     sql: ${lifetime_orders} ;;
#   }
# }
