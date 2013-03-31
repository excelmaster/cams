<?php

include ("common.php");
include ("functions.php");

//BindEvents Method @1-DFB97425
function BindEvents()
{
    global $Login1;
    global $CCSEvents;
    $Login1->Button_DoLogin->CCSEvents["OnClick"] = "Login1_Button_DoLogin_OnClick";
}
//End BindEvents Method

//Login1_Button_DoLogin_OnClick @3-E337B8B9
function Login1_Button_DoLogin_OnClick(& $sender)
{
    $Login1_Button_DoLogin_OnClick = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Login1; //Compatibility
//End Login1_Button_DoLogin_OnClick

//Login @6-DE50560D
    global $CCSLocales;
    global $Redirect;
    if ($Container->autoLogin->Value != $Container->autoLogin->CheckedValue) {
        CCSetCookie("cloudnoteLogin", "");
    }
    if ( !CCLoginUser( $Container->login->Value, $Container->password->Value)) {
        $Container->Errors->addError($CCSLocales->GetText("CCS_LoginError"));
        $Container->password->SetValue("");
        $Login1_Button_DoLogin_OnClick = 0;
        CCSetCookie("cloudnoteLogin", "");
    } else {
        global $Redirect;
        if ($Container->autoLogin->Value == $Container->autoLogin->CheckedValue) {
            $ALLogin    = $Container->login->Value;
            $ALPassword = $Container->password->Value;
            CCSetALCookie($ALLogin, $ALPassword);
        }
        $Redirect = CCGetParam("ret_link", $Redirect);
        print $redirect;
        //$redirect = CCGetSession("GroupID" );
        $Login1_Button_DoLogin_OnClick = 1;
    }
//End Login

//Close Login1_Button_DoLogin_OnClick @3-53D741FA
    return $Login1_Button_DoLogin_OnClick;
}
//End Close Login1_Button_DoLogin_OnClick

//Page_OnCache @1-0CD0E5FC
function Page_OnCache(& $sender)
{
    $Page_OnCache = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $login; //Compatibility
//End Page_OnCache

//Custom Code @13-2A29BDB7
// -------------------------
    // page custom redirection.

// -------------------------
//End Custom Code

//Close Page_OnCache @1-5166E716
    return $Page_OnCache;
}
//End Close Page_OnCache


?>
