<?php
//BindEvents Method @1-C3F8F722
function BindEvents()
{
    global $employees;
    $employees->ds->CCSEvents["BeforeBuildSelect"] = "employees_ds_BeforeBuildSelect";
}
//End BindEvents Method

//employees_ds_BeforeBuildSelect @3-7E530EB0
function employees_ds_BeforeBuildSelect(& $sender)
{
    $employees_ds_BeforeBuildSelect = true;
    $Component = & $sender;
    $Container = CCGetParentContainer($sender);
    global $employees; //Compatibility
//End employees_ds_BeforeBuildSelect

//Custom Code @53-2A29BDB7
// -------------------------
    $arr = $Component->DataSource->wp->Parameters["1"]->Text;
    if (is_array($arr) && count($arr)) {
	  $result = array();
	  foreach ($arr as $val)
	    if (CCValidateNumber($val, ""))
		  $result[] = $val;
	  $Component->DataSource->wp->Parameters["1"]->SetText(implode(",", $result));
	} else {
	  $Component->DataSource->wp->Parameters["1"]->SetText("0");
	}
// -------------------------
//End Custom Code

//Close employees_ds_BeforeBuildSelect @3-F731E0AD
    return $employees_ds_BeforeBuildSelect;
}
//End Close employees_ds_BeforeBuildSelect


?>
