# The name of this view in Looker is "Es Member"
view: es_member {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: gurufit_to_looker.es_member ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Address" in Explore.

  #주소
  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  #상세주소
  dimension: address_sub {
    type: string
    sql: ${TABLE}.addressSub ;;
  }

  #우편번호
  dimension: zipcode {
    type: zipcode
    sql: ${TABLE}.zipcode ;;
  }

  #우편번호(5자리)
  dimension: zonecode {
    type: string
    sql: ${TABLE}.zonecode ;;
  }

  #생년월일
  dimension_group: birth_dt {
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
    sql: ${TABLE}.birthDt ;;
  }

  #가입일
  dimension_group: entry_dt {
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
    sql: ${TABLE}.entryDt ;;
  }

  #최종로그인
  dimension_group: last_login_dt {
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
    sql: ${TABLE}.lastLoginDt ;;
  }

  #최종구매일
  dimension_group: last_sale_dt {
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
    sql: ${TABLE}.lastSaleDt ;;
  }

  #등록일
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

  #회원번호(primarykey)
  dimension: mem_no {
    type: number
    sql: ${TABLE}.memNo ;;
  }

  #비밀번호
  dimension: mem_pw {
    type: string
    sql: ${TABLE}.memPw ;;
  }

  #닉네임
  dimension: nick_nm {
    type: string
    sql: ${TABLE}.nickNm ;;
  }

  #아이디
  dimension: mem_id {
    type: string
    sql: ${TABLE}.memId ;;
  }

  #이름
  dimension: mem_nm {
    type: string
    sql: ${TABLE}.memNm ;;
  }

  #핸드폰
  dimension: cell_phone {
    type: string
    sql: ${TABLE}.cellPhone ;;
  }

  #이메일
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  #전화번호
  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  #성별
  dimension: sex_fl {
    type: string
    sql: ${TABLE}.sexFl ;;
  }

  #가입경로
  dimension: entry_path {
    type: string
    sql: ${TABLE}.entryPath ;;
  }

  #회원등급sno
  dimension: group_sno {
    type: number
    sql: ${TABLE}.groupSno ;;
  }

  #본인확인방법
  dimension: rncheck {
    type: string
    sql: ${TABLE}.rncheck ;;
  }

  #추천인등록여부
  dimension: recomm_fl {
    type: string
    sql: ${TABLE}.recommFl ;;
  }

  #추천인id
  dimension: recomm_id {
    type: string
    sql: ${TABLE}.recommId ;;
  }

  #로그인 횟수
  dimension: login_cnt {
    type: number
    sql: ${TABLE}.loginCnt ;;
  }

  #로그인 제한
  dimension: login_limit {
    type: string
    sql: ${TABLE}.loginLimit ;;
  }

  #최종로그인 IP
  dimension: last_login_ip {
    type: string
    sql: ${TABLE}.lastLoginIp ;;
  }

  #적립금
  dimension: mileage {
    type: number
    sql: ${TABLE}.mileage ;;
  }

  #총구매금액
  dimension: sale_amt {
    type: number
    sql: ${TABLE}.saleAmt ;;
  }

  #구매횟수
  dimension: sale_cnt {
    type: number
    sql: ${TABLE}.saleCnt ;;
  }

  #예치금
  dimension: deposit {
    type: number
    sql: ${TABLE}.deposit ;;
  }

  #휴먼회원여부
  dimension: sleep_fl {
    type: string
    sql: ${TABLE}.sleepFl ;;
  }

  #성인여부인증시간
  dimension_group: adult_confirm_dt {
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
    sql: ${TABLE}.adultConfirmDt ;;
  }

  #성인여부
  dimension: adult_fl {
    type: string
    sql: ${TABLE}.adultFl ;;
  }

  #승인여부
  dimension: app_fl {
    type: string
    sql: ${TABLE}.appFl ;;
  }

  #등급수정일
  dimension_group: group_mod_dt {
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
    sql: ${TABLE}.groupModDt ;;
  }

  #등급유효일
  dimension_group: group_valid_dt {
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
    sql: ${TABLE}.groupValidDt ;;
  }

  #비밀번호변경안내일
  dimension_group: guide_password_dt {
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
    sql: ${TABLE}.guidePasswordDt ;;
  }

  #가입승인일
  dimension_group: approval_dt {
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
    sql: ${TABLE}.approvalDt ;;
  }

  #생일이벤트여부-sms, 쿠폰 등 처리일자
  dimension_group: birth_event_fl {
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
    sql: ${TABLE}.birthEventFl ;;
  }

  #비밀번호 변경일
  dimension_group: change_password_dt {
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
    sql: ${TABLE}.changePasswordDt ;;
  }

  #가입혜택지급일
  dimension_group: entry_benefit_offer_dt {
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
    sql: ${TABLE}.entryBenefitOfferDt ;;
  }

  #수정일
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

  #중복가입확인정보
  dimension: dupeinfo {
    type: string
    sql: ${TABLE}.dupeinfo ;;
  }

  #결혼여부
  dimension: marri_fl {
    type: string
    sql: ${TABLE}.marriFl ;;
  }

  #개인정보유효기간
  dimension: expiration_fl {
    type: string
    sql: ${TABLE}.expirationFl ;;
  }

  #관심분야
  dimension: interest {
    type: string
    sql: ${TABLE}.interest ;;
  }

  #종목
  dimension: item {
    type: string
    sql: ${TABLE}.item ;;
  }

  #회원구분
  dimension: member_fl {
    type: string
    sql: ${TABLE}.memberFl ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

 #결혼일
  dimension_group: marri {
    type: time
    hidden: yes
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
    sql: ${TABLE}.marriDate ;;
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

  measure: total_deposit {
    type: sum
    hidden: yes
    sql: ${deposit} ;;
  }

  measure: average_deposit {
    type: average
    hidden: yes
    sql: ${deposit} ;;
  }

  measure: total_group_sno {
    type: sum
    hidden: yes
    sql: ${group_sno} ;;
  }

  measure: average_group_sno {
    type: average
    hidden: yes
    sql: ${group_sno} ;;
  }

  measure: total_login_cnt {
    type: sum
    hidden: yes
    sql: ${login_cnt} ;;
  }

  measure: average_login_cnt {
    type: average
    hidden: yes
    sql: ${login_cnt} ;;
  }

  measure: total_mem_no {
    type: sum
    hidden: yes
    sql: ${mem_no} ;;
  }

  measure: average_mem_no {
    type: average
    hidden: yes
    sql: ${mem_no} ;;
  }

  measure: total_mileage {
    type: sum
    hidden: yes
    sql: ${mileage} ;;
  }

  measure: average_mileage {
    type: average
    hidden: yes
    sql: ${mileage} ;;
  }

  measure: total_sale_amt {
    type: sum
    hidden: no
    sql: ${sale_amt} ;;
  }

  measure: average_sale_amt {
    type: average
    hidden: no
    sql: ${sale_amt} ;;
  }

  measure: total_sale_cnt {
    type: sum
    hidden: no
    sql: ${sale_cnt} ;;
  }

  measure: average_sale_cnt {
    type: average
    hidden: no
    sql: ${sale_cnt} ;;
  }
}
