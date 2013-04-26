<?php
//BindEvents Method @1-EFBDA75E
function BindEvents()
{
    global $employees;
    global $CCSEvents;
    $employees->CCSEvents["BeforeSelect"] = "employees_BeforeSelect";
    $employees->CCSEvents["BeforeShow"] = "employees_BeforeShow";
    $CCSEvents["OnInitializeView"] = "Page_OnInitializeView";
}
//End BindEvents Method

//employees_BeforeSelect @13-4073C8B6
function employees_BeforeSelect()
{
    $employees_BeforeSelect = true;
//End employees_BeforeSelect

//Custom Code @26-C6E784A0
// -------------------------
global $employees;

 	if (CCGetFromGet("export") == "1") {
		//Show up to 10,000 records
	    $employees->PageSize = 10000;
	    $employees->ds->PageSize = 10000;
		//Hide the Navigator
	    $employees->Navigator->Visible = false;
	}

// -------------------------
//End Custom Code

//Close employees_BeforeSelect @13-3E78CF96
    return $employees_BeforeSelect;
}
//End Close employees_BeforeSelect

//employees_BeforeShow @13-35E20A37
function employees_BeforeShow()
{
    $employees_BeforeShow = true;
//End employees_BeforeShow

//Custom Code @29-C6E784A0
// -------------------------
    global $employees;
    // Write your own code here.
// -------------------------
//End Custom Code

//Close employees_BeforeShow @13-4F58CE32
    return $employees_BeforeShow;
}
//End Close employees_BeforeShow

//Page_OnInitializeView @1-493DD3AA
function Page_OnInitializeView()
{
    $Page_OnInitializeView = true;
//End Page_OnInitializeView

//Custom Code @10-62AC8465
// -------------------------
global $ExportToExcel;
global $ToExcelLink;
global $Header;
global $Link1;

	$ExportFileName = "Report.xls";
 	if (CCGetFromGet("export") == "1") {
		//Hide the ToExcelLink Link 
		$ToExcelLink->Visible = false;
		$Link1->Visible = false;
		$Header->Visible = false;

		//Set Content type to Excel
        header("Content-Type: application/vnd.ms-excel");
        //Fix IE 5.0-5.5 bug with Content-Disposition=attachment
		if (strpos($_SERVER["HTTP_USER_AGENT"],"MSIE 5.5;") || 
            strpos($_SERVER["HTTP_USER_AGENT"],"MSIE 5.0;")) {
	  		header("Content-Disposition: filename=" . $ExportFileName);
		} else {
	  		header("Content-Disposition: attachment; filename=" . $ExportFileName);
		}
	}

// -------------------------
//End Custom Code

//Close Page_OnInitializeView @1-81DF8332
    return $Page_OnInitializeView;
}
//End Close Page_OnInitializeView

?>
