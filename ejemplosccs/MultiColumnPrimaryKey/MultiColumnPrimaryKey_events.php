<?php
//BindEvents Method @1-27CEB91A
function BindEvents()
{
    global $projects_emp_rec;
    $projects_emp_rec->percent_allocation->CCSEvents["OnValidate"] = "projects_emp_rec_percent_allocation_OnValidate";
    $projects_emp_rec->CCSEvents["OnValidate"] = "projects_emp_rec_OnValidate";
}
//End BindEvents Method

//projects_emp_rec_percent_allocation_OnValidate @65-30C68562
function projects_emp_rec_percent_allocation_OnValidate()
{
    $projects_emp_rec_percent_allocation_OnValidate = true;
//End projects_emp_rec_percent_allocation_OnValidate

//Validate Maximum Value @74-C33326BA
    global $projects_emp_rec;
    if (strlen($projects_emp_rec->percent_allocation->GetText()) && $projects_emp_rec->percent_allocation->GetValue() > 100)
    {
        $projects_emp_rec->percent_allocation->Errors->addError("The value in field 'Percent Allocation' cannot be greater than 100.");
    }
//End Validate Maximum Value

//Close projects_emp_rec_percent_allocation_OnValidate @65-C5D695D2
    return $projects_emp_rec_percent_allocation_OnValidate;
}
//End Close projects_emp_rec_percent_allocation_OnValidate

//projects_emp_rec_OnValidate @58-ABCE6E9D
function projects_emp_rec_OnValidate()
{
    $projects_emp_rec_OnValidate = true;
//End projects_emp_rec_OnValidate

//Custom Code @72-2A29BDB7
global $projects_emp_rec;
global $DBIntranetDB;
	
  if(!$projects_emp_rec->EditMode || (CCGetFromGet("project_id",0) != CCGetFromPost("project_id",0)) || (CCGetFromGet("emp_id",0) != CCGetFromPost("emp_id",0)) ) { 
      $IsUniqueValue = CCDLookUp("project_id", "projects_employees", " project_id=".$DBIntranetDB->ToSQL(CCGetFromPost("project_id",0),ccsInteger)." AND emp_id=".$DBIntranetDB->ToSQL(CCGetFromPost("emp_id",0),ccsInteger), $DBIntranetDB);
      if($IsUniqueValue) 
         $projects_emp_rec->Errors->addError("The project is already assigned to this employee.");
  }

//End Custom Code

//Close projects_emp_rec_OnValidate @58-79E3A273
    return $projects_emp_rec_OnValidate;
}
//End Close projects_emp_rec_OnValidate


?>
