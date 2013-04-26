<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" cachingDuration="1 minutes" useDesign="True" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="9" visible="True" name="Head" contentPlaceholder="Head">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Panel>
<Panel id="10" visible="True" name="Content" contentPlaceholder="Content">
<Components>
<Record id="2" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="Login1" wizardCaption="{res:CCS_LoginForm}" wizardTheme="Compact" wizardOrientation="Vertical" wizardFormMethod="post" wizardRememberMe="True" wizardFocusOnLogin="True" buttonsType="image" wizardTypeComponent="Authentication" recordDirection="Vertical" templatePageRecord="C:/Archivos de programa/CodeChargeStudio5/Templates/Authentication/Horizontal.ccp|ccsTemplate" wizardThemeApplyTo="Component" recordAddTemplatePanel="False" changedCaptionLogin="False" PathID="ContentLogin1" wizardThemeVersion="3.0">
<Components>
<Button id="3" urlType="Relative" enableValidation="True" isDefault="False" name="Button_DoLogin" wizardTheme="Compact" wizardCaption="{res:CCS_LoginBtn}" wizardThemeItem="FooterIMG" wizardButtonImage="ButtonLoginOn" PathID="ContentLogin1Button_DoLogin" wizardThemeVersion="3.0">
<Components/>
<Events>
<Event name="OnClick" type="Server">
<Actions>
<Action actionName="Login" actionCategory="Security" id="6" redirectToPreviousPage="True" loginParameter="login" passwordParameter="password" autoLoginParameter="autoLogin"/>
<Action actionName="Custom Code" actionCategory="General" id="13"/>
</Actions>
</Event>
</Events>
<Attributes/>
<Features/>
</Button>
<TextBox id="4" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="login" fieldSource="username" required="True" wizardTheme="Compact" wizardCaption="{res:CCS_Login}" wizardSize="20" wizardMaxLength="100" wizardIsPassword="False" PathID="ContentLogin1login" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="5" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="password" fieldSource="password" required="True" wizardTheme="Compact" wizardCaption="{res:CCS_Password}" wizardSize="20" wizardMaxLength="100" wizardIsPassword="True" PathID="ContentLogin1password" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<CheckBox id="7" visible="Yes" fieldSourceType="DBColumn" dataType="Boolean" defaultValue="Unchecked" name="autoLogin" fieldSource="autoLogin" wizardTheme="Compact" wizardDefaultValue="{res:CCS_Login_AutoLogin_Caption}" PathID="ContentLogin1autoLogin" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</CheckBox>
</Components>
<Events/>
<TableParameters/>
<SPParameters/>
<SQLParameters/>
<JoinTables/>
<JoinLinks/>
<Fields/>
<PKFields/>
<ISPParameters/>
<ISQLParameters/>
<IFormElements/>
<USPParameters/>
<USQLParameters/>
<UConditions/>
<UFormElements/>
<DSPParameters/>
<DSQLParameters/>
<DConditions/>
<SecurityGroups/>
<Attributes/>
<Features/>
</Record>
</Components>
<Events/>
<Attributes/>
<Features/>
</Panel>
<Panel id="11" visible="True" name="Menu" contentPlaceholder="Menu">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Panel>
<Panel id="12" visible="True" name="Sidebar1" contentPlaceholder="Sidebar1">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Panel>
</Components>
	<CodeFiles>
		<CodeFile id="Events" language="PHPTemplates" name="login_events.php" forShow="False" comment="//" codePage="windows-1252"/>
<CodeFile id="Code" language="PHPTemplates" name="login.php" forShow="True" url="login.php" comment="//" codePage="windows-1252"/>
</CodeFiles>
	<SecurityGroups/>
<CachingParameters/>
<Attributes/>
<Features/>
<Events>
<Event name="OnLoad" type="Client">
<Actions>
<Action actionName="Set Focus" actionCategory="General" id="8" form="Login1" name="login"/>
</Actions>
</Event>
</Events>
</Page>
