<?php
//Include Common Files @1-46EFC2F3
define("RelativePath", "..");
define("PathToCurrentPage", "/ejemplosccs/");
define("FileName", "Default.php");
include_once(RelativePath . "/Common.php");
include_once(RelativePath . "/Template.php");
include_once(RelativePath . "/Sorter.php");
include_once(RelativePath . "/Navigator.php");
//End Include Common Files

//Initialize Page @1-49A4C11E
// Variables
$FileName = "";
$Redirect = "";
$Tpl = "";
$TemplateFileName = "";
$BlockToParse = "";
$ComponentName = "";
$Attributes = "";

// Events;
$CCSEvents = "";
$CCSEventResult = "";
$TemplateSource = "";

$FileName = FileName;
$Redirect = "";
$TemplateFileName = "Default.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$ContentType = "text/html";
$PathToRoot = "../";
//End Initialize Page

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-4035E8E4
$Attributes = new clsAttributes("page:");
$Attributes->SetValue("pathToRoot", $PathToRoot);
$MainPage->Attributes = & $Attributes;

// Controls
$Link5 = new clsControl(ccsLink, "Link5", "Link5", ccsText, "", CCGetRequestParam("Link5", ccsGet, NULL), $MainPage);
$Link5->Page = "Directory/Directory.php";
$Link2 = new clsControl(ccsLink, "Link2", "Link2", ccsText, "", CCGetRequestParam("Link2", ccsGet, NULL), $MainPage);
$Link2->Page = "DirectoryMaintenance/DirectoryMaintenance.php";
$Link9 = new clsControl(ccsLink, "Link9", "Link9", ccsText, "", CCGetRequestParam("Link9", ccsGet, NULL), $MainPage);
$Link9->Page = "NavRecordGrid/NavRecordGrid.php";
$Link26 = new clsControl(ccsLink, "Link26", "Link26", ccsText, "", CCGetRequestParam("Link26", ccsGet, NULL), $MainPage);
$Link26->Page = "EditableGridAddButton/EditableGridAddButton.php";
$Link27 = new clsControl(ccsLink, "Link27", "Link27", ccsText, "", CCGetRequestParam("Link27", ccsGet, NULL), $MainPage);
$Link27->Page = "EditableGridAutoRows/EditableGridAutoRows.php";
$Link11 = new clsControl(ccsLink, "Link11", "Link11", ccsText, "", CCGetRequestParam("Link11", ccsGet, NULL), $MainPage);
$Link11->Page = "MasterDetail/MasterDetail.php";
$Link28 = new clsControl(ccsLink, "Link28", "Link28", ccsText, "", CCGetRequestParam("Link28", ccsGet, NULL), $MainPage);
$Link28->Page = "OrderEntry/OrderEntry.php";
$Link6 = new clsControl(ccsLink, "Link6", "Link6", ccsText, "", CCGetRequestParam("Link6", ccsGet, NULL), $MainPage);
$Link6->Parameters = CCGetQueryString("QueryString", array("ccsForm"));
$Link6->Page = "ManyToManyListbox/ManyToManyListbox.php";
$Link8 = new clsControl(ccsLink, "Link8", "Link8", ccsText, "", CCGetRequestParam("Link8", ccsGet, NULL), $MainPage);
$Link8->Page = "ManyToManyCheckbox/ManyToManyCheckbox.php";
$Link12 = new clsControl(ccsLink, "Link12", "Link12", ccsText, "", CCGetRequestParam("Link12", ccsGet, NULL), $MainPage);
$Link12->Page = "ManyToManyListboxes/ManyToManyListboxes.php";
$Link7 = new clsControl(ccsLink, "Link7", "Link7", ccsText, "", CCGetRequestParam("Link7", ccsGet, NULL), $MainPage);
$Link7->Page = "MultiSelectSearch/MultiSelectSearch.php";
$Link3 = new clsControl(ccsLink, "Link3", "Link3", ccsText, "", CCGetRequestParam("Link3", ccsGet, NULL), $MainPage);
$Link3->Page = "NavGrid/NavGrid.php";
$Link1 = new clsControl(ccsLink, "Link1", "Link1", ccsText, "", CCGetRequestParam("Link1", ccsGet, NULL), $MainPage);
$Link1->Page = "PopUpList/PopUpList.php";
$Link13 = new clsControl(ccsLink, "Link13", "Link13", ccsText, "", CCGetRequestParam("Link13", ccsGet, NULL), $MainPage);
$Link13->Page = "MultiStepRegistration/MultiStepRegistrationGrid.php";
$Link4 = new clsControl(ccsLink, "Link4", "Link4", ccsText, "", CCGetRequestParam("Link4", ccsGet, NULL), $MainPage);
$Link4->Page = "InputMask/InputMask.php";
$Link10 = new clsControl(ccsLink, "Link10", "Link10", ccsText, "", CCGetRequestParam("Link10", ccsGet, NULL), $MainPage);
$Link10->Page = "MultiColumnPrimaryKey/MultiColumnPrimaryKey.php";
$Link15 = new clsControl(ccsLink, "Link15", "Link15", ccsText, "", CCGetRequestParam("Link15", ccsGet, NULL), $MainPage);
$Link15->Page = "ExportToExcel/ExportToExcel.php";
$MainPage->Link5 = & $Link5;
$MainPage->Link2 = & $Link2;
$MainPage->Link9 = & $Link9;
$MainPage->Link26 = & $Link26;
$MainPage->Link27 = & $Link27;
$MainPage->Link11 = & $Link11;
$MainPage->Link28 = & $Link28;
$MainPage->Link6 = & $Link6;
$MainPage->Link8 = & $Link8;
$MainPage->Link12 = & $Link12;
$MainPage->Link7 = & $Link7;
$MainPage->Link3 = & $Link3;
$MainPage->Link1 = & $Link1;
$MainPage->Link13 = & $Link13;
$MainPage->Link4 = & $Link4;
$MainPage->Link10 = & $Link10;
$MainPage->Link15 = & $Link15;

