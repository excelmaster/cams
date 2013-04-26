<?php
//BindEvents Method @1-C0634196
function BindEvents()
{
    global $Login1;
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

//Login @6-4D98BF09
    global $CCSLocales;
    global $Redirect;
    if ($Container->autoLogin->Value != $Container->autoLogin->CheckedValue) {
        CCSetCookie("camsLogin", "");
    }
    if ( !CCLoginUser( $Container->login->Value, $Container->password->Value)) {
        $Container->Errors->addError($CCSLocales->GetText("CCS_LoginError"));
        $Container->password->SetValue("");
        $Login1_Button_DoLogin_OnClick = 0;
        CCSetCookie("camsLogin", "");
    } else {
        global $Redirect;
        if ($Container->autoLogin->Value == $Container->autoLogin->CheckedValue) {
            $ALLogin    = $Container->login->Value;
            $ALPassword = $Container->password->Value;
            CCSetALCookie($ALLogin, $ALPassword);
        }
        $Redirect = CCGetParam("ret_link", $Redirect);
        $Login1_Button_DoLogin_OnClick = 1;
    }
//End Login

//Custom Code @13-2A29BDB7
// -------------------------
    // Write your own code here.
// -------------------------
//End Custom Code

//Close Login1_Button_DoLogin_OnClick @3-53D741FA
    return $Login1_Button_DoLogin_OnClick;
}
//End Close Login1_Button_DoLogin_OnClick


?>
