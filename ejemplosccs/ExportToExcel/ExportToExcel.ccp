<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\ExportToExcel" secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" needGeneration="0" validateRequest="True" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="EXPack" wizardThemeVersion="3.0" isService="False" showSyncDlg="false">
	<Components>
		<IncludePage id="30" name="Header" wizardTheme="None" wizardThemeType="File" wizardThemeVersion="2.0" page="../Header.ccp">
			<Components/>
			<Events/>
			<Features/>
</IncludePage>
		<Link id="31" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" editable="False" name="Link1" wizardTheme="None" wizardThemeType="File" hrefSource="ExportToExcel_desc.ccp" wizardUseTemplateBlock="False" visible="Yes">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
<Features/>
</Link>
		<Link id="11" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" editable="False" name="ToExcelLink" wizardTheme="None" wizardThemeType="File" hrefSource="ExportToExcel.ccp" defaultValue="&quot;Export to Excel&quot;" visible="Yes">
			<Components/>
			<Events/>
			<LinkParameters>
				<LinkParameter id="12" sourceType="Expression" name="export" source="1"/>
			</LinkParameters>
			<Attributes/>
<Features/>
</Link>
		<Grid id="13" secured="False" sourceType="Table" returnValueType="Number" connection="IntranetDB" name="employees" dataSource="employees" orderBy="emp_name" wizardCaption="List of Departments, Employees " wizardTheme="None" wizardThemeType="File" wizardGridType="Tabular" wizardAllowInsert="False" wizardAltRecord="False" wizardRecordSeparator="False" defaultPageSize="10" pageSizeLimit="100">
			<Components>
				<Label id="19" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="emp_name" fieldSource="emp_name" wizardCaption="Emp Name" wizardTheme="None" wizardThemeType="File" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<Attributes/>
<Features/>
</Label>
				<Label id="20" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="title" fieldSource="title" wizardCaption="Title" wizardTheme="None" wizardThemeType="File" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<Attributes/>
<Features/>
</Label>
				<Label id="22" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="email" fieldSource="email" wizardCaption="Email" wizardTheme="None" wizardThemeType="File" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<Attributes/>
<Features/>
</Label>
				<Label id="23" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="phone_home" fieldSource="phone_home" wizardCaption="Phone Home" wizardTheme="None" wizardThemeType="File" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<Attributes/>
<Features/>
</Label>
				<Label id="24" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="phone_work" fieldSource="phone_work" wizardCaption="Phone Work" wizardTheme="None" wizardThemeType="File" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<Attributes/>
<Features/>
</Label>
				<Label id="21" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="address" fieldSource="address" wizardCaption="Department Name" wizardTheme="None" wizardThemeType="File" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<Attributes/>
<Features/>
</Label>
				<Navigator id="25" type="Simple" name="Navigator" wizardPagingType="TextButtons" wizardFirst="True" wizardFirstText="|&lt;" wizardPrev="True" wizardPrevText="&lt;&lt;" wizardNext="True" wizardNextText="&gt;&gt;" wizardLast="True" wizardLastText="&gt;|" wizardImages="False" wizardPageNumbers="Simple" wizardSize="10" wizardTotalPages="False" wizardHideDisabled="False" wizardOfText="of" wizardTheme="None" wizardThemeType="File" wizardImagesScheme="None" size="10" pageSizes="1;5;10;25;50">
					<Components/>
					<Events/>
					<Attributes/>
<Features/>
</Navigator>
			</Components>
			<Events>
				<Event name="BeforeSelect" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="26"/>
					</Actions>
				</Event>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="29"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters/>
			<JoinTables>
				<JoinTable id="27" tableName="employees" posWidth="169" posHeight="285" posLeft="57" posTop="1"/>
			</JoinTables>
			<JoinLinks>
			</JoinLinks>
			<Fields>
				<Field id="28" tableName="employees" fieldName="*"/>
			</Fields>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
			<PKFields/>
<Attributes/>
<Features/>
</Grid>
		<IncludePage id="32" name="Footer" wizardTheme="None" wizardThemeType="File" wizardThemeVersion="3.0" page="../Footer.ccp">
			<Components/>
			<Events/>
			<Features/>
</IncludePage>
		<Panel id="33" visible="True" name="HiddenPanel" wizardTheme="None" wizardThemeType="File" wizardThemeVersion="3.0" wizardInnerHTML="&lt;link rel=&quot;stylesheet&quot; type=&quot;text/css&quot; href=&quot;../Styles/EXPack/Style_doctype.css&quot;&gt;
