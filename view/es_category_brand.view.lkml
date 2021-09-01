# The name of this view in Looker is "Es Category Brand"
view: es_category_brand {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: gurufit_to_looker.es_categoryBrand ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Cate Cd" in Explore.


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


  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: count {
    type: count
    drill_fields: []
  }

  # These sum and average measures are hidden by default.
  # If you want them to show up in your explore, remove hidden: yes.
}
