<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\MultiStepRegistration" secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="EXPack" wizardThemeVersion="3.0">
	<Components>
		<IncludePage id="46" hasOperation="True" name="Header" page="../Header.ccp">
			<Components/>
			<Events/>
		</IncludePage>
		<Record id="3" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" debugMode="False" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="InternetDB" name="users" dataSource="users" errorSummator="Error" wizardCaption="Add/Edit Users " wizardFormMethod="post" returnPage="MultiStepRegistrationGrid.ccp">
			<Components>
				<RadioButton id="41" fieldSourceType="DBColumn" dataType="Integer" html="False" editable="True" hasErrorCollection="True" name="gender_id" fieldSource="gender_id" required="False" caption="Gender Id" wizardCaption="Gender Id" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" sourceType="Table" connection="InternetDB" dataSource="genders" boundColumn="gender_id" textColumn="gender_name">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
				</RadioButton>
				<ListBox id="40" fieldSourceType="DBColumn" dataType="Integer" html="False" editable="True" hasErrorCollection="True" name="age_id" fieldSource="age_id" required="False" caption="Age Id" wizardCaption="Age Id" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" sourceType="Table" connection="InternetDB" dataSource="ages" boundColumn="age_id" textColumn="age_name" orderBy="age_id" visible="Yes">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
				</ListBox>
				<ListBox id="38" fieldSourceType="DBColumn" dataType="Integer" html="False" editable="True" hasErrorCollection="True" name="language_id" fieldSource="language_id" required="False" caption="Language Id" wizardCaption="Language Id" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" sourceType="Table" connection="InternetDB" dataSource="languages" boundColumn="language_id" textColumn="language_name" orderBy="language_name" visible="Yes">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
				</ListBox>
				<ListBox id="42" fieldSourceType="DBColumn" dataType="Integer" html="False" editable="True" hasErrorCollection="True" name="education_id" fieldSource="education_id" required="False" caption="Education Id" wizardCaption="Education Id" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" sourceType="Table" connection="InternetDB" dataSource="educations" boundColumn="education_id" textColumn="education_name" orderBy="education_id" visible="Yes">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
				</ListBox>
				<TextBox id="13" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="title" fieldSource="title" required="False" caption="Title" wizardCaption="Title" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes">
					<Components/>
					<Events/>
				</TextBox>
				<ListBox id="43" fieldSourceType="DBColumn" dataType="Integer" html="False" editable="True" hasErrorCollection="True" name="income_id" fieldSource="income_id" required="False" caption="Income Id" wizardCaption="Income Id" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" sourceType="Table" connection="InternetDB" dataSource="incomes" boundColumn="income_id" textColumn="income_name" orderBy="income_id" visible="Yes">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
				</ListBox>
				<TextBox id="23" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="card_number" fieldSource="card_number" required="False" caption="Card Number" wizardCaption="Card Number" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes">
					<Components/>
					<Events/>
				</TextBox>
				<TextBox id="24" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="card_expire_date" fieldSource="card_expire_date" required="False" caption="Card Expire Date" wizardCaption="Card Expire Date" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes">
					<Components/>
					<Events/>
				</TextBox>
				<TextBox id="39" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="image_url" fieldSource="image_url" required="False" caption="Image Url" wizardCaption="Image Url" wizardSize="50" wizardMaxLength="64" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes">
					<Components/>
					<Events/>
				</TextBox>
				<TextArea id="22" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="notes" fieldSource="notes" required="False" caption="Notes" wizardCaption="Notes" wizardSize="50" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardRows="3" visible="Yes">
					<Components/>
					<Events/>
				</TextArea>
				<Button id="45" urlType="Relative" enableValidation="True" isDefault="False" name="Button1" returnPage="MultiStepRegistration2.ccp" operation="Cancel">
					<Components/>
					<Events/>
				</Button>
				<Button id="4" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Update" wizardCaption="Add">
					<Components/>
					<Events/>
				</Button>
			</Components>
			<Events/>
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
		<IncludePage id="47" name="Footer" wizardTheme="None" wizardThemeType="File" wizardThemeVersion="3.0" page="../Footer.ccp">
<Components/>
<Events/>
</IncludePage>
</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="MultiStepRegistration3.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="MultiStepRegistration3.aspx"/>
		<CodeFile id="1" language="VB" name="MultiStepRegistration3.aspx.vb" comment="'" forShow="False"/>
		<CodeFile id="2" language="VB" name="MultiStepRegistration3DataProvider.vb" path="\components" comment="'" forShow="False"/>
		<CodeFile id="codeRecord1" language="CFMLTemplates" name="MultiStepRegistration3_users.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codePage" language="CFMLTemplates" name="MultiStepRegistration3.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="True" url="MultiStepRegistration3.cfm"/>
		<CodeFile id="codeRecord1" language="CFML" name="MultiStepRegistration3_users.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codePage" language="CFML" name="MultiStepRegistration3.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="True" url="MultiStepRegistration3.cfm"/>
		<CodeFile id="Model" language="JSP" name="MultiStepRegistration3.xml" path="." comment="&lt;!--" commentEnd="--&gt;" forShow="False"/>
		<CodeFile id="JSP" language="JSP" name="MultiStepRegistration3.jsp" path="." comment="&lt;%--" commentEnd="--%&gt;" forShow="True" url="MultiStepRegistration3.jsp"/>
		<CodeFile id="Handlers" language="JSP" name="MultiStepRegistration3Handlers.jsp" path="." comment="//" forShow="False"/>
		<CodeFile id="Code" language="PHPTemplates" name="MultiStepRegistration3.php" comment="//" forShow="True" url="MultiStepRegistration3.php"/>
		<CodeFile id="Code" language="PerlTemplates" name="MultiStepRegistration3.cgi" comment="#" forShow="True" url="MultiStepRegistration3.cgi"/>
		<CodeFile id="usersDataObject3" language="ServletTemplates" name="usersDataObject.java" path="..\CCSBuild\src\MultiStepRegistration\MultiStepRegistration3\" comment="//" forShow="False"/>
		<CodeFile id="usersRow3" language="ServletTemplates" name="usersRow.java" path="..\CCSBuild\src\MultiStepRegistration\MultiStepRegistration3\" comment="//" forShow="False"/>
		<CodeFile id="Action" language="ServletTemplates" name="MultiStepRegistration3Action.java" path="..\CCSBuild\src\MultiStepRegistration\MultiStepRegistration3\" comment="//" forShow="True" url="MultiStepRegistration3.do"/>
		<CodeFile id="Model" language="ServletTemplates" name="MultiStepRegistration3Model.java" path="..\CCSBuild\src\MultiStepRegistration\MultiStepRegistration3\" comment="//" forShow="False"/>
		<CodeFile id="View" language="ServletTemplates" name="MultiStepRegistration3View.java" path="..\CCSBuild\src\MultiStepRegistration\MultiStepRegistration3\" comment="//" forShow="False"/>
		<CodeFile id="3" language="C#" name="MultiStepRegistration3.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="MultiStepRegistration3.aspx"/>
		<CodeFile id="1" language="C#" name="MultiStepRegistration3.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="2" language="C#" name="MultiStepRegistration3DataProvider.cs" path="\components" comment="//" forShow="False"/>
		<CodeFile id="Code" language="ASPTemplates" name="MultiStepRegistration3.asp" comment="'" forShow="True" url="MultiStepRegistration3.asp"/>
	</CodeFiles>
	<SecurityGroups/>
	<Events/>
	<CachingParameters/>
</Page>
