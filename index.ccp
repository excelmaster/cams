<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" cachingDuration="1 minutes" useDesign="True" needGeneration="0" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="9" visible="True" name="Head" contentPlaceholder="Head">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="10" visible="True" name="Content" contentPlaceholder="Content">
			<Components>
				<Record id="2" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="Login" wizardCaption="Login" wizardTheme="Black" wizardOrientation="Vertical" wizardFormMethod="post" wizardRememberMe="True" wizardFocusOnLogin="True" buttonsType="image" wizardTypeComponent="Authentication" recordDirection="Vertical" templatePageRecord="C:/Archivos de programa/CodeChargeStudio5/Templates/Authentication/Horizontal.ccp|ccsTemplate" wizardThemeApplyTo="Component" recordAddTemplatePanel="False" changedCaptionLogin="False" PathID="ContentLogin" wizardThemeVersion="3.0" editableComponentTypeString="Authentication" connection="local_cams" activeCollection="IFormElements" activeTableType="categorias" returnPage="main.ccp">
					<Components>
						<Button id="3" urlType="Relative" enableValidation="True" isDefault="False" name="Button_DoLogin" wizardTheme="Black" wizardCaption="Login" wizardThemeItem="FooterIMG" wizardButtonImage="ButtonLoginOn" PathID="ContentLoginButton_DoLogin" wizardThemeVersion="3.0">
							<Components/>
							<Events>
								<Event name="OnClick" type="Server">
									<Actions>
										<Action actionName="Login" actionCategory="Security" id="6" redirectToPreviousPage="True" loginParameter="login1" passwordParameter="password" autoLoginParameter="autoLogin"/>
									</Actions>
								</Event>
							</Events>
							<Attributes/>
							<Features/>
						</Button>
						<TextBox id="4" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="login1" required="True" wizardTheme="Black" wizardCaption="Login" wizardSize="20" wizardMaxLength="100" wizardIsPassword="False" PathID="ContentLoginlogin1" wizardThemeVersion="3.0">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextBox id="5" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="password" required="True" wizardTheme="Black" wizardCaption="Password" wizardSize="20" wizardMaxLength="100" wizardIsPassword="True" PathID="ContentLoginpassword" wizardThemeVersion="3.0">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<CheckBox id="7" visible="Yes" fieldSourceType="DBColumn" dataType="Boolean" defaultValue="Unchecked" name="autoLogin" fieldSource="autoLogin" wizardTheme="Black" wizardDefaultValue="Remember me" PathID="ContentLoginautoLogin" wizardThemeVersion="3.0">
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
		<CodeFile id="Events" language="PHPTemplates" name="index_events.php" forShow="False" comment="//" codePage="windows-1252"/>
		<CodeFile id="Code" language="PHPTemplates" name="index.php" forShow="True" url="index.php" comment="//" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events>
		<Event name="OnLoad" type="Client">
			<Actions>
				<Action actionName="Set Focus" actionCategory="General" id="8" form="Login" name="login"/>
			</Actions>
		</Event>
	</Events>
</Page>
