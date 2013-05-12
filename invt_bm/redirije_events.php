<?php
//BindEvents Method @1-397EAC53
function BindEvents()
{
    global $CCSEvents;
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
}
//End BindEvents Method

//Page_AfterInitialize @1-B29A61E5
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $redirije; //Compatibility
//End Page_AfterInitialize

//Custom Code @8-2A29BDB7
// -------------------------
    // Write your own code here.
    
    global $Redirect;
    $db = new clsDBConnection1();
    $sSql= "select group_init.pageRedirect from group_init where group_init.grupo = 1";
    $redirect=$db->query($sSql);
    

// -------------------------
//End Custom Code

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize


?>
