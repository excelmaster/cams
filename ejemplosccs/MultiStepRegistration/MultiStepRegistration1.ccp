<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\MultiStepRegistration" secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="EXPack" wizardThemeVersion="3.0">
	<Components>
		<IncludePage id="48" hasOperation="True" name="Header" page="../Header.ccp">
			<Components/>
			<Events/>
		</IncludePage>
		<Record id="3" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" debugMode="False" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="users" errorSummator="Error" wizardCaption="Add/Edit Users " wizardFormMethod="post" returnPage="MultiStepRegistration2.ccp" connection="InternetDB" dataSource="users">
			<Components>
				<TextBox id="9" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="user_login" fieldSource="user_login" required="True" caption=" Login" wizardCaption=" Login" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" unique="True" visible="Yes">
					<Components/>
					<Events/>
				</TextBox>
				<TextBox id="10" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="user_password" fieldSource="user_password" required="True" caption=" Password" wizardCaption=" Password" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes">
					<Components/>
					<Events/>
				</TextBox>
				<TextBox id="11" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="first_name" fieldSource="first_name" required="True" caption="First Name" wizardCaption="First Name" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes">
					<Components/>
					<Events/>
				</TextBox>
				<TextBox id="12" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="last_name" fieldSource="last_name" required="True" caption="Last Name" wizardCaption="Last Name" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes">
					<Components/>
					<Events/>
				</TextBox>
				<TextBox id="21" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="email" fieldSource="email" required="True" caption="Email" wizardCaption="Email" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" inputMask="^[\w\.-]{1,}\@([\da-zA-Z-]{1,}\.){1,}[\da-zA-Z-]+$" visible="Yes">
					<Components/>
					<Events/>
				</TextBox>
				<Button id="4" urlType="Relative" enableValidation="True" isDefault="False" name="Insert1" wizardCaption="Add" operation="Insert">
					<Components/>
					<Events/>
				</Button>
				<Button id="46" urlType="Relative" enableValidation="True" isDefault="False" name="Update1" wizardCaption="Add" operation="Update">
					<Components/>
					<Events/>
				</Button>
				<Button id="45" urlType="Relative" enableValidation="False" isDefault="False" name="Cancel" operation="Cancel" returnPage="MultiStepRegistrationGrid.ccp">
					<Components/>
					<Events/>
				</Button>
			</Components>
			<Events>
				<Event name="AfterInsert" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="47"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="8" conditionType="Parameter" useIsNull="False" field="user_id" parameterSource="user_id" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables/>
			<JoinLinks/>
			<Fields/>
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
		</Record>
		<IncludePage id="49" name="Footer" wizardTheme="None" wizardThemeType="File" wizardThemeVersion="3.0" page="../Footer.ccp">
<Components/>
<Events/>
</IncludePage>
</Components>
	<CodeFiles>
		<CodeFile id="Events" language="ASPTemplates" forShow="False" name="MultiStepRegistration1_events.asp" comment="'"/>
		<CodeFile id="1" language="C#" name="MultiStepRegistration1.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="3" language="VB" name="MultiStepRegistration1.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="MultiStepRegistration1.aspx"/>
		<CodeFile id="1" language="VB" name="MultiStepRegistration1.aspx.vb" comment="'" forShow="False"/>
		<CodeFile id="codeRecord1" language="CFMLTemplates" name="MultiStepRegistration1_users.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codePage" language="CFMLTemplates" name="MultiStepRegistration1.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="True" url="MultiStepRegistration1.cfm"/>
		<CodeFile id="codeRecord1" language="CFML" name="MultiStepRegistration1_users.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="Handlers" language="JSP" name="MultiStepRegistration1Handlers.jsp" path="." comment="//" forShow="False"/>
		<CodeFile id="Events" language="PHPTemplates" name="MultiStepRegistration1_events.php" comment="//" forShow="False"/>
		<CodeFile id="Events" language="PerlTemplates" name="MultiStepRegistration1_events.pl" comment="#" forShow="False"/>
		<CodeFile id="usersDataObject3" language="ServletTemplates" name="usersDataObject.java" path="..\CCSBuild\src\MultiStepRegistration\MultiStepRegistration1\" comment="//" forShow="False"/>
		<CodeFile id="usersRow3" language="ServletTemplates" name="usersRow.java" path="..\CCSBuild\src\MultiStepRegistration\MultiStepRegistration1\" comment="//" forShow="False"/>
		<CodeFile id="Action" language="ServletTemplates" name="MultiStepRegistration1Action.java" path="..\CCSBuild\src\MultiStepRegistration\MultiStepRegistration1\" comment="//" forShow="True" url="MultiStepRegistration1.do"/>
		<CodeFile id="Model" language="ServletTemplates" name="MultiStepRegistration1Model.java" path="..\CCSBuild\src\MultiStepRegistration\MultiStepRegistration1\" comment="//" forShow="False"/>
		<CodeFile id="View" language="ServletTemplates" name="MultiStepRegistration1View.java" path="..\CCSBuild\src\MultiStepRegistration\MultiStepRegistration1\" comment="//" forShow="False"/>
		<CodeFile id="usersRecordEventHandler" language="ServletTemplates" name="usersRecordHandler.java" path="..\CCSBuild\src\MultiStepRegistration\MultiStepRegistration1\" comment="//" forShow="False"/>
		<CodeFile id="Code" language="ASPTemplates" forShow="True" url="MultiStepRegistration1.asp" name="MultiStepRegistration1.asp" comment="'"/>
		<CodeFile id="Code" language="PHPTemplates" forShow="True" url="MultiStepRegistration1.php" name="MultiStepRegistration1.php" comment="//"/>
		<CodeFile id="Code" language="PerlTemplates" forShow="True" url="MultiStepRegistration1.cgi" name="MultiStepRegistration1.cgi" comment="#"/>
		<CodeFile id="codePage" language="CFML" forShow="True" url="MultiStepRegistration1.cfm" name="MultiStepRegistration1.cfm" comment="&lt;!---" commentEnd="---&gt;"/>
		<CodeFile id="Model" language="JSP" forShow="False" name="MultiStepRegistration1.xml" path="." comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="JSP" language="JSP" forShow="True" url="MultiStepRegistration1.jsp" name="MultiStepRegistration1.jsp" path="." comment="&lt;%--" commentEnd="--%&gt;"/>
		<CodeFile id="2" language="VB" forShow="False" name="MultiStepRegistration1DataProvider.vb" path="\components" comment="'"/>
		<CodeFile id="3" language="C#" forShow="True" url="MultiStepRegistration1.aspx" name="MultiStepRegistration1.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="2" language="C#" forShow="False" name="MultiStepRegistration1DataProvider.cs" path="\components" comment="//"/>
		<CodeFile id="1" language="C#InMotion" name="MultiStepRegistration1.aspx" forShow="True" url="MultiStepRegistration1.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.cs" language="C#InMotion" name="MultiStepRegistration1Events.aspx.cs" forShow="True" url="MultiStepRegistration1Events.aspx.cs" comment="//"/>
		<CodeFile id="1" language="VBInMotion" name="MultiStepRegistration1.aspx" forShow="True" url="MultiStepRegistration1.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.vb" language="VBInMotion" name="MultiStepRegistration1Events.aspx.vb" forShow="True" url="MultiStepRegistration1Events.aspx.vb" comment="'"/>
	</CodeFiles>
	<SecurityGroups/>
	<Events/>
	<CachingParameters/>
</Page>
