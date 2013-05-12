<?php
//Include Common Files @1-A6879E6F
define("RelativePath", ".");
define("PathToCurrentPage", "/");
define("FileName", "redirije.php");
include_once(RelativePath . "/Common.php");
include_once(RelativePath . "/Template.php");
include_once(RelativePath . "/Sorter.php");
include_once(RelativePath . "/Navigator.php");
//End Include Common Files

//Master Page implementation @1-DF903F6E
include_once(RelativePath . "/Designs/masterpage.php");
//End Master Page implementation

//Initialize Page @1-E1757096
// Variables
$FileName = "";
$Redirect = "";
$Tpl = "";
$TemplateFileName = "";
$BlockToParse = "";
$ComponentName = "";
$Attributes = "";
$PathToCurrentMasterPage = "";
$TemplatePathValue = "";

// Events;
$CCSEvents = "";
$CCSEventResult = "";
$masterpage = null;
$TemplateSource = "";

$FileName = FileName;
$Redirect = "";
$TemplateFileName = "redirije.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$ContentType = "text/html";
$PathToRoot = "./";
$Charset = $Charset ? $Charset : "windows-1252";
//End Initialize Page

//Include events file @1-00A5012C
include_once("./redirije_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-1B650904
$Attributes = new clsAttributes("page:");
$Attributes->SetValue("pathToRoot", $PathToRoot);
$MainPage->Attributes = & $Attributes;

// Controls
$masterpage = new clsmasterpage("/Designs/", "masterpage", $MainPage);
$masterpage->Attributes = $Attributes;
$masterpage->Initialize();
$cabecera = new clsPanel("cabecera", $MainPage);
$cabecera->PlaceholderName = "cabecera";
$Label1 = new clsControl(ccsLabel, "Label1", "Label1", ccsText, "", CCGetRequestParam("Label1", ccsGet, NULL), $MainPage);
$contenido = new clsPanel("contenido", $MainPage);
$contenido->PlaceholderName = "contenido";
$pie = new clsPanel("pie", $MainPage);
$pie->PlaceholderName = "pie";
$Head = new clsPanel("Head", $MainPage);
$Content = new clsPanel("Content", $MainPage);
$MainPage->cabecera = & $cabecera;
$MainPage->Label1 = & $Label1;
$MainPage->contenido = & $contenido;
$MainPage->pie = & $pie;
$MainPage->Head = & $Head;
$MainPage->Content = & $Content;
$cabecera->AddComponent("Label1", $Label1);
if(!is_array($Label1->Value) && !strlen($Label1->Value) && $Label1->Value !== false)
    $Label1->SetText("Sistema de inventarios");

BindEvents();

$CCSEventResult = CCGetEvent($CCSEvents, "AfterInitialize", $MainPage);

if ($Charset) {
    header("Content-Type: " . $ContentType . "; charset=" . $Charset);
} else {
    header("Content-Type: " . $ContentType);
}
//End Initialize Objects

//Initialize HTML Template @1-380C9A2B
$CCSEventResult = CCGetEvent($CCSEvents, "OnInitializeView", $MainPage);
$Tpl = new clsTemplate($FileEncoding, $TemplateEncoding);
if (strlen($TemplateSource)) {
    $Tpl->LoadTemplateFromStr($TemplateSource, $BlockToParse, "CP1252");
} else {
    $Tpl->LoadTemplate(PathToCurrentPage . $TemplateFileName, $BlockToParse, "CP1252");
}
$Tpl->SetVar("CCS_PathToRoot", $PathToRoot);
$Tpl->SetVar("CCS_PathToMasterPage", RelativePath . $PathToCurrentMasterPage);
$Tpl->block_path = "/$BlockToParse";
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeShow", $MainPage);
$Attributes->SetValue("pathToRoot", "");
$Attributes->Show();
//End Initialize HTML Template

//Execute Components @1-07A62F4B
$masterpage->Operations();
//End Execute Components

//Go to destination page @1-FBA93089
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    header("Location: " . $Redirect);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-A0AE28D6
$cabecera->Show();
$contenido->Show();
$pie->Show();
$Head->Show();
$Content->Show();
$masterpage->Tpl->SetVar("cabecera", $Tpl->GetVar("Panel cabecera"));
$masterpage->Tpl->SetVar("contenido", $Tpl->GetVar("Panel contenido"));
$masterpage->Tpl->SetVar("pie", $Tpl->GetVar("Panel pie"));
$masterpage->Show();
if (!isset($main_block)) $main_block = $masterpage->HTML;
$main_block = CCConvertEncoding($main_block, $FileEncoding, $TemplateEncoding);
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-2B544A99
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
unset($masterpage);
unset($Tpl);
//End Unload Page


?>
