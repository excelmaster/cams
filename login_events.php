<?php
//BindEvents Method @1-DA3936AB
function BindEvents()
{
    global $Login1;
    global $CCSEvents;
    $Login1->Button_DoLogin->CCSEvents["OnClick"] = "Login1_Button_DoLogin_OnClick";
    $CCSEvents["BeforeShow"] = "Page_BeforeShow";
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
        $Login1_Button_DoLogin_OnClick = 1;
    }
//End Login

//Custom Code @14-2A29BDB7
// -------------------------
    $db = new clsDBlocal_cams();
			$grupo = CCGetGroupID();
			$SQL = "select group_init.pageRedirect from group_init where group_init.grupo = " . $grupo; 
			$db->query($SQL);
			$Result = $db->next_record();
			$redirect = $Result;
			echo $result;
// -------------------------
//End Custom Code

//Close Login1_Button_DoLogin_OnClick @3-53D741FA
    return $Login1_Button_DoLogin_OnClick;
}
//End Close Login1_Button_DoLogin_OnClick

//Page_BeforeShow @1-AB59B658
function Page_BeforeShow(& $sender)
{
    $Page_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $login; //Compatibility
//End Page_BeforeShow

//Custom Code @13-2A29BDB7
// -------------------------
    // Write your own code here.
// -------------------------
//End Custom Code

//Close Page_BeforeShow @1-4BC230CD
    return $Page_BeforeShow;
}
//End Close Page_BeforeShow


?>
