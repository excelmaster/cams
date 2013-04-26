<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\MultiStepRegistration" secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="EXPack" wizardThemeVersion="3.0">
	<Components>
		<IncludePage id="32" hasOperation="True" name="Header" page="../Header.ccp">
			<Components/>
			<Events/>
		</IncludePage>
		<Record id="3" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" debugMode="False" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="users" errorSummator="Error" wizardCaption="Add/Edit Users " wizardFormMethod="post" connection="InternetDB" dataSource="users" returnPage="MultiStepRegistration3.ccp">
			<Components>
				<TextBox id="29" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="address1" fieldSource="address1" required="False" caption="Address1" wizardCaption="Address1" wizardSize="50" wizardMaxLength="250" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes">
					<Components/>
					<Events/>
				</TextBox>
				<TextBox id="30" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="address2" fieldSource="address2" required="False" caption="Address2" wizardCaption="Address2" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes">
					<Components/>
					<Events/>
				</TextBox>
				<TextBox id="31" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="address3" fieldSource="address3" required="False" caption="Address3" wizardCaption="Address3" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes">
					<Components/>
					<Events/>
				</TextBox>
				<TextBox id="27" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="city" fieldSource="city" required="False" caption="City" wizardCaption="City" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes">
					<Components/>
					<Events/>
				</TextBox>
				<ListBox id="26" fieldSourceType="DBColumn" dataType="Integer" html="False" editable="True" hasErrorCollection="True" name="state_id" fieldSource="state_id" required="False" caption="State Id" wizardCaption="State Id" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" sourceType="Table" connection="InternetDB" dataSource="states" boundColumn="state_id" textColumn="state_name" orderBy="state_name" visible="Yes">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
				</ListBox>
				<TextBox id="28" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="zip" fieldSource="zip" required="False" caption="Zip" wizardCaption="Zip" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes">
					<Components/>
					<Events/>
				</TextBox>
				<ListBox id="25" fieldSourceType="DBColumn" dataType="Integer" html="False" editable="True" hasErrorCollection="True" name="country_id" fieldSource="country_id" required="False" caption="Country Id" wizardCaption="Country Id" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" sourceType="Table" connection="InternetDB" dataSource="countries" boundColumn="country_id" textColumn="country_name" orderBy="country_name" visible="Yes">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
				</ListBox>
				<TextBox id="16" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="phone_work" fieldSource="phone_work" required="False" caption="Phone Work" wizardCaption="Phone Work" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes">
					<Components/>
					<Events/>
				</TextBox>
				<TextBox id="15" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="phone_home" fieldSource="phone_home" required="False" caption="Phone Home" wizardCaption="Phone Home" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes">
					<Components/>
					<Events/>
				</TextBox>
				<TextBox id="17" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="phone_day" fieldSource="phone_day" required="False" caption="Phone Day" wizardCaption="Phone Day" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes">
					<Components/>
					<Events/>
				</TextBox>
				<TextBox id="19" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="phone_evening" fieldSource="phone_evening" required="False" caption="Phone Evening" wizardCaption="Phone Evening" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes">
					<Components/>
					<Events/>
				</TextBox>
				<TextBox id="18" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="phone_cell" fieldSource="phone_cell" required="False" caption="Phone Cell" wizardCaption="Phone Cell" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes">
					<Components/>
					<Events/>
				</TextBox>
				<TextBox id="20" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="fax" fieldSource="fax" required="False" caption="Fax" wizardCaption="Fax" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes">
					<Components/>
					<Events/>
				</TextBox>
				<Button id="4" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" wizardCaption="Add" returnPage="MultiStepRegistration1.ccp" operation="Cancel">
					<Components/>
					<Events/>
				</Button>
				<Button id="5" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" wizardCaption="Submit" operation="Update">
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
		<IncludePage id="33" name="Footer" wizardTheme="None" wizardThemeType="File" wizardThemeVersion="3.0" page="../Footer.ccp">
<Components/>
<Events/>
</IncludePage>
</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="MultiStepRegistration2.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="MultiStepRegistration2.aspx"/>
		<CodeFile id="1" language="VB" name="MultiStepRegistration2.aspx.vb" comment="'" forShow="False"/>
		<CodeFile id="2" language="VB" name="MultiStepRegistration2DataProvider.vb" path="\components" comment="'" forShow="False"/>
		<CodeFile id="codeRecord1" language="CFMLTemplates" name="MultiStepRegistration2_users.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codePage" language="CFMLTemplates" name="MultiStepRegistration2.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="True" url="MultiStepRegistration2.cfm"/>
		<CodeFile id="codeRecord1" language="CFML" name="MultiStepRegistration2_users.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codePage" language="CFML" name="MultiStepRegistration2.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="True" url="MultiStepRegistration2.cfm"/>
		<CodeFile id="Model" language="JSP" name="MultiStepRegistration2.xml" path="." comment="&lt;!--" commentEnd="--&gt;" forShow="False"/>
		<CodeFile id="JSP" language="JSP" name="MultiStepRegistration2.jsp" path="." comment="&lt;%--" commentEnd="--%&gt;" forShow="True" url="MultiStepRegistration2.jsp"/>
		<CodeFile id="Handlers" language="JSP" name="MultiStepRegistration2Handlers.jsp" path="." comment="//" forShow="False"/>
		<CodeFile id="Code" language="PHPTemplates" name="MultiStepRegistration2.php" comment="//" forShow="True" url="MultiStepRegistration2.php"/>
		<CodeFile id="Code" language="PerlTemplates" name="MultiStepRegistration2.cgi" comment="#" forShow="True" url="MultiStepRegistration2.cgi"/>
		<CodeFile id="usersDataObject3" language="ServletTemplates" name="usersDataObject.java" path="..\CCSBuild\src\MultiStepRegistration\MultiStepRegistration2\" comment="//" forShow="False"/>
		<CodeFile id="usersRow3" language="ServletTemplates" name="usersRow.java" path="..\CCSBuild\src\MultiStepRegistration\MultiStepRegistration2\" comment="//" forShow="False"/>
		<CodeFile id="Action" language="ServletTemplates" name="MultiStepRegistration2Action.java" path="..\CCSBuild\src\MultiStepRegistration\MultiStepRegistration2\" comment="//" forShow="True" url="MultiStepRegistration2.do"/>
		<CodeFile id="Model" language="ServletTemplates" name="MultiStepRegistration2Model.java" path="..\CCSBuild\src\MultiStepRegistration\MultiStepRegistration2\" comment="//" forShow="False"/>
		<CodeFile id="View" language="ServletTemplates" name="MultiStepRegistration2View.java" path="..\CCSBuild\src\MultiStepRegistration\MultiStepRegistration2\" comment="//" forShow="False"/>
		<CodeFile id="3" language="C#" name="MultiStepRegistration2.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="MultiStepRegistration2.aspx"/>
		<CodeFile id="1" language="C#" name="MultiStepRegistration2.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="2" language="C#" name="MultiStepRegistration2DataProvider.cs" path="\components" comment="//" forShow="False"/>
		<CodeFile id="Code" language="ASPTemplates" name="MultiStepRegistration2.asp" comment="'" forShow="True" url="MultiStepRegistration2.asp"/>
	</CodeFiles>
	<SecurityGroups/>
	<Events/>
	<CachingParameters/>
</Page>
