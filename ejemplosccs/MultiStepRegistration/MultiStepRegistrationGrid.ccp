<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\MultiStepRegistration" secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="EXPack" wizardThemeVersion="3.0">
	<Components>
		<IncludePage id="18" hasOperation="True" name="Header" page="../Header.ccp">
			<Components/>
			<Events/>
		</IncludePage>
		<Link id="20" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" editable="False" name="Link2" hrefSource="MultiStepRegistration_desc.ccp" visible="Yes">
			<Components/>
			<Events/>
			<LinkParameters/>
		</Link>
		<Grid id="3" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="10" name="users" connection="InternetDB" dataSource="users" orderBy="user_id" pageSizeLimit="100" wizardCaption="List of Users " wizardGridType="Tabular" wizardSortingType="Simple" wizardAllowInsert="False" wizardAltRecord="False" wizardRecordSeparator="False" wizardAllowSorting="True">
			<Components>
				<Sorter id="4" visible="True" name="Sorter_user_login" column="user_login" wizardCaption=" Login" wizardSortingType="Simple" wizardControl="user_login">
					<Components/>
					<Events/>
				</Sorter>
				<Sorter id="5" visible="True" name="Sorter_first_name" column="first_name, user_id" wizardCaption="First Name" wizardSortingType="Simple" wizardControl="first_name" connection="InternetDB" columnReverse="first_name desc, user_id">
					<Components/>
					<Events/>
				</Sorter>
				<Sorter id="6" visible="True" name="Sorter_last_name" column="last_name, user_id" wizardCaption="Last Name" wizardSortingType="Simple" wizardControl="last_name" connection="InternetDB" columnReverse="last_name desc, user_id">
					<Components/>
					<Events/>
				</Sorter>
				<Sorter id="7" visible="True" name="Sorter_phone_home" column="phone_home, user_id" wizardCaption="Phone Home" wizardSortingType="Simple" wizardControl="phone_home" connection="InternetDB" columnReverse="phone_home desc, user_id">
					<Components/>
					<Events/>
				</Sorter>
				<Sorter id="15" visible="True" name="Sort_Email" wizardSortingType="Simple" connection="InternetDB" column="email, user_id" columnReverse="email desc, user_id">
					<Components/>
					<Events/>
				</Sorter>
				<Link id="8" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="user_login" fieldSource="user_login" wizardCaption=" Login" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" hrefType="Page" urlType="Relative" preserveParameters="GET" hrefSource="MultiStepRegistration1.ccp" sourceType="Table" hasErrorCollection="True" visible="Yes">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="13" sourceType="DataField" name="user_id" source="user_id"/>
					</LinkParameters>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
				</Link>
				<Label id="9" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="first_name" fieldSource="first_name" wizardCaption="First Name" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
				</Label>
				<Label id="10" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="last_name" fieldSource="last_name" wizardCaption="Last Name" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
				</Label>
				<Label id="11" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="phone_home" fieldSource="phone_home" wizardCaption="Phone Home" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
				</Label>
				<Label id="16" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="email" fieldSource="email">
					<Components/>
					<Events/>
				</Label>
				<Navigator id="12" type="Centered" name="Navigator" size="10" wizardPagingType="Custom" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardImages="Images" wizardPageNumbers="Centered" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardUsePageScroller="True">
					<Components/>
					<Events/>
				</Navigator>
			</Components>
			<Events/>
			<TableParameters/>
			<JoinTables/>
			<JoinLinks/>
			<Fields/>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
		</Grid>
		<Link id="17" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" editable="False" name="Link1" removeParameters="user_id" hrefSource="MultiStepRegistration1.ccp" visible="Yes">
			<Components/>
			<Events/>
			<LinkParameters/>
		</Link>
		<IncludePage id="21" name="Footer" wizardTheme="None" wizardThemeType="File" wizardThemeVersion="3.0" page="../Footer.ccp">
<Components/>
<Events/>
</IncludePage>
</Components>
	<CodeFiles>
		<CodeFile id="3" language="C#" name="MultiStepRegistrationGrid.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="MultiStepRegistrationGrid.aspx"/>
		<CodeFile id="1" language="C#" name="MultiStepRegistrationGrid.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="2" language="C#" name="MultiStepRegistrationGridDataProvider.cs" path="\components" comment="//" forShow="False"/>
		<CodeFile id="3" language="VB" name="MultiStepRegistrationGrid.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="MultiStepRegistrationGrid.aspx"/>
		<CodeFile id="1" language="VB" name="MultiStepRegistrationGrid.aspx.vb" comment="'" forShow="False"/>
		<CodeFile id="2" language="VB" name="MultiStepRegistrationGridDataProvider.vb" path="\components" comment="'" forShow="False"/>
		<CodeFile id="codeGrid1" language="CFMLTemplates" name="MultiStepRegistrationGrid_users.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codePage" language="CFMLTemplates" name="MultiStepRegistrationGrid.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="True" url="MultiStepRegistrationGrid.cfm"/>
		<CodeFile id="codeGrid1" language="CFML" name="MultiStepRegistrationGrid_users.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codePage" language="CFML" name="MultiStepRegistrationGrid.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="True" url="MultiStepRegistrationGrid.cfm"/>
		<CodeFile id="Model" language="JSP" name="MultiStepRegistrationGrid.xml" path="." comment="&lt;!--" commentEnd="--&gt;" forShow="False"/>
		<CodeFile id="JSP" language="JSP" name="MultiStepRegistrationGrid.jsp" path="." comment="&lt;%--" commentEnd="--%&gt;" forShow="True" url="MultiStepRegistrationGrid.jsp"/>
		<CodeFile id="Handlers" language="JSP" name="MultiStepRegistrationGridHandlers.jsp" path="." comment="//" forShow="False"/>
		<CodeFile id="Code" language="PHPTemplates" name="MultiStepRegistrationGrid.php" comment="//" forShow="True" url="MultiStepRegistrationGrid.php"/>
		<CodeFile id="Code" language="PerlTemplates" name="MultiStepRegistrationGrid.cgi" comment="#" forShow="True" url="MultiStepRegistrationGrid.cgi"/>
		<CodeFile id="usersDataObject3" language="ServletTemplates" name="usersDataObject.java" path="..\CCSBuild\src\MultiStepRegistration\MultiStepRegistrationGrid\" comment="//" forShow="False"/>
		<CodeFile id="usersRow3" language="ServletTemplates" name="usersRow.java" path="..\CCSBuild\src\MultiStepRegistration\MultiStepRegistrationGrid\" comment="//" forShow="False"/>
		<CodeFile id="Action" language="ServletTemplates" name="MultiStepRegistrationGridAction.java" path="..\CCSBuild\src\MultiStepRegistration\MultiStepRegistrationGrid\" comment="//" forShow="True" url="MultiStepRegistrationGrid.do"/>
		<CodeFile id="Model" language="ServletTemplates" name="MultiStepRegistrationGridModel.java" path="..\CCSBuild\src\MultiStepRegistration\MultiStepRegistrationGrid\" comment="//" forShow="False"/>
		<CodeFile id="View" language="ServletTemplates" name="MultiStepRegistrationGridView.java" path="..\CCSBuild\src\MultiStepRegistration\MultiStepRegistrationGrid\" comment="//" forShow="False"/>
		<CodeFile id="Code" language="ASPTemplates" name="MultiStepRegistrationGrid.asp" comment="'" forShow="True" url="MultiStepRegistrationGrid.asp"/>
	</CodeFiles>
	<SecurityGroups/>
	<Events/>
	<CachingParameters/>
</Page>
