<?php
//BindEvents Method @1-8D97843D
function BindEvents()
{
    global $employees;
    $employees->ds->CCSEvents["BeforeBuildSelect"] = "employees_ds_BeforeBuildSelect";
    $employees->CCSEvents["BeforeShow"] = "employees_BeforeShow";
}
//End BindEvents Method

//employees_ds_BeforeBuildSelect @2-D5342ACB
function employees_ds_BeforeBuildSelect()
{
    $employees_ds_BeforeBuildSelect = true;
//End employees_ds_BeforeBuildSelect

//Custom Code @20-2A29BDB7
global $employees;
global $DBIntranetDB;	

  //Dynamically modify the WHERE statement (of the datasource) to match the following SQL condition:
  //emp_name LIKE F% L%", where F = First Name, L = Last Name.
   
  $search_name = str_replace(" ","%",trim(CCGetFromGet("s_emp_name","")));
  if (!strstr($search_name,"%")) 
      $search_name = "%".$search_name."%";
  else 
      $search_name = $search_name."%";


  if ($employees->ds->Where != "") 
      $employees->ds->Where .= " AND ";
  $employees->ds->Where .= "emp_name LIKE ".$DBIntranetDB->ToSQL($search_name,ccsText);

//End Custom Code

//Close employees_ds_BeforeBuildSelect @2-F731E0AD
    return $employees_ds_BeforeBuildSelect;
}
//End Close employees_ds_BeforeBuildSelect

//employees_BeforeShow @2-35E20A37
function employees_BeforeShow()
{
    $employees_BeforeShow = true;
//End employees_BeforeShow

//Custom Code @23-2A29BDB7
global $employees;

  if ($employees->ds->PageCount() < 2) 
      $employees->Navigator1->Visible = false;

//End Custom Code

//Close employees_BeforeShow @2-4F58CE32
    return $employees_BeforeShow;
}
//End Close employees_BeforeShow


?>
