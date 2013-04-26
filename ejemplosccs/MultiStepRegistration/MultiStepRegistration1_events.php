<?php
//BindEvents Method @1-37F133AB
function BindEvents()
{
    global $users;
    $users->CCSEvents["AfterInsert"] = "users_AfterInsert";
}
//End BindEvents Method

//users_AfterInsert @3-59406F3C
function users_AfterInsert()
{
    $users_AfterInsert = true;
//End users_AfterInsert

//Custom Code @47-2A29BDB7
global $DBInternetDB;
global $Redirect;

  //Retrieve the last inserted key if a new user is registered
  //This method of retrieving the last inserted key is safe because the value of the user_login field has to be unique.
  if(!CCGetFromGet("user_id",0)) {
    $LastID = CCDLookup("max(user_id)","users","user_login=".$DBInternetDB->ToSQL(CCGetFromPost("user_login",""),ccsText),$DBInternetDB);
    if (strpos($Redirect,"?") == false ) {
    	$Redirect = $Redirect."?user_id=".$LastID;
    } else if (substr($Redirect,-1) == "?" ) {
    	$Redirect = $Redirect."user_id=".$LastID;
    } else {
    	$Redirect = $Redirect."&user_id=".$LastID;
    }
  }

//End Custom Code

//Close users_AfterInsert @3-11208659
    return $users_AfterInsert;
}
//End Close users_AfterInsert


?>
