<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\ManyToManyCheckbox" secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="EXPack" wizardThemeVersion="3.0">
	<Components>
		<IncludePage id="40" hasOperation="True" name="Header" page="../Header.ccp">
			<Components/>
			<Events/>
		</IncludePage>
		<Link id="38" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" editable="False" name="Link1" hrefSource="ManyToManyCheckbox_desc.ccp" visible="Yes">
			<Components/>
			<Events/>
			<LinkParameters/>
		</Link>
		<Grid id="3" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="15" connection="IntranetDB" dataSource="employees" name="employees" orderBy="emp_name" pageSizeLimit="100" wizardCaption="List of Employees, Departments " wizardGridType="Tabular" wizardSortingType="Simple" wizardAllowInsert="False" wizardAltRecord="False" wizardRecordSeparator="False">
			<Components>
				<Sorter id="10" visible="True" name="Sorter_department_name" column="emp_id" wizardCaption="Department Name" wizardSortingType="Simple" wizardControl="department_name" connection="IntranetDB">
					<Components/>
					<Events/>
				</Sorter>
				<Sorter id="9" visible="True" name="Sorter_emp_name" column="emp_name, emp_id" wizardCaption="Emp Name" wizardSortingType="Simple" wizardControl="emp_name" connection="IntranetDB" columnReverse="emp_name desc, emp_id">
					<Components/>
					<Events/>
				</Sorter>
				<Label id="23" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="emp_id" fieldSource="emp_id">
					<Components/>
					<Events/>
				</Label>
				<Link id="11" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="emp_name" fieldSource="emp_name" wizardCaption="Emp Name" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" hrefType="Page" urlType="Relative" preserveParameters="GET" hrefSource="ManyToManyCheckbox.ccp" visible="Yes">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="24" sourceType="DataField" name="emp_id" source="emp_id"/>
					</LinkParameters>
				</Link>
				<Link id="25" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" editable="False" name="Link1" removeParameters="emp_id" hrefSource="ManyToManyCheckbox.ccp" visible="Yes">
					<Components/>
					<Events/>
					<LinkParameters/>
				</Link>
				<Navigator id="13" type="Centered" name="Navigator" size="10" wizardPagingType="Custom" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardImages="Images" wizardPageNumbers="Centered" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardUsePageScroller="True">
					<Components/>
					<Events/>
				</Navigator>
			</Components>
			<Events/>
			<TableParameters/>
			<JoinTables>
				<JoinTable id="21" tableName="employees" posWidth="100" posHeight="100" posLeft="10" posTop="10"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="22" tableName="employees" fieldName="*"/>
			</Fields>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
		</Grid>
		<Record id="14" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="GET" debugMode="False" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="IntranetDB" name="employees_record" dataSource="employees" errorSummator="Error" wizardCaption="Add/Edit Employees " wizardFormMethod="post" returnPage="ManyToManyCheckbox.ccp" removeParameters="emp_id">
			<Components>
				<TextBox id="20" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="emp_name" fieldSource="emp_name" required="True" caption="Emp Name" wizardCaption="Emp Name" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes">
					<Components/>
					<Events/>
				</TextBox>
				<CheckBoxList id="26" fieldSourceType="CodeExpression" sourceType="Table" dataType="Integer" html="True" editable="True" returnValueType="Number" name="ProjectList" connection="IntranetDB" dataSource="projects" boundColumn="project_id" textColumn="project_name" orderBy="project_id">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
				</CheckBoxList>
				<Button id="15" urlType="Relative" enableValidation="True" isDefault="False" name="Insert1" operation="Insert" wizardCaption="Add">
					<Components/>
					<Events/>
				</Button>
				<Button id="16" urlType="Relative" enableValidation="True" isDefault="False" name="Update1" operation="Update" wizardCaption="Submit">
					<Components/>
					<Events/>
				</Button>
				<Button id="17" urlType="Relative" enableValidation="False" isDefault="False" name="Delete1" operation="Delete" wizardCaption="Delete">
					<Components/>
					<Events/>
				</Button>
				<Button id="18" urlType="Relative" enableValidation="False" isDefault="False" name="Cancel" operation="Cancel" wizardCaption="Cancel">
					<Components/>
					<Events/>
				</Button>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="34"/>
					</Actions>
				</Event>
				<Event name="AfterInsert" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="35"/>
					</Actions>
				</Event>
				<Event name="AfterUpdate" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="36"/>
					</Actions>
				</Event>
				<Event name="BeforeDelete" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="39"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="19" conditionType="Parameter" field="emp_id" parameterSource="emp_id" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1" useIsNull="False"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="32" tableName="employees" posWidth="100" posHeight="100" posLeft="10" posTop="10"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="33" tableName="employees" fieldName="*"/>
			</Fields>
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
		<IncludePage id="41" name="Footer" wizardTheme="None" wizardThemeType="File" wizardThemeVersion="3.0" page="../Footer.ccp">
