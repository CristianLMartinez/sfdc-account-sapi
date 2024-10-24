%dw 2.0
output application/json
---
{
  "id": if (vars.responseData.items[0].id != null and vars.responseData.items[0].id != "") vars.responseData.items[0].id else vars.accountId,
  "success": if (vars.responseData.items[0].successful) true else false,
  "message": if(vars.responseData.items[0].successful) "Account deleted successfully" else "Account couldn't delete successfully"
}