<?php
//Page_BeforeInitialize @1-AF8747CB
function Page_BeforeInitialize(& $sender)
{
    $Page_BeforeInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $redireccion; //Compatibility
//End Page_BeforeInitialize

//Print Text @8-E8471268
    echo $redirect;
//End Print Text

//Close Page_BeforeInitialize @1-23E6A029
    return $Page_BeforeInitialize;
}
//End Close Page_BeforeInitialize


?>
