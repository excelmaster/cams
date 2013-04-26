<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\PopUpList" secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="EXPack" wizardThemeVersion="3.0">
	<Components>
		<IncludePage id="61" hasOperation="True" name="Header" page="../Header.ccp">
			<Components/>
			<Events/>
		</IncludePage>
		<Link id="25" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" editable="False" name="Link2" hrefSource="PopUpList_desc.ccp" visible="Yes">
			<Components/>
			<Events/>
			<LinkParameters/>
		</Link>
		<Grid id="3" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="10" connection="IntranetDB" dataSource="departments, employees" name="departments_emp" pageSizeLimit="100" wizardCaption="List of Departments, Employees " wizardGridType="Tabular" wizardAllowInsert="False" wizardAltRecord="False" wizardRecordSeparator="False" orderBy="departments.department_id" wizardUsePageScroller="True">
			<Components>
				<Link id="9" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="department_name" fieldSource="department_name" wizardCaption="Department Name" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" hrefType="Page" urlType="Relative" preserveParameters="GET" hrefSource="PopUpList.ccp" visible="Yes">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="16" sourceType="DataField" name="department_id" source="departments_department_id"/>
					</LinkParameters>
				</Link>
				<Label id="10" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="emp_name" fieldSource="emp_name" wizardCaption="Emp Name" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
				</Label>
				<Link id="22" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" editable="False" name="Add" hrefSource="PopUpList.ccp" removeParameters="department_id" visible="Yes">
					<Components/>
					<Events/>
					<LinkParameters/>
				</Link>
				<Navigator id="63" type="Simple" name="Navigator1" wizardPagingType="Custom" wizardPageNumbers="Simple" wizardTotalPages="True" wizardImages="False" wizardHideDisabled="False" wizardFirst="True" wizardPrev="True" wizardNext="True" wizardLast="True" wizardFirstText="First" wizardPrevText="Prev" wizardNextText="Next" wizardLastText="Last" wizardOfText="of" wizardImagesScheme="Aqua" size="10">
					<Components/>
					<Events/>
				</Navigator>
			</Components>
			<Events/>
			<TableParameters/>
			<JoinTables>
				<JoinTable id="55" tableName="departments" posWidth="258" posHeight="99" posLeft="10" posTop="10"/>
				<JoinTable id="58" tableName="employees" posWidth="124" posHeight="207" posLeft="333" posTop="14"/>
			</JoinTables>
			<JoinLinks>
				<JoinTable2 id="60" fieldLeft="departments.department_manager_id" fieldRight="employees.emp_id" tableLeft="departments" tableRight="employees" joinType="left"/>
			</JoinLinks>
			<Fields>
				<Field id="56" tableName="departments" alias="departments_department_id" fieldName="departments.department_id"/>
				<Field id="57" tableName="departments" fieldName="department_name"/>
				<Field id="59" tableName="employees" fieldName="emp_name"/>
			</Fields>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
		</Grid>
		<Record id="11" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="GET" debugMode="False" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="IntranetDB" name="departments" dataSource="departments" errorSummator="Error" wizardCaption="Add/Edit Departments " wizardFormMethod="post" returnPage="PopUpList.ccp" removeParameters="department_id" activeCollection="TableParameters" activeTableType="dataSource">
			<Components>
				<TextBox id="14" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="department_name" fieldSource="department_name" required="True" caption="Department" wizardCaption=" Name" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes">
					<Components/>
					<Events/>
				</TextBox>
				<TextBox id="15" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="department_manager_id" fieldSource="department_manager_id" required="False" caption=" Manager_id" wizardCaption=" Manager_id" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes">
					<Components/>
					<Events>
						<Event name="OnChange" type="Client">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="64"/>
							</Actions>
						</Event>
					</Events>
				</TextBox>
				<Link id="62" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" editable="False" name="Link1" hrefSource="PopUpList_Window.ccp" visible="Yes">
					<Components/>
					<Events/>
					<LinkParameters/>
				</Link>
				<Hidden id="18" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="is_change" visible="Yes">
					<Components/>
					<Events/>
				</Hidden>
				<Button id="20" urlType="Relative" enableValidation="True" isDefault="False" name="Insert_Button" operation="Insert">
					<Components/>
					<Events/>
				</Button>
				<Button id="12" urlType="Relative" enableValidation="True" isDefault="False" name="Update_Button" operation="Update" wizardCaption="Submit">
					<Components/>
					<Events/>
				</Button>
				<Button id="23" urlType="Relative" enableValidation="True" isDefault="False" name="Delete_Button" operation="Delete">
					<Components/>
					<Events/>
				</Button>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="17"/>
					</Actions>
				</Event>
				<Event name="OnValidate" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="19"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="13" conditionType="Parameter" field="department_id" parameterSource="department_id" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1" useIsNull="False"/>
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
		<IncludePage id="65" name="Footer" wizardTheme="None" wizardThemeType="File" wizardThemeVersion="3.0" page="../Footer.ccp">
