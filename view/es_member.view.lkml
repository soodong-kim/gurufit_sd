# The name of this view in Looker is "Es Member"
view: es_member {
  view_label: "회원정보"

  sql_table_name: gurufit_to_looker.es_member ;;

  parameter: this_year {
    type: number
  }

  dimension: year_limit {
    type: number
    sql: {% parameter this_year %} ;;
  }
  # parameter: date_granularity {
  #   type: date
  #   allowed_value: {
  #     label: "월별 구분"
  #     value: "month"
  #   }
  #   allowed_value: {
  #     label: "년별 구분"
  #     value: "year"
  #   }
  # }

  # dimension: this_date {
  #   label: "조회일자"
  #   sql:
  #   {% if date_granularity._parameter_value == 'month' %}
  #     ${reg_dt_month}
  # {% elsif date_granularity._parameter_value == 'year' %}
  #     ${reg_dt_year}
  #   {% else %}
  #     ${reg_dt_date}
  #   {% endif %};;
  # }



  #주소
  dimension: address {
    label: "주소"
    type: string
    sql: ${TABLE}.address ;;
  }

  #상세주소
  dimension: address_sub {
    label: "상세주소"
    type: string
    sql: ${TABLE}.addressSub ;;
  }

  #우편번호
  dimension: zipcode {
    label: "우편번호"
    type: zipcode
    sql: ${TABLE}.zipcode ;;
  }

  #우편번호(5자리)
  dimension: zonecode {
    label: "우편번호(5자리)"
    type: string
    sql: ${TABLE}.zonecode ;;
    link: {
      label: "Google Search"
      url: "https://www.epost.go.kr/search.RetrieveIntegrationNewZipCdList.comm?q={{ value }}"
      icon_url: "https://www.epost.go.kr/images/comm/widget/epost_48.ico"
    }
  }

  #생년월일
  dimension_group: birth_dt {
    label: "생년월일"
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

   #나이
  dimension: age{
    label: "나이"
    type: number
    #sql: ${created_year} - ${birth_dt_year} ;;
    sql: CASE WHEN (YEAR(${birth_dt_date} )) > "1900" AND (YEAR(${birth_dt_date} )) < "2021" THEN (YEAR(SYSDATE())) - (YEAR(${birth_dt_date} )) END ;;
  }

  dimension: age_tier {
    label: "연령별"
    type: tier
    tiers: [0, 11, 21, 31, 41, 51, 61, 71, 81]
    style: integer
    sql: ${age};;
  }

  #timestamp
  dimension_group: created {
    label: "현재일자"
    type: time
    timeframes: [
      year
    ]
    sql: SYSDATE();;
  }


  #가입일
  dimension_group: entry_dt {
    label: "가입일"
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
    label: "최종로그인"
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
    label: "최종구매일"
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
    label: "등록일"
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
    primary_key: yes
    label: "회원번호"
    value_format: "0"
    type: number
    sql: ${TABLE}.memNo ;;
  }

  #비밀번호
  dimension: mem_pw {
    label: "비밀번호"
    type: string
    sql: ${TABLE}.memPw ;;
  }

  #닉네임
  dimension: nick_nm {
    label: "닉네임"
    type: string
    sql: ${TABLE}.nickNm ;;
  }

  #아이디
  dimension: mem_id {
    label: "아이디"
    type: string
    sql: ${TABLE}.memId ;;
  }

  #이름
  dimension: mem_nm {
    label: "이름"
    drill_fields: [mem_id, nick_nm, entry_dt_date, birth_dt_date, cell_phone, email, address, address_sub]
    type: string
    sql: ${TABLE}.memNm ;;
  }

  #핸드폰
  dimension: cell_phone {
    label: "핸드폰"
    type: string
    sql: ${TABLE}.cellPhone ;;
  }

  #이메일
  dimension: email {
    label: "E-mail"
    type: string
    sql: ${TABLE}.email ;;
  }

  #전화번호
  dimension: phone {
    label: "전화번호"
    type: string
    sql: ${TABLE}.phone ;;
  }

  #성별
  dimension: sex_fl {
    label: "성별"
    type: string
    sql:  CASE WHEN ${TABLE}.sexFl = 'm' then "남자" WHEN ${TABLE}.sexFl = 'w' then "여자" end ;;
  }

  #가입경로
  dimension: entry_path {
    label: "가입경로"
    type: string
    sql: ${TABLE}.entryPath ;;
  }

  #회원등급sno
  dimension: group_sno {
    label: "회원등급"
    type: number
    sql: ${TABLE}.groupSno ;;
  }

  #본인확인방법
  dimension: rncheck {
    label: "본인확인방법"
    type: string
    sql: ${TABLE}.rncheck ;;
  }

  #추천인등록여부
  dimension: recomm_fl {
    label: "추천인등록여부"
    type: string
    sql: ${TABLE}.recommFl ;;
  }

  #추천인id
  dimension: recomm_id {
    label: "추천인ID"
    type: string
    sql: ${TABLE}.recommId ;;
  }

  #로그인 횟수
  dimension: login_cnt {
    label: "로그인횟수"
    type: number
    sql: ${TABLE}.loginCnt ;;
  }

  #로그인 제한
  dimension: login_limit {
    label: "로그인제한"
    type: string
    sql: ${TABLE}.loginLimit ;;
  }

  #최종로그인 IP
  dimension: last_login_ip {
    label: "최종로그인IP"
    type: string
    sql: ${TABLE}.lastLoginIp ;;
  }

  #적립금
  dimension: mileage {
    label: "적립금"
    type: number
    sql: ${TABLE}.mileage ;;
  }

  #총구매금액
  dimension: sale_amt {
    label: "총구매금액"
    type: number
    sql: ${TABLE}.saleAmt ;;
  }

  #구매횟수
  dimension: sale_cnt {
    label: "구매횟수"
    type: number
    sql: ${TABLE}.saleCnt ;;
  }

  #예치금
  dimension: deposit {
    label: "예치금"
    type: number
    sql: ${TABLE}.deposit ;;
  }

  #휴먼회원여부
  dimension: sleep_fl {
    label: "휴먼회원여부"
    type: string
    sql: ${TABLE}.sleepFl ;;
  }

  #성인여부인증시간
  dimension_group: adult_confirm_dt {
    label: "성인여부인증시간"
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
    label: "성인여부"
    type: string
    sql: ${TABLE}.adultFl ;;
  }

  #승인여부
  dimension: app_fl {
    label: "승인여부"
    type: string
    sql: ${TABLE}.appFl ;;
  }

  #등급수정일
  dimension_group: group_mod_dt {
    label: "등급수정일"
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
    label: "등급유효일"
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
    label: "비밀번호변경안내일"
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
    label: "가입승인일"
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
    label: "생일이벤트여부"
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
    label: "비밀번호변경일"
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
    label: "가입혜택지급일"
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
    label: "수정일"
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
    label: "중복가입확인정보"
    type: string
    sql: ${TABLE}.dupeinfo ;;
  }

  #결혼여부
  dimension: marri_fl {
    label: "결혼여부"
    type: string
    sql: ${TABLE}.marriFl ;;
  }

  #개인정보유효기간
  dimension: expiration_fl {
    label: "개인정보유효기간"
    type: string
    sql: ${TABLE}.expirationFl ;;
  }

  #관심분야
  dimension: interest {
    label: "관심분야"
    type: string
    sql: ${TABLE}.interest ;;
  }

  #종목
  dimension: item {
    label: "종목"
    type: string
    sql: ${TABLE}.item ;;
  }

  #회원구분
  dimension: member_fl {
    label: "회원구분"
    type: string
    sql: ${TABLE}.memberFl ;;
  }

 #결혼일
  dimension_group: marri {
    label: "결혼일"
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

##############################################################################################
  measure: count {
    label: "count"
    type: count
    drill_fields: [mem_no, age, age_tier]
  }

  measure: max_amt {
    type: max
    label: "총금액"
    #filters: [sale_cnt: ">50"]
    value_format: "#,##0\" 원\""
    sql: ${sale_amt} ;;
  }

  measure: total_sale_amt {
    type: sum
    label: "saleamt"
    value_format: "#,##0\" 원\""
    hidden: no
    sql: ${sale_amt} ;;
  }

  measure: average_sale_amt {
    type: average
    label: "avesaleamt"
    value_format: "#,##0\" 원\""
    hidden: no
    sql: ${sale_amt} ;;
  }

  measure: total_sale_cnt {
    label: "totalsalecnt"
    type: sum
    value_format: "#,##0\" 족\""
    hidden: no
    sql: ${sale_cnt} ;;
  }

  measure: average_sale_cnt {
    label: "평균판매수"
    type: average
    hidden: no
    sql: ${sale_cnt} ;;
  }

  measure: total_login_cnt {
    label: "총로그인수"
    type: sum
    sql: ${login_cnt} ;;
  }

  measure: total_mileage {
    label: "토탈마일리지"
    type: sum
    sql: ${mileage} ;;
  }

  measure: average_mileage {
    label: "평균마일리지"
    type: average
    sql: ${mileage} ;;
  }
  ##############################################################################################
}
