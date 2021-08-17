# The name of this view in Looker is "Es Goods"
view: es_goods {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: gurufit_to_looker.es_goods ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Add Goods" in Explore.


  #상품번호(PRIMARY KEY)
  dimension: goods_no {
    type: number
    sql: ${TABLE}.goodsNo ;;
  }

  #상품이름
  dimension: goods_nm {
    type: string
    sql: ${TABLE}.goodsNm ;;
  }

  #상품판매 여부(y/n)
  dimension: goods_sell_fl {
    type: string
    sql: ${TABLE}.goodsSellFl ;;
  }

  #조회수
  dimension: hit_cnt {
    type: number
    sql: ${TABLE}.hitCnt ;;
  }

  #장바구니 수
  dimension: cart_cnt {
    type: number
    sql: ${TABLE}.cartCnt ;;
  }

  #관심상품 수
  dimension: wish_cnt {
    type: number
    sql: ${TABLE}.wishCnt ;;
  }

  #리뷰수
  dimension: review_cnt {
    type: number
    sql: ${TABLE}.reviewCnt ;;
  }

  #브랜드코드
  dimension: brand_cd {
    type: string
    sql: ${TABLE}.brandCd ;;
  }


  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: count {
    type: count
    drill_fields: []
  }

  # These sum and average measures are hidden by default.
  # If you want them to show up in your explore, remove hidden: yes.

  measure: total_cart_cnt {
    type: sum
    hidden: yes
    sql: ${cart_cnt} ;;
  }

  measure: average_cart_cnt {
    type: average
    hidden: yes
    sql: ${cart_cnt} ;;
  }

  measure: total_goods_no {
    type: sum
    hidden: yes
    sql: ${goods_no} ;;
  }

  measure: average_goods_no {
    type: average
    hidden: yes
    sql: ${goods_no} ;;
  }

  measure: total_hit_cnt {
    type: sum
    hidden: yes
    sql: ${hit_cnt} ;;
  }

  measure: average_hit_cnt {
    type: average
    hidden: yes
    sql: ${hit_cnt} ;;
  }

  measure: total_review_cnt {
    type: sum
    hidden: yes
    sql: ${review_cnt} ;;
  }

  measure: average_review_cnt {
    type: average
    hidden: yes
    sql: ${review_cnt} ;;
  }

  measure: total_wish_cnt {
    type: sum
    hidden: yes
    sql: ${wish_cnt} ;;
  }

  measure: average_wish_cnt {
    type: average
    hidden: yes
    sql: ${wish_cnt} ;;
  }
}
