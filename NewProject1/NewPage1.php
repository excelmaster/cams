<?php
//Master Page implementation @1-9A15B712
include_once(RelativePath . "/Designs/Forum/MasterPage.php");
//End Master Page implementation

class clsNewPage1 { //NewPage1 class @1-E35598A9

//Variables @1-62DD0E74
    public $ComponentType = "IncludablePage";
    public $Connections = array();
    public $FileName = "";
    public $Redirect = "";
    public $Tpl = "";
    public $TemplateFileName = "";
    public $BlockToParse = "";
    public $ComponentName = "";
    public $Attributes = "";
    public $PathToCurrentMasterPage = "";
    public $TemplatePathValue = "";
    public $HTML;

    // Events;
    public $CCSEvents = "";
    public $CCSEventResult = "";
    public $MasterPage = null;
    public $RelativePath;
    public $Visible;
    public $Parent;
    public $TemplateSource;
//End Variables

//Class_Initialize Event @1-16BBF5FA
    function clsNewPage1($RelativePath, $ComponentName, & $Parent)
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = $ComponentName;
        $this->RelativePath = $RelativePath;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->FileName = "NewPage1.php";
        $this->Redirect = "";
        $this->TemplateFileName = "NewPage1.html";
        $this->BlockToParse = "main";
        $this->TemplateEncoding = "CP1252";
        $this->ContentType = "text/html";
    }
//End Class_Initialize Event

//Class_Terminate Event @1-32FD4740
    function Class_Terminate()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeUnload", $this);
    }
//End Class_Terminate Event

//BindEvents Method @1-0DAD0D56
    function BindEvents()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterInitialize", $this);
    }
//End BindEvents Method

//Operations Method @1-2FDC3BD0
    function Operations()
    {
        global $Redirect;
        if(!$this->Visible)
            return "";
        $this->MasterPage->Operations();
    }
//End Operations Method

//Initialize Method @1-97128D26
    function Initialize($Path = "")
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        global $PathToCurrentMasterPage;
        $this->TemplatePathValue = $Path;
        $PathToCurrentMasterPage = $this->RelativePath;
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeInitialize", $this);
        if(!$this->Visible)
            return "";
        $this->Attributes = & $this->Parent->Attributes;

        // Create Components
        $this->MasterPage = new clsMasterPage("/". "/Designs/" . $CCProjectDesign . "/", "MasterPage", $this);
        $this->MasterPage->Attributes = $this->Attributes;
        $this->MasterPage->Initialize("/Designs/" . $CCProjectDesign . "/");
        $this->Head = new clsPanel("Head", $this);
        $this->Head->PlaceholderName = "Head";
        $this->Content = new clsPanel("Content", $this);
        $this->Content->PlaceholderName = "Content";
        $this->Menu = new clsPanel("Menu", $this);
        $this->Menu->PlaceholderName = "Menu";
        $this->Sidebar1 = new clsPanel("Sidebar1", $this);
        $this->Sidebar1->PlaceholderName = "Sidebar1";
        $this->header = new clsPanel("header", $this);
        $this->header->isContentPlaceholder = true;
        $this->Content->AddComponent("header", $this->header);
        $this->BindEvents();
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnInitializeView", $this);
        $this->Tpl = new clsTemplate();
        if ($this->TemplateSource) {
            $this->Tpl->LoadTemplateFromStr($this->TemplateSource, "main", $this->TemplateEncoding);
        } else {
            $this->Tpl->LoadTemplate($this->RelativePath . $this->TemplateFileName, "main", $this->TemplateEncoding);
        }
    }
//End Initialize Method

//Show Method @1-7BC0BB78
    function Show()
    {
        global $CCSLocales;
        $this->Tpl->block_path = "/main";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        if(!$this->Visible) {
            $this->Tpl->block_path = $block_path;
            $this->Tpl->SetVar($this->ComponentName, "");
            return "";
        }
        $this->Tpl->SetVar("CCS_PathToCurrentPage", RelativePath . $this->RelativePath);
        $this->Tpl->SetVar("page:pathToCurrentPage", RelativePath . $this->RelativePath);
        $this->Attributes->Show();
        $this->Head->Show();
        $this->Content->Show();
        $this->Menu->Show();
        $this->Sidebar1->Show();
        $this->MasterPage->Tpl->SetVar("Head", $Tpl->GetVar("Panel Head"));
        $this->MasterPage->Tpl->SetVar("Content", $Tpl->GetVar("Panel Content"));
        $this->MasterPage->Tpl->SetVar("Menu", $Tpl->GetVar("Panel Menu"));
        $this->MasterPage->Tpl->SetVar("Sidebar1", $Tpl->GetVar("Panel Sidebar1"));
        $this->MasterPage->Show();
        $this->Tpl->block_path = "";
        $this->Tpl->Parse("main", false);
        $this->HTML = $this->Tpl->GetVar("main");
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeOutput", $this);
    }
//End Show Method

} //End NewPage1 Class @1-FCB6E20C


?>
