view: email_event_dropped {
  sql_table_name: @{DATASET_NAME}.EMAIL_EVENT_DROPPED ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
    group_label: "Dropped Event"
  }

  dimension: bcc {
    type: string
    sql: ${TABLE}.bcc ;;
    description: "The 'bcc' field of the email message."
    group_label: "Dropped Event"
  }

  dimension: cc {
    type: string
    sql: ${TABLE}.cc ;;
    description: "The 'cc' field of the email message."
    group_label: "Dropped Event"
  }

  dimension: drop_message {
    type: string
    sql: ${TABLE}.drop_message ;;
    description: "The raw message describing why the email message was dropped. This will usually provide additional details beyond 'dropReason'."
    group_label: "Dropped Event"
  }

  dimension: drop_reason {
    type: string
    sql: ${TABLE}.drop_reason ;;
    description: "The reason why the email message was dropped."
    group_label: "Dropped Event"
  }

  dimension: from {
    type: string
    sql: ${TABLE}.``from`` ;;
    description: "The 'from' field of the email message."
    group_label: "Dropped Event"
  }

  dimension: reply_to {
    type: string
    sql: ${TABLE}.reply_to ;;
    description: "The 'reply-to' field of the email message."
    group_label: "Dropped Event"
  }

  dimension: subject {
    type: string
    sql: ${TABLE}.subject ;;
    description: "The subject line of the email message."
    group_label: "Dropped Event"
  }

  measure: count {
    label: "Dropped Count"
    description: "The message was rejected, either by HubSpot or by our delivery provider, and no attempt will be made to deliver the message."
    type: count
    drill_fields: [id]
  }
}
