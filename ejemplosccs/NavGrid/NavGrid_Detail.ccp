<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\NavGrid" secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="EXPack" wizardThemeVersion="3.0">
	<Components>
		<IncludePage id="34" hasOperation="True" name="Header" page="../Header.ccp">
			<Components/>
			<Events/>
		</IncludePage>
		<Grid id="2" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="1" connection="IntranetDB" dataSource="employees, departments" name="employees" pageSizeLimit="100" wizardCaption="List of Employees, Departments " wizardGridType="Tabular" wizardAllowInsert="False" wizardAltRecord="False" wizardRecordSeparator="False" wizardUsePageScroller="True" orderBy="emp_name" wizardAllowSorting="True" activeCollection="TableParameters" activeTableType="dataSource">
			<Components>
				<Sorter id="25" visible="False" name="Sorter_emp_name" column="emp_name, emp_id" wizardCaption="Emp Name" wizardSortingType="Simple" wizardControl="emp_name" connection="IntranetDB" columnReverse="emp_name desc, emp_id">
					<Components/>
					<Events/>
				</Sorter>
				<Sorter id="26" visible="False" name="Sorter_title" column="title, emp_id" wizardCaption="Title" wizardSortingType="Simple" wizardControl="title" connection="IntranetDB" columnReverse="title desc, emp_id">
					<Components/>
					<Events/>
				</Sorter>
				<Sorter id="27" visible="False" name="Sorter_department_name" column="department_name, emp_id" wizardCaption="Department Name" wizardSortingType="Simple" wizardControl="department_name" connection="IntranetDB" columnReverse="department_name desc, emp_id">
					<Components/>
					<Events/>
				</Sorter>
				<Label id="9" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="emp_name" fieldSource="emp_name" wizardCaption="Emp Name" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
				</Label>
				<Label id="8" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="emp_login" fieldSource="emp_login" wizardCaption="Emp Login" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
				</Label>
				<Label id="20" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="department_name" fieldSource="department_name" wizardCaption="Department Name" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
				</Label>
				<Label id="10" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="title" fieldSource="title" wizardCaption="Title" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
				</Label>
				<Label id="12" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="phone_work" fieldSource="phone_work" wizardCaption="Phone Work" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
				</Label>
				<Label id="14" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="fax" fieldSource="fax" wizardCaption="Fax" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
				</Label>
				<Label id="15" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="email" fieldSource="email" wizardCaption="Email" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
				</Label>
				<Label id="18" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="address" fieldSource="address" wizardCaption="Address" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
				</Label>
				<Label id="16" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="city" fieldSource="city" wizardCaption="City" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
				</Label>
				<Label id="17" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="zip" fieldSource="zip" wizardCaption="Zip" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
				</Label>
				<Label id="11" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="phone_home" fieldSource="phone_home" wizardCaption="Phone Home" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
				</Label>
				<Label id="13" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="phone_cell" fieldSource="phone_cell" wizardCaption="Phone Cell" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
				</Label>
				<Image id="19" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="picture" fieldSource="picture" wizardCaption="Picture" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes">
					<Components/>
					<Events/>
				</Image>
				<Navigator id="33" type="Simple" name="Navigator1" wizardPagingType="Custom" wizardPageNumbers="Simple" wizardTotalPages="True" wizardImages="Images" wizardHideDisabled="False" wizardFirst="True" wizardPrev="True" wizardNext="True" wizardLast="True" wizardFirstText="First" wizardPrevText="Prev" wizardNextText="Next" wizardLastText="Last" wizardOfText="of" size="10" wizardUsePageScroller="True">
					<Components/>
					<Events/>
				</Navigator>
			</Components>
			<Events>
			</Events>
			<TableParameters>
				<TableParameter id="31" conditionType="Parameter" field="emp_name" dataType="Text" searchConditionType="Contains" parameterType="URL" logicOperator="And" useIsNull="False" parameterSource="s_emp_name" orderNumber="1"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="3" tableName="employees" posWidth="100" posHeight="100" posLeft="10" posTop="10"/>
				<JoinTable id="5" tableName="departments" posWidth="100" posHeight="100" posLeft="192" posTop="18"/>
			</JoinTables>
			<JoinLinks>
				<JoinTable2 id="7" fieldLeft="departments.department_id" fieldRight="employees.department_id" tableLeft="departments" tableRight="employees" conditionType="Equal" joinType="inner"/>
			</JoinLinks>
			<Fields>
				<Field id="4" tableName="employees" fieldName="employees.*"/>
				<Field id="6" tableName="departments" fieldName="departments.*"/>
			</Fields>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
		</Grid>
		<Link id="23" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" editable="False" name="BackLink" hrefSource="NavGrid.ccp" removeParameters="empBackPage" visible="Yes">
			<Components/>
			<Events>
			</Events>
			<LinkParameters>
				<LinkParameter id="35" sourceType="URL" name="employeesPage" source="empBackPage"/>
			</LinkParameters>
		</Link>
		<IncludePage id="36" name="Footer" wizardTheme="None" wizardThemeType="File" wizardThemeVersion="3.0" page="../Footer.ccp">