<Components/>
<Events/>
</IncludePage>
</Components>
	<CodeFiles>
		<CodeFile id="Events" language="ASPTemplates" forShow="False" name="ManyToManyCheckbox_events.asp" comment="'"/>
		<CodeFile id="1" language="C#" name="ManyToManyCheckbox.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="3" language="VB" name="ManyToManyCheckbox.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="ManyToManyCheckbox.aspx"/>
		<CodeFile id="1" language="VB" name="ManyToManyCheckbox.aspx.vb" comment="'" forShow="False"/>
		<CodeFile id="2" language="VB" name="ManyToManyCheckboxDataProvider.vb" path="\components" comment="'" forShow="False"/>
		<CodeFile id="codeRecord1" language="CFMLTemplates" name="ManyToManyCheckbox_employees_record.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codeGrid1" language="CFMLTemplates" name="ManyToManyCheckbox_employees.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codePage" language="CFMLTemplates" name="ManyToManyCheckbox.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="True" url="ManyToManyCheckbox.cfm"/>
		<CodeFile id="codeRecord1" language="CFML" name="ManyToManyCheckbox_employees_record.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="Handlers" language="JSP" name="ManyToManyCheckboxHandlers.jsp" path="." comment="//" forShow="False"/>
		<CodeFile id="Events" language="PHPTemplates" name="ManyToManyCheckbox_events.php" comment="//" forShow="False"/>
		<CodeFile id="Events" language="PerlTemplates" name="ManyToManyCheckbox_events.pl" comment="#" forShow="False"/>
		<CodeFile id="employeesDataObject3" language="ServletTemplates" name="employeesDataObject.java" path="..\CCSBuild\src\ManyToManyCheckbox\ManyToManyCheckbox\" comment="//" forShow="False"/>
		<CodeFile id="employees_recordDataObject14" language="ServletTemplates" name="employees_recordDataObject.java" path="..\CCSBuild\src\ManyToManyCheckbox\ManyToManyCheckbox\" comment="//" forShow="False"/>
		<CodeFile id="employeesRow3" language="ServletTemplates" name="employeesRow.java" path="..\CCSBuild\src\ManyToManyCheckbox\ManyToManyCheckbox\" comment="//" forShow="False"/>
		<CodeFile id="employees_recordRow14" language="ServletTemplates" name="employees_recordRow.java" path="..\CCSBuild\src\ManyToManyCheckbox\ManyToManyCheckbox\" comment="//" forShow="False"/>
		<CodeFile id="Action" language="ServletTemplates" name="ManyToManyCheckboxAction.java" path="..\CCSBuild\src\ManyToManyCheckbox\ManyToManyCheckbox\" comment="//" forShow="True" url="ManyToManyCheckbox.do"/>
		<CodeFile id="Model" language="ServletTemplates" name="ManyToManyCheckboxModel.java" path="..\CCSBuild\src\ManyToManyCheckbox\ManyToManyCheckbox\" comment="//" forShow="False"/>
		<CodeFile id="View" language="ServletTemplates" name="ManyToManyCheckboxView.java" path="..\CCSBuild\src\ManyToManyCheckbox\ManyToManyCheckbox\" comment="//" forShow="False"/>
		<CodeFile id="employees_recordRecordEventHandler" language="ServletTemplates" name="employees_recordRecordHandler.java" path="..\CCSBuild\src\ManyToManyCheckbox\ManyToManyCheckbox\" comment="//" forShow="False"/>
		<CodeFile id="Code" language="PHPTemplates" forShow="True" url="ManyToManyCheckbox.php" name="ManyToManyCheckbox.php" comment="//"/>
		<CodeFile id="Code" language="PerlTemplates" forShow="True" url="ManyToManyCheckbox.cgi" name="ManyToManyCheckbox.cgi" comment="#"/>
		<CodeFile id="codeGrid1" language="CFML" forShow="False" name="ManyToManyCheckbox_employees.cfm" comment="&lt;!---" commentEnd="---&gt;"/>
		<CodeFile id="codePage" language="CFML" forShow="True" url="ManyToManyCheckbox.cfm" name="ManyToManyCheckbox.cfm" comment="&lt;!---" commentEnd="---&gt;"/>
		<CodeFile id="Model" language="JSP" forShow="False" name="ManyToManyCheckbox.xml" path="." comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="JSP" language="JSP" forShow="True" url="ManyToManyCheckbox.jsp" name="ManyToManyCheckbox.jsp" path="." comment="&lt;%--" commentEnd="--%&gt;"/>
		<CodeFile id="3" language="C#" forShow="True" url="ManyToManyCheckbox.aspx" name="ManyToManyCheckbox.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="2" language="C#" forShow="False" name="ManyToManyCheckboxDataProvider.cs" path="\components" comment="//"/>
		<CodeFile id="Code" language="ASPTemplates" forShow="True" url="ManyToManyCheckbox.asp" name="ManyToManyCheckbox.asp" comment="'"/>
		<CodeFile id="1" language="C#InMotion" name="ManyToManyCheckbox.aspx" forShow="True" url="ManyToManyCheckbox.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.cs" language="C#InMotion" name="ManyToManyCheckboxEvents.aspx.cs" forShow="True" url="ManyToManyCheckboxEvents.aspx.cs" comment="//"/>
		<CodeFile id="1" language="VBInMotion" name="ManyToManyCheckbox.aspx" forShow="True" url="ManyToManyCheckbox.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.vb" language="VBInMotion" name="ManyToManyCheckboxEvents.aspx.vb" forShow="True" url="ManyToManyCheckboxEvents.aspx.vb" comment="'"/>
	</CodeFiles>
	<SecurityGroups/>
	<Events/>
	<CachingParameters/>
</Page>
