package todoApp.common

is_member_of(user_id, group) := x {
  x := ds.check_relation({
    "object": {
      "key": group,
      "type": "group"
    },
    "relation": {
      "name": "member",
      "object_type": "group"
    },
    "subject": {
      "id": user_id
    }
  })
}
