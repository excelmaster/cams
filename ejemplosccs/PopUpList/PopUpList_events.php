<?php
//BindEvents Method @1-65C472FA
function BindEvents()
{
    global $departments;
    $departments->CCSEvents["BeforeShow"] = "departments_BeforeShow";
    $departments->CCSEvents["OnValidate"] = "departments_OnValidate";
}
//End BindEvents Method

//departments_BeforeShow @11-B7A32708
function departments_BeforeShow()
{
    $departments_BeforeShow = true;
//End departments_BeforeShow

//Custom Code @17-2A29BDB7
global $DBIntranetDB;
global $departments;
		
  if(intval($departments->department_manager_id->Value) >0) {
   	$departments->department_manager_id->SetValue(CCDLookUp("emp_name", "employees", "emp_id=".$DBIntranetDB->ToSQL($departments->department_manager_id->Value,ccsInteger), $DBIntranetDB));
  }  
//End Custom Code

//Close departments_BeforeShow @11-E1783FFC
    return $departments_BeforeShow;
}
//End Close departments_BeforeShow

//departments_OnValidate @11-8C72C054
function departments_OnValidate()
{
    $departments_OnValidate = true;
//End departments_OnValidate

//Custom Code @19-2A29BDB7
global $DBIntranetDB;	
global $departments;

  $EmpCount = 0;
  $search_name = "";

  // search employee by initial letters 
  $search_name = trim($departments->department_manager_id->Value);
  
  if($search_name) {
    $search_name = str_replace(" ","%",$search_name);
    if(!strstr($search_name,"%")) 
       $search_name = "%".$search_name."%";
    else 
       $search_name = $search_name."%";


     $EmpCount = CCDLookUp("COUNT(*)", "employees", "emp_name LIKE ".$DBIntranetDB->ToSQL($search_name,ccsText), $DBIntranetDB);
     if($EmpCount > 1) 
        $departments->Errors->addError("Too many matching employees were found.");
     if($EmpCount == 0) 
        $departments->Errors->addError("No matching employees were found.");
     if($EmpCount == 1) 
        $departments->department_manager_id->SetValue(CCDLookUp("emp_id", "employees", "emp_name LIKE ".$DBIntranetDB->ToSQL($search_name,ccsText), $DBIntranetDB));
  }  

//End Custom Code

//Close departments_OnValidate @11-DE835B75
    return $departments_OnValidate;
}
//End Close departments_OnValidate


?>
