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

  dimension: cate_cd {
    type: string
    sql: ${TABLE}.cateCd ;;
  }

  dimension: cate_display_fl {
    type: string
    sql: ${TABLE}.cateDisplayFl ;;
  }

  dimension: cate_display_mobile_fl {
    type: string
    sql: ${TABLE}.cateDisplayMobileFl ;;
  }

  dimension: cate_html1 {
    type: string
    sql: ${TABLE}.cateHtml1 ;;
  }

  dimension: cate_html1_mobile {
    type: string
    sql: ${TABLE}.cateHtml1Mobile ;;
  }

  dimension: cate_html2 {
    type: string
    sql: ${TABLE}.cateHtml2 ;;
  }

  dimension: cate_html2_mobile {
    type: string
    sql: ${TABLE}.cateHtml2Mobile ;;
  }

  dimension: cate_html3 {
    type: string
    sql: ${TABLE}.cateHtml3 ;;
  }

  dimension: cate_html3_mobile {
    type: string
    sql: ${TABLE}.cateHtml3Mobile ;;
  }

  dimension: cate_img {
    type: string
    sql: ${TABLE}.cateImg ;;
  }

  dimension: cate_img_mobile {
    type: string
    sql: ${TABLE}.cateImgMobile ;;
  }

  dimension: cate_img_mobile_fl {
    type: string
    sql: ${TABLE}.cateImgMobileFl ;;
  }

  dimension: cate_nm {
    type: string
    sql: ${TABLE}.cateNm ;;
  }

  dimension: cate_only_adult_display_fl {
    type: string
    sql: ${TABLE}.cateOnlyAdultDisplayFl ;;
  }

  dimension: cate_only_adult_fl {
    type: string
    sql: ${TABLE}.cateOnlyAdultFl ;;
  }

  dimension: cate_only_adult_sub_fl {
    type: string
    sql: ${TABLE}.cateOnlyAdultSubFl ;;
  }

  dimension: cate_over_img {
    type: string
    sql: ${TABLE}.cateOverImg ;;
  }

  dimension: cate_permission {
    type: number
    sql: ${TABLE}.catePermission ;;
  }

  dimension: cate_permission_display_fl {
    type: string
    sql: ${TABLE}.catePermissionDisplayFl ;;
  }

  dimension: cate_permission_group {
    type: string
    sql: ${TABLE}.catePermissionGroup ;;
  }

  dimension: cate_permission_sub_fl {
    type: string
    sql: ${TABLE}.catePermissionSubFl ;;
  }

  dimension: cate_sort {
    type: number
    sql: ${TABLE}.cateSort ;;
  }

  dimension: cate_theme_id {
    type: string
    sql: ${TABLE}.cateThemeId ;;
  }

  dimension: division_fl {
    type: string
    sql: ${TABLE}.divisionFl ;;
  }

  dimension: mall_display {
    type: string
    sql: ${TABLE}.mallDisplay ;;
  }

  dimension: mall_display_sub_fl {
    type: string
    sql: ${TABLE}.mallDisplaySubFl ;;
  }

  dimension: mobile_theme_cd {
    type: string
    sql: ${TABLE}.mobileThemeCd ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: mod_dt {
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
    sql: ${TABLE}.modDt ;;
  }

  dimension: pc_theme_cd {
    type: string
    sql: ${TABLE}.pcThemeCd ;;
  }

  dimension: recom_display_fl {
    type: string
    sql: ${TABLE}.recomDisplayFl ;;
  }

  dimension: recom_display_mobile_fl {
    type: string
    sql: ${TABLE}.recomDisplayMobileFl ;;
  }

  dimension: recom_goods_no {
    type: string
    sql: ${TABLE}.recomGoodsNo ;;
  }

  dimension: recom_mobile_theme_cd {
    type: string
    sql: ${TABLE}.recomMobileThemeCd ;;
  }

  dimension: recom_pc_theme_cd {
    type: string
    sql: ${TABLE}.recomPcThemeCd ;;
  }

  dimension: recom_sort_auto_fl {
    type: string
    sql: ${TABLE}.recomSortAutoFl ;;
  }

  dimension: recom_sort_type {
    type: string
    sql: ${TABLE}.recomSortType ;;
  }

  dimension: recom_sub_fl {
    type: string
    sql: ${TABLE}.recomSubFl ;;
  }

  dimension_group: reg_dt {
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
    sql: ${TABLE}.regDt ;;
  }

  dimension: seo_tag_fl {
    type: string
    sql: ${TABLE}.seoTagFl ;;
  }

  dimension: seo_tag_sno {
    type: number
    sql: ${TABLE}.seoTagSno ;;
  }

  dimension: sno {
    type: number
    sql: ${TABLE}.sno ;;
  }

  dimension: sort_auto_fl {
    type: string
    sql: ${TABLE}.sortAutoFl ;;
  }

  dimension: sort_type {
    type: string
    sql: ${TABLE}.sortType ;;
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

  measure: total_cate_permission {
    type: sum
    hidden: yes
    sql: ${cate_permission} ;;
  }

  measure: average_cate_permission {
    type: average
    hidden: yes
    sql: ${cate_permission} ;;
  }

  measure: total_cate_sort {
    type: sum
    hidden: yes
    sql: ${cate_sort} ;;
  }

  measure: average_cate_sort {
    type: average
    hidden: yes
    sql: ${cate_sort} ;;
  }

  measure: total_seo_tag_sno {
    type: sum
    hidden: yes
    sql: ${seo_tag_sno} ;;
  }

  measure: average_seo_tag_sno {
    type: average
    hidden: yes
    sql: ${seo_tag_sno} ;;
  }

  measure: total_sno {
    type: sum
    hidden: yes
    sql: ${sno} ;;
  }

  measure: average_sno {
    type: average
    hidden: yes
    sql: ${sno} ;;
  }
}