$CCSEventResult = CCGetEvent($CCSEvents, "AfterInitialize", $MainPage);

if ($Charset) {
    header("Content-Type: " . $ContentType . "; charset=" . $Charset);
} else {
    header("Content-Type: " . $ContentType);
}
//End Initialize Objects

//Initialize HTML Template @1-28BF1EE2
$CCSEventResult = CCGetEvent($CCSEvents, "OnInitializeView", $MainPage);
$Tpl = new clsTemplate($FileEncoding, $TemplateEncoding);
if (strlen($TemplateSource)) {
    $Tpl->LoadTemplateFromStr($TemplateSource, $BlockToParse, "CP1252", "replace");
} else {
    $Tpl->LoadTemplate(PathToCurrentPage . $TemplateFileName, $BlockToParse, "CP1252", "replace");
}
$Tpl->SetVar("CCS_PathToRoot", $PathToRoot);
$Tpl->block_path = "/$BlockToParse";
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeShow", $MainPage);
$Attributes->SetValue("pathToRoot", "../");
$Attributes->Show();
//End Initialize HTML Template

//Go to destination page @1-FBA93089
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    header("Location: " . $Redirect);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-B67D901D
$Link5->Show();
$Link2->Show();
$Link9->Show();
$Link26->Show();
$Link27->Show();
$Link11->Show();
$Link28->Show();
$Link6->Show();
$Link8->Show();
$Link12->Show();
$Link7->Show();
$Link3->Show();
$Link1->Show();
$Link13->Show();
$Link4->Show();
$Link10->Show();
$Link15->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
if (!isset($main_block)) $main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $CCSLocales->GetFormatInfo("Encoding"));
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-74A7C1E7
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
unset($Tpl);
//End Unload Page


?>