<Components/>
<Events/>
</IncludePage>
</Components>
	<CodeFiles>
		<CodeFile id="3" language="C#" name="NavGrid_Detail.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="NavGrid_Detail.aspx"/>
		<CodeFile id="1" language="C#" name="NavGrid_Detail.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="2" language="C#" name="NavGrid_DetailDataProvider.cs" path="\components" comment="//" forShow="False"/>
		<CodeFile id="3" language="VB" name="NavGrid_Detail.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="NavGrid_Detail.aspx"/>
		<CodeFile id="1" language="VB" name="NavGrid_Detail.aspx.vb" comment="'" forShow="False"/>
		<CodeFile id="2" language="VB" name="NavGrid_DetailDataProvider.vb" path="\components" comment="'" forShow="False"/>
		<CodeFile id="codeGrid1" language="CFMLTemplates" name="NavGrid_Detail_employees.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codePage" language="CFMLTemplates" name="NavGrid_Detail.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="True" url="NavGrid_Detail.cfm"/>
		<CodeFile id="codeGrid1" language="CFML" name="NavGrid_Detail_employees.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codePage" language="CFML" name="NavGrid_Detail.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="True" url="NavGrid_Detail.cfm"/>
		<CodeFile id="Model" language="JSP" name="NavGrid_Detail.xml" path="." comment="&lt;!--" commentEnd="--&gt;" forShow="False"/>
		<CodeFile id="JSP" language="JSP" name="NavGrid_Detail.jsp" path="." comment="&lt;%--" commentEnd="--%&gt;" forShow="True" url="NavGrid_Detail.jsp"/>
		<CodeFile id="Handlers" language="JSP" name="NavGrid_DetailHandlers.jsp" path="." comment="//" forShow="False"/>
		<CodeFile id="Events" language="PHPTemplates" name="NavGrid_Detail_events.php" comment="//" forShow="False"/>
		<CodeFile id="Code" language="PHPTemplates" name="NavGrid_Detail.php" comment="//" forShow="True" url="NavGrid_Detail.php"/>
		<CodeFile id="employeesDataObject2" language="ServletTemplates" name="employeesDataObject.java" path="..\CCSBuild\src\NavGrid\NavGrid_Detail\" comment="//" forShow="False"/>
		<CodeFile id="employeesRow2" language="ServletTemplates" name="employeesRow.java" path="..\CCSBuild\src\NavGrid\NavGrid_Detail\" comment="//" forShow="False"/>
		<CodeFile id="Action" language="ServletTemplates" name="NavGrid_DetailAction.java" path="..\CCSBuild\src\NavGrid\NavGrid_Detail\" comment="//" forShow="True" url="NavGrid_Detail.do"/>
		<CodeFile id="Model" language="ServletTemplates" name="NavGrid_DetailModel.java" path="..\CCSBuild\src\NavGrid\NavGrid_Detail\" comment="//" forShow="False"/>
		<CodeFile id="View" language="ServletTemplates" name="NavGrid_DetailView.java" path="..\CCSBuild\src\NavGrid\NavGrid_Detail\" comment="//" forShow="False"/>
		<CodeFile id="NavGrid_DetailBackLinkEventHandler" language="ServletTemplates" name="NavGrid_DetailBackLinkHandler.java" path="..\CCSBuild\src\NavGrid\NavGrid_Detail\" comment="//" forShow="False"/>
		<CodeFile id="Code" language="ASPTemplates" name="NavGrid_Detail.asp" comment="'" forShow="True" url="NavGrid_Detail.asp"/>
		<CodeFile id="Code" language="PerlTemplates" name="NavGrid_Detail.cgi" comment="#" forShow="True" url="NavGrid_Detail.cgi"/>
	</CodeFiles>
	<SecurityGroups/>
	<Events/>
	<CachingParameters/>
</Page>
