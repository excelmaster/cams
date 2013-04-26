<?php
//BindEvents Method @1-BFB56CE7
function BindEvents()
{
    global $projects_rec;
    $projects_rec->CCSEvents["BeforeShow"] = "projects_rec_BeforeShow";
    $projects_rec->CCSEvents["AfterInsert"] = "projects_rec_AfterInsert";
    $projects_rec->CCSEvents["AfterUpdate"] = "projects_rec_AfterUpdate";
    $projects_rec->CCSEvents["BeforeDelete"] = "projects_rec_BeforeDelete";
}
//End BindEvents Method

//projects_rec_BeforeShow @55-737BC6EC
function projects_rec_BeforeShow()
{
    $projects_rec_BeforeShow = true;
//End projects_rec_BeforeShow

//Custom Code @63-2A29BDB7
global $projects_rec;

  $NewConnection = null;
  $Vals = array();
	
//Populate the multi-select project listBox
 if($projects_rec->EditMode){

   //Create a new database connection object
   $NewConnection = New clsDBIntranetDB();
   
   $NewConnection->query("SELECT employees.emp_id FROM employees, projects_employees WHERE projects_employees.emp_id = employees.emp_id AND projects_employees.project_id=".$NewConnection->ToSQL(CCGetParam("project_id", 0),ccsInteger) );
   while($NewConnection->next_record()){
     $Vals[] = $NewConnection->f("emp_id");
   }
   $projects_rec->employee_list->Multiple = true;
   $projects_rec->employee_list->Value = $Vals;

   //Close and destroy the recordset
   $NewConnection->close();
 
 }
//End Custom Code

//Close projects_rec_BeforeShow @55-1A49E35E
    return $projects_rec_BeforeShow;
}
//End Close projects_rec_BeforeShow

//projects_rec_AfterInsert @55-47CD8211
function projects_rec_AfterInsert()
{
    $projects_rec_AfterInsert = true;
//End projects_rec_AfterInsert

//Custom Code @64-2A29BDB7

	ProjectEmployeesModify("Insert");

//End Custom Code

//Close projects_rec_AfterInsert @55-F5640FDF
    return $projects_rec_AfterInsert;
}
//End Close projects_rec_AfterInsert

//projects_rec_AfterUpdate @55-A12562B4
function projects_rec_AfterUpdate()
{
    $projects_rec_AfterUpdate = true;
//End projects_rec_AfterUpdate

//Custom Code @65-2A29BDB7

	ProjectEmployeesModify("Update");

//End Custom Code

//Close projects_rec_AfterUpdate @55-3A4DCE50
    return $projects_rec_AfterUpdate;
}
//End Close projects_rec_AfterUpdate

//projects_rec_BeforeDelete @55-06282B6A
function projects_rec_BeforeDelete()
{
    $projects_rec_BeforeDelete = true;
//End projects_rec_BeforeDelete

//Custom Code @70-2A29BDB7

	ProjectEmployeesModify("Delete");

//End Custom Code

//Close projects_rec_BeforeDelete @55-14BB7C0A
    return $projects_rec_BeforeDelete;
}
//End Close projects_rec_BeforeDelete

function ProjectEmployeesModify($Actions){ 
global $DBIntranetDB;

  $EmpProjectConn = null;
  $CurrProjectID = 0;
  $EmpList = array();
  $EmpID = 0;
		
  //Create a new database EmpProjectConnection object
  $EmpProjectConn = new clsDBIntranetDB();

  $CurrProjectID = CCGetFromGet("project_id",0);
  $EmpList = CCGetFromPost("employee_list",array());
		  	
  if($Actions == "Insert") {
    //Retrieve the last inserted key
    //Use MS SQL method
    //$GetLastInsKey = CCDLookup("@@IDENTITY","projects","",DBIntranetDB);
    //Use a method compatible with all databases (unsafe when multiple users insert records at the same time)
    $CurrProjectID = CCDLookup("max(project_id)", "projects", "", $DBIntranetDB);
    //Insert New links
	reset($EmpList);
	while(list($key,$EmpID) = each($EmpList)){
		$EmpProjectConn->query("INSERT INTO projects_employees(project_id,emp_id) VALUES (".$EmpProjectConn->ToSQL($CurrProjectID,ccsInteger).",".$EmpProjectConn->ToSQL($EmpID,ccsInteger).")");
   	}
  }  	 
  if($CurrProjectID >0) {
	if( ($Actions == "Delete") || ($Actions == "Update")){
	   //Delete project employees links
       $EmpProjectConn->query("DELETE FROM projects_employees WHERE project_id=".$EmpProjectConn->ToSQL($CurrProjectID,ccsInteger));
    } 
    if($Actions == "Update"){
      //Insert assigned employees
      reset($EmpList);
      while(list($key,$EmpID) = each($EmpList)){
         $EmpProjectConn->query("INSERT INTO projects_employees (project_id, emp_id) VALUES (".$EmpProjectConn->ToSQL($CurrProjectID,ccsInteger).",".$EmpProjectConn->ToSQL($EmpID,ccsInteger).")");
      }
    }
  }

  //Close and destroy the database EmpProjectConnection object
  $EmpProjectConn->close();

}

?>
