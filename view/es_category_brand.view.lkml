# The name of this view in Looker is "Es Category Brand"
view: es_category_brand {
view_label: "브랜드 카테고리"

  sql_table_name: gurufit_to_looker.es_categoryBrand ;;




  #카테고리코드(PRIMARY KEY)
  dimension: cate_cd {
    primary_key: yes
    label: "카테고리코드"
    type: string
    sql: ${TABLE}.cateCd ;;
  }

  #카테고리명
  dimension: cate_nm {
    label: "카테고리명"
    type: string
    link: {
      label: "Google Search"
      url: "http://www.google.com/search?q={{ value }}"
      icon_url: "https://www.google.com/favicon.ico"
    }
    sql: ${TABLE}.cateNm ;;
  }

##############################################################################################
  measure: count {
    type: count
    drill_fields: []
  }
##############################################################################################
}
