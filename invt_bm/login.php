<?php
//Include Common Files @1-58B7EC09
define("RelativePath", ".");
define("PathToCurrentPage", "/");
define("FileName", "login.php");
include_once(RelativePath . "/Common.php");
include_once(RelativePath . "/Template.php");
include_once(RelativePath . "/Sorter.php");
include_once(RelativePath . "/Navigator.php");
//End Include Common Files

//Master Page implementation @1-DF903F6E
include_once(RelativePath . "/Designs/masterpage.php");
//End Master Page implementation

class clsRecordLogin1 { //Login1 Class @2-621CEC6C

//Variables @2-9E315808

    // Public variables
    public $ComponentType = "Record";
    public $ComponentName;
    public $Parent;
    public $HTMLFormAction;
    public $PressedButton;
    public $Errors;
    public $ErrorBlock;
    public $FormSubmitted;
    public $FormEnctype;
    public $Visible;
    public $IsEmpty;

    public $CCSEvents = "";
    public $CCSEventResult;

    public $RelativePath = "";

    public $InsertAllowed = false;
    public $UpdateAllowed = false;
    public $DeleteAllowed = false;
    public $ReadAllowed   = false;
    public $EditMode      = false;
    public $ds;
    public $DataSource;
    public $ValidatingControls;
    public $Controls;
    public $Attributes;

    // Class variables
//End Variables

//Class_Initialize Event @2-C45340D2
    function clsRecordLogin1($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record Login1/Error";
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "Login1";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = explode(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->Button_DoLogin = new clsButton("Button_DoLogin", $Method, $this);
            $this->login = new clsControl(ccsTextBox, "login", "login", ccsText, "", CCGetRequestParam("login", $Method, NULL), $this);
            $this->login->Required = true;
            $this->password = new clsControl(ccsTextBox, "password", "password", ccsText, "", CCGetRequestParam("password", $Method, NULL), $this);
            $this->password->Required = true;
            $this->autoLogin = new clsControl(ccsCheckBox, "autoLogin", "autoLogin", ccsBoolean, $CCSLocales->GetFormatInfo("BooleanFormat"), CCGetRequestParam("autoLogin", $Method, NULL), $this);
            $this->autoLogin->CheckedValue = true;
            $this->autoLogin->UncheckedValue = false;
            if(!$this->FormSubmitted) {
                if(!is_array($this->autoLogin->Value) && !strlen($this->autoLogin->Value) && $this->autoLogin->Value !== false)
                    $this->autoLogin->SetValue(false);
            }
        }
    }
//End Class_Initialize Event

//Validate Method @2-E943E0FF
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->login->Validate() && $Validation);
        $Validation = ($this->password->Validate() && $Validation);
        $Validation = ($this->autoLogin->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->login->Errors->Count() == 0);
        $Validation =  $Validation && ($this->password->Errors->Count() == 0);
        $Validation =  $Validation && ($this->autoLogin->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @2-91657E88
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->login->Errors->Count());
        $errors = ($errors || $this->password->Errors->Count());
        $errors = ($errors || $this->autoLogin->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @2-0CC9A055
    function Operation()
    {
        if(!$this->Visible)
            return;

        global $Redirect;
        global $FileName;

        if(!$this->FormSubmitted) {
            return;
        }

        if($this->FormSubmitted) {
            $this->PressedButton = "Button_DoLogin";
            if($this->Button_DoLogin->Pressed) {
                $this->PressedButton = "Button_DoLogin";
            }
        }
        $Redirect = "redirije.php";
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoLogin") {
                if(!CCGetEvent($this->Button_DoLogin->CCSEvents, "OnClick", $this->Button_DoLogin)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @2-647D5337
    function Show()
    {
        global $CCSUseAmp;
        $Tpl = & CCGetTemplate($this);
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $RecordBlock = "Record " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $RecordBlock;
        $this->EditMode = $this->EditMode && $this->ReadAllowed;
        if (!$this->FormSubmitted) {
        }

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->login->Errors->ToString());
            $Error = ComposeStrings($Error, $this->password->Errors->ToString());
            $Error = ComposeStrings($Error, $this->autoLogin->Errors->ToString());
            $Error = ComposeStrings($Error, $this->Errors->ToString());
            $Tpl->SetVar("Error", $Error);
            $Tpl->Parse("Error", false);
        }
        $CCSForm = $this->EditMode ? $this->ComponentName . ":" . "Edit" : $this->ComponentName;
        $this->HTMLFormAction = $FileName . "?" . CCAddParam(CCGetQueryString("QueryString", ""), "ccsForm", $CCSForm);
        $Tpl->SetVar("Action", !$CCSUseAmp ? $this->HTMLFormAction : str_replace("&", "&amp;", $this->HTMLFormAction));
        $Tpl->SetVar("HTMLFormName", $this->ComponentName);
        $Tpl->SetVar("HTMLFormEnctype", $this->FormEnctype);

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        $this->Attributes->Show();
        if(!$this->Visible) {
            $Tpl->block_path = $ParentPath;
            return;
        }

        $this->Button_DoLogin->Show();
        $this->login->Show();
        $this->password->Show();
        $this->autoLogin->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End Login1 Class @2-FCB6E20C

//Initialize Page @1-4343C1D4
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
$TemplateFileName = "login.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$ContentType = "text/html";
$PathToRoot = "./";
$Charset = $Charset ? $Charset : "windows-1252";
//End Initialize Page

//Include events file @1-F4209B3E
include_once("./login_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-C2C65388
$Attributes = new clsAttributes("page:");
$Attributes->SetValue("pathToRoot", $PathToRoot);
$MainPage->Attributes = & $Attributes;

// Controls
$masterpage = new clsmasterpage("/Designs/", "masterpage", $MainPage);
$masterpage->Attributes = $Attributes;
$masterpage->Initialize();
$contenido = new clsPanel("contenido", $MainPage);
$contenido->PlaceholderName = "contenido";
$Login1 = new clsRecordLogin1("", $MainPage);
$pie = new clsPanel("pie", $MainPage);
$pie->PlaceholderName = "pie";
$Head = new clsPanel("Head", $MainPage);
$Content = new clsPanel("Content", $MainPage);
$MainPage->contenido = & $contenido;
$MainPage->Login1 = & $Login1;
$MainPage->pie = & $pie;
$MainPage->Head = & $Head;
$MainPage->Content = & $Content;
$contenido->AddComponent("Login1", $Login1);

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

//Execute Components @1-849290D5
$masterpage->Operations();
$Login1->Operation();
//End Execute Components

//Go to destination page @1-6FDD89A4
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    header("Location: " . $Redirect);
    unset($Login1);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-8BA48B14
$contenido->Show();
$pie->Show();
$Head->Show();
$Content->Show();
$masterpage->Tpl->SetVar("contenido", $Tpl->GetVar("Panel contenido"));
$masterpage->Tpl->SetVar("pie", $Tpl->GetVar("Panel pie"));
$masterpage->Show();
if (!isset($main_block)) $main_block = $masterpage->HTML;
$main_block = CCConvertEncoding($main_block, $FileEncoding, $TemplateEncoding);
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-BE4D9B96
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
unset($masterpage);
unset($Login1);
unset($Tpl);
//End Unload Page


?>