&lt;!--[if IE 6]&gt;&lt;link rel=&quot;stylesheet&quot; type=&quot;text/css&quot; href=&quot;../Styles/EXPack/Style_ie6.css&quot;&gt;&lt;![endif]--&gt;
" PathID="HiddenPanel">
<Components/>
<Events>
<Event name="BeforeShow" type="Server">
<Actions>
<Action actionName="Hide-Show Component" actionCategory="General" id="34" action="Hide" conditionType="Parameter" dataType="Text" componentName="HiddenPanel" condition="Equal" sourceType1="URL" name1="export" sourceType2="Expression" name2="&quot;1&quot;"/>
</Actions>
</Event>
</Events>
<Attributes/>
<Features/>
</Panel>
</Components>
	<CodeFiles>
		<CodeFile id="Events" language="ASPTemplates" name="ExportToExcel_events.asp" comment="'" forShow="False"/>
		<CodeFile id="Code" language="ASPTemplates" name="ExportToExcel.asp" comment="'" forShow="True" url="ExportToExcel.asp"/>
		<CodeFile id="Events" language="PHPTemplates" name="ExportToExcel_events.php" comment="//" forShow="False"/>
		<CodeFile id="Code" language="PHPTemplates" name="ExportToExcel.php" comment="//" forShow="True" url="ExportToExcel.php"/>
		<CodeFile id="Events" language="PerlTemplates" name="ExportToExcel_events.pl" comment="#" forShow="False"/>
		<CodeFile id="Code" language="PerlTemplates" name="ExportToExcel.cgi" comment="#" forShow="True" url="ExportToExcel.cgi"/>
		<CodeFile id="codeGrid1" language="CFML" name="ExportToExcel_employees.cfm" comment="&lt;!---" commentEnd="---&gt;" codePage="iso-8859-1" forShow="False"/>
		<CodeFile id="codePage" language="CFML" name="ExportToExcel.cfm" comment="&lt;!---" commentEnd="---&gt;" codePage="iso-8859-1" forShow="True" url="ExportToExcel.cfm"/>
		<CodeFile id="codeGrid1" language="CFMLTemplates" name="ExportToExcel_employees.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codePage" language="CFMLTemplates" name="ExportToExcel.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="True" url="ExportToExcel.cfm"/>
		<CodeFile id="Model" language="JSP" name="ExportToExcel.xml" path="." comment="&lt;!--" commentEnd="--&gt;" forShow="False"/>
		<CodeFile id="JSP" language="JSP" name="ExportToExcel.jsp" path="." comment="&lt;%--" commentEnd="--%&gt;" codePage="iso-8859-1" forShow="True" url="ExportToExcel.jsp"/>
		<CodeFile id="Handlers" language="JSP" name="ExportToExcelHandlers.jsp" path="." comment="//" codePage="iso-8859-1" forShow="False"/>
		<CodeFile id="employeesDataObject13" language="ServletTemplates" name="employeesDataObject.java" path="..\CCSBuild\src\ExportToExcel\ExportToExcel\" comment="//" forShow="False"/>
		<CodeFile id="employeesRow13" language="ServletTemplates" name="employeesRow.java" path="..\CCSBuild\src\ExportToExcel\ExportToExcel\" comment="//" forShow="False"/>
		<CodeFile id="Action" language="ServletTemplates" name="ExportToExcelAction.java" path="..\CCSBuild\src\ExportToExcel\ExportToExcel\" comment="//" forShow="True" url="ExportToExcel.do"/>
		<CodeFile id="Model" language="ServletTemplates" name="ExportToExcelModel.java" path="..\CCSBuild\src\ExportToExcel\ExportToExcel\" comment="//" forShow="False"/>
		<CodeFile id="View" language="ServletTemplates" name="ExportToExcelView.java" path="..\CCSBuild\src\ExportToExcel\ExportToExcel\" comment="//" forShow="False"/>
		<CodeFile id="ExportToExcelPageEventHandler" language="ServletTemplates" name="ExportToExcelPageHandler.java" path="..\CCSBuild\src\ExportToExcel\ExportToExcel\" comment="//" forShow="False"/>
		<CodeFile id="employeesGridEventHandler" language="ServletTemplates" name="employeesGridHandler.java" path="..\CCSBuild\src\ExportToExcel\ExportToExcel\" comment="//" forShow="False"/>
		<CodeFile id="3" language="C#" name="ExportToExcel.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="ExportToExcel.aspx"/>
		<CodeFile id="1" language="C#" name="ExportToExcel.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="2" language="C#" name="ExportToExcelDataProvider.cs" path="\components" comment="//" forShow="False"/>
		<CodeFile id="3" language="VB" name="ExportToExcel.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="ExportToExcel.aspx"/>
		<CodeFile id="1" language="VB" name="ExportToExcel.aspx.vb" comment="'" forShow="False"/>
		<CodeFile id="2" language="VB" name="ExportToExcelDataProvider.vb" path="\components" comment="'" forShow="False"/>
		<CodeFile id="1" language="C#InMotion" name="ExportToExcel.aspx" forShow="True" url="ExportToExcel.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.cs" language="C#InMotion" name="ExportToExcelEvents.aspx.cs" forShow="True" url="ExportToExcelEvents.aspx.cs" comment="//"/>
		<CodeFile id="1" language="VBInMotion" name="ExportToExcel.aspx" forShow="True" url="ExportToExcel.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.vb" language="VBInMotion" name="ExportToExcelEvents.aspx.vb" forShow="True" url="ExportToExcelEvents.aspx.vb" comment="'"/>
	</CodeFiles>
	<SecurityGroups/>
	<Events>
		<Event name="OnInitializeView" type="Server">
			<Actions>
				<Action actionName="Custom Code" actionCategory="General" id="10"/>
			</Actions>
		</Event>
	</Events>
	<CachingParameters/>
	<Attributes/>
<Features/>
</Page>
