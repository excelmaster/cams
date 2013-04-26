<?php
//BindEvents Method @1-46238BC0
function BindEvents()
{
    global $Sidebar1;
    $Sidebar1->CCSEvents["BeforeShow"] = "Sidebar1_BeforeShow";
}
//End BindEvents Method

//Sidebar1_BeforeShow @5-44AA346A
function Sidebar1_BeforeShow(& $sender)
{
    $Sidebar1_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Sidebar1; //Compatibility
//End Sidebar1_BeforeShow

//Custom Code @33-2A29BDB7
// -------------------------
    // Write your own code here.
// -------------------------
//End Custom Code

//Close Sidebar1_BeforeShow @5-D6097D16
    return $Sidebar1_BeforeShow;
}
//End Close Sidebar1_BeforeShow


?>