<Components/>
<Events/>
</IncludePage>
</Components>
	<CodeFiles>
		<CodeFile id="Events" language="ASPTemplates" forShow="False" name="PopUpList_events.asp" comment="'"/>
		<CodeFile id="1" language="C#" name="PopUpList.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="2" language="C#" name="PopUpListDataProvider.cs" path="\components" comment="//" forShow="False"/>
		<CodeFile id="3" language="VB" name="PopUpList.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="PopUpList.aspx"/>
		<CodeFile id="1" language="VB" name="PopUpList.aspx.vb" comment="'" forShow="False"/>
		<CodeFile id="2" language="VB" name="PopUpListDataProvider.vb" path="\components" comment="'" forShow="False"/>
		<CodeFile id="codeRecord1" language="CFMLTemplates" name="PopUpList_departments.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codeGrid1" language="CFMLTemplates" name="PopUpList_departments_emp.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codePage" language="CFMLTemplates" name="PopUpList.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="True" url="PopUpList.cfm"/>
		<CodeFile id="codeRecord1" language="CFML" name="PopUpList_departments.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="Handlers" language="JSP" name="PopUpListHandlers.jsp" path="." comment="//" forShow="False"/>
		<CodeFile id="Events" language="PHPTemplates" name="PopUpList_events.php" comment="//" forShow="False"/>
		<CodeFile id="Events" language="PerlTemplates" name="PopUpList_events.pl" comment="#" forShow="False"/>
		<CodeFile id="departments_empDataObject3" language="ServletTemplates" name="departments_empDataObject.java" path="..\CCSBuild\src\PopUpList\PopUpList\" comment="//" forShow="False"/>
		<CodeFile id="departmentsDataObject11" language="ServletTemplates" name="departmentsDataObject.java" path="..\CCSBuild\src\PopUpList\PopUpList\" comment="//" forShow="False"/>
		<CodeFile id="departments_empRow3" language="ServletTemplates" name="departments_empRow.java" path="..\CCSBuild\src\PopUpList\PopUpList\" comment="//" forShow="False"/>
		<CodeFile id="departmentsRow11" language="ServletTemplates" name="departmentsRow.java" path="..\CCSBuild\src\PopUpList\PopUpList\" comment="//" forShow="False"/>
		<CodeFile id="Action" language="ServletTemplates" name="PopUpListAction.java" path="..\CCSBuild\src\PopUpList\PopUpList\" comment="//" forShow="True" url="PopUpList.do"/>
		<CodeFile id="Model" language="ServletTemplates" name="PopUpListModel.java" path="..\CCSBuild\src\PopUpList\PopUpList\" comment="//" forShow="False"/>
		<CodeFile id="View" language="ServletTemplates" name="PopUpListView.java" path="..\CCSBuild\src\PopUpList\PopUpList\" comment="//" forShow="False"/>
		<CodeFile id="departmentsRecordEventHandler" language="ServletTemplates" name="departmentsRecordHandler.java" path="..\CCSBuild\src\PopUpList\PopUpList\" comment="//" forShow="False"/>
		<CodeFile id="Code" language="PHPTemplates" forShow="True" url="PopUpList.php" name="PopUpList.php" comment="//"/>
		<CodeFile id="Code" language="PerlTemplates" forShow="True" url="PopUpList.cgi" name="PopUpList.cgi" comment="#"/>
		<CodeFile id="codeGrid1" language="CFML" forShow="False" name="PopUpList_departments_emp.cfm" comment="&lt;!---" commentEnd="---&gt;"/>
		<CodeFile id="codePage" language="CFML" forShow="True" url="PopUpList.cfm" name="PopUpList.cfm" comment="&lt;!---" commentEnd="---&gt;"/>
		<CodeFile id="Model" language="JSP" forShow="False" name="PopUpList.xml" path="." comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="JSP" language="JSP" forShow="True" url="PopUpList.jsp" name="PopUpList.jsp" path="." comment="&lt;%--" commentEnd="--%&gt;"/>
		<CodeFile id="Code" language="ASPTemplates" forShow="True" url="PopUpList.asp" name="PopUpList.asp" comment="'"/>
		<CodeFile id="3" language="C#" forShow="True" url="PopUpList.aspx" name="PopUpList.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1" language="C#InMotion" name="PopUpList.aspx" forShow="True" url="PopUpList.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.cs" language="C#InMotion" name="PopUpListEvents.aspx.cs" forShow="True" url="PopUpListEvents.aspx.cs" comment="//"/>
		<CodeFile id="1" language="VBInMotion" name="PopUpList.aspx" forShow="True" url="PopUpList.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.vb" language="VBInMotion" name="PopUpListEvents.aspx.vb" forShow="True" url="PopUpListEvents.aspx.vb" comment="'"/>
	</CodeFiles>
	<SecurityGroups/>
	<Events/>
	<CachingParameters/>
</Page>
