<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\InputMask" secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="EXPack" wizardThemeVersion="3.0">
	<Components>
		<IncludePage id="2" hasOperation="True" name="Header" page="../Header.ccp">
			<Components/>
			<Events/>
		</IncludePage>
		<Link id="9" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" editable="False" name="Link1" hrefSource="InputMask_desc.ccp" visible="Yes">
			<Components/>
			<Events/>
			<LinkParameters/>
		</Link>
		<Grid id="31" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="10" name="usersgrid" connection="InternetDB" dataSource="users" orderBy="user_id" pageSizeLimit="100" wizardCaption="List of Users " wizardGridType="Tabular" wizardSortingType="Simple" wizardAllowInsert="False" wizardAltRecord="False" wizardRecordSeparator="False" wizardAllowSorting="True">
			<Components>
				<Sorter id="34" visible="True" name="Sorter_first_name" column="first_name, user_id" wizardCaption="First Name" wizardSortingType="Simple" wizardControl="first_name" connection="InternetDB" columnReverse="first_name desc, user_id">
					<Components/>
					<Events/>
				</Sorter>
				<Sorter id="35" visible="True" name="Sorter_last_name" column="last_name, user_id" wizardCaption="Last Name" wizardSortingType="Simple" wizardControl="last_name" connection="InternetDB" columnReverse="last_name desc, user_id">
					<Components/>
					<Events/>
				</Sorter>
				<Sorter id="37" visible="True" name="Sort_Email" wizardSortingType="Simple" connection="InternetDB" column="email, user_id" columnReverse="email desc, user_id">
					<Components/>
					<Events/>
				</Sorter>
				<Sorter id="36" visible="True" name="Sorter_phone_home" column="phone_work, user_id" wizardCaption="Phone Home" wizardSortingType="Simple" wizardControl="phone_home" connection="InternetDB" columnReverse="phone_work desc, user_id">
					<Components/>
					<Events/>
				</Sorter>
				<Sorter id="46" visible="True" name="Sort_SSN" wizardSortingType="Simple" column="user_SSN, user_id" connection="InternetDB" columnReverse="user_SSN desc, user_id">
					<Components/>
					<Events/>
				</Sorter>
				<Link id="40" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="first_name" fieldSource="first_name" wizardCaption="First Name" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" hrefType="Page" urlType="Relative" preserveParameters="GET" hrefSource="InputMask.ccp" visible="Yes">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="47" sourceType="DataField" name="user_id" source="user_id"/>
					</LinkParameters>
				</Link>
				<Label id="41" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="last_name" fieldSource="last_name" wizardCaption="Last Name" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
				</Label>
				<Label id="43" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="email" fieldSource="email">
					<Components/>
					<Events/>
				</Label>
				<Label id="42" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="phone_work" fieldSource="phone_work" wizardCaption="Phone Home" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
				</Label>
				<Label id="45" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="user_SSN" fieldSource="user_SSN">
					<Components/>
					<Events/>
				</Label>
				<Link id="48" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" editable="False" name="Link1" hrefSource="InputMask.ccp" removeParameters="user_id" visible="Yes">
					<Components/>
					<Events/>
					<LinkParameters/>
				</Link>
				<Navigator id="44" type="Centered" name="Navigator" size="10" wizardPagingType="Custom" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardImages="Images" wizardPageNumbers="Centered" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardUsePageScroller="True">
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
		<Record id="20" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="GET" debugMode="False" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="InternetDB" name="users" dataSource="users" errorSummator="Error" wizardCaption="Add/Edit Users " wizardFormMethod="post" returnPage="InputMask.ccp" removeParameters="user_id">
			<Components>
				<TextBox id="26" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="first_name" fieldSource="first_name" required="True" caption="First Name" wizardCaption="First Name" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes">
					<Components/>
					<Events/>
				</TextBox>
				<TextBox id="27" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="last_name" fieldSource="last_name" required="True" caption="Last Name" wizardCaption="Last Name" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes">
					<Components/>
					<Events/>
				</TextBox>
				<TextBox id="28" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="email" fieldSource="email" required="False" caption="Email" wizardCaption="Email" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" inputMask="^[\w\.-]{1,}\@([\da-zA-Z-]{1,}\.){1,}[\da-zA-Z-]+$" visible="Yes">
					<Components/>
					<Events/>
				</TextBox>
				<TextBox id="29" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="phone_work" fieldSource="phone_work" required="True" caption="Phone Work" wizardCaption="Phone Work" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Validate Phone" actionCategory="Validation" id="49"/>
							</Actions>
						</Event>
						<Event name="OnLoad" type="Client">
							<Actions>
								<Action actionName="Validate Entry" actionCategory="Validation" id="55" required="True" minimumLength="14" maximumLength="14" inputMask="(000) 000-0000"/>
							</Actions>
						</Event>
					</Events>
				</TextBox>
				<TextBox id="30" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="user_SSN" fieldSource="user_SSN" required="True" caption="SSN" wizardCaption="SSN" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Regular Expression Validation" actionCategory="Validation" id="51" name="user_SSN" errorMessage="Invalid SSN format in SSN field." regExp="^[0-9]{3}-[0-9]{2}-[0-9]{4}$"/>
							</Actions>
						</Event>
						<Event name="OnLoad" type="Client">
							<Actions>
								<Action actionName="Validate Entry" actionCategory="Validation" id="54" inputMask="000-00-0000" maximumLength="11" minimumLength="11" required="True"/>
							</Actions>
						</Event>
					</Events>
				</TextBox>
				<Button id="21" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add">
					<Components/>
					<Events/>
				</Button>
				<Button id="22" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit">
					<Components/>
					<Events/>
				</Button>
				<Button id="23" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Delete" operation="Delete" wizardCaption="Delete">
					<Components/>
					<Events/>
				</Button>
				<Button id="24" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel">
					<Components/>
					<Events/>
				</Button>
			</Components>
			<Events>
				<Event name="OnSubmit" type="Client">
					<Actions>
						<Action actionName="Validate Form" actionCategory="Validation" id="56"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="25" conditionType="Parameter" useIsNull="False" field="user_id" parameterSource="user_id" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
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
		<IncludePage id="57" name="Footer" wizardTheme="None" wizardThemeType="File" wizardThemeVersion="3.0" page="../Footer.ccp">
			<Components/>
			<Events/>
		</IncludePage>
	</Components>
	<CodeFiles>
		<CodeFile id="Events" language="ASPTemplates" forShow="False" name="InputMask_events.asp" comment="'"/>
		<CodeFile id="3" language="VB" name="InputMask.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="InputMask.aspx"/>
		<CodeFile id="1" language="VB" name="InputMask.aspx.vb" comment="'" forShow="False"/>
		<CodeFile id="2" language="VB" name="InputMaskDataProvider.vb" path="\components" comment="'" forShow="False"/>
		<CodeFile id="codeRecord1" language="CFMLTemplates" name="InputMask_users.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codeGrid1" language="CFMLTemplates" name="InputMask_usersgrid.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codePage" language="CFMLTemplates" name="InputMask.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="True" url="InputMask.cfm"/>
		<CodeFile id="usersgridDataObject31" language="ServletTemplates" name="usersgridDataObject.java" path="..\CCSBuild\src\InputMask\InputMask\" comment="//" forShow="False"/>
		<CodeFile id="usersDataObject20" language="ServletTemplates" name="usersDataObject.java" path="..\CCSBuild\src\InputMask\InputMask\" comment="//" forShow="False"/>
		<CodeFile id="usersgridRow31" language="ServletTemplates" name="usersgridRow.java" path="..\CCSBuild\src\InputMask\InputMask\" comment="//" forShow="False"/>
		<CodeFile id="usersRow20" language="ServletTemplates" name="usersRow.java" path="..\CCSBuild\src\InputMask\InputMask\" comment="//" forShow="False"/>
		<CodeFile id="Action" language="ServletTemplates" name="InputMaskAction.java" path="..\CCSBuild\src\InputMask\InputMask\" comment="//" forShow="True" url="InputMask.do"/>
		<CodeFile id="Model" language="ServletTemplates" name="InputMaskModel.java" path="..\CCSBuild\src\InputMask\InputMask\" comment="//" forShow="False"/>
		<CodeFile id="View" language="ServletTemplates" name="InputMaskView.java" path="..\CCSBuild\src\InputMask\InputMask\" comment="//" forShow="False"/>
		<CodeFile id="usersphone_workEventHandler" language="ServletTemplates" name="usersphone_workHandler.java" path="..\CCSBuild\src\InputMask\InputMask\" comment="//" forShow="False"/>
		<CodeFile id="usersuser_SSNEventHandler" language="ServletTemplates" name="usersuser_SSNHandler.java" path="..\CCSBuild\src\InputMask\InputMask\" comment="//" forShow="False"/>
		<CodeFile id="Code" language="ASPTemplates" forShow="True" url="InputMask.asp" name="InputMask.asp" comment="'"/>
		<CodeFile id="Events" language="PHPTemplates" name="InputMask_events.php" comment="//" forShow="False"/>
		<CodeFile id="Code" language="PHPTemplates" name="InputMask.php" comment="//" forShow="True" url="InputMask.php"/>
		<CodeFile id="Events" language="PerlTemplates" name="InputMask_events.pl" comment="#" forShow="False"/>
		<CodeFile id="Code" language="PerlTemplates" name="InputMask.cgi" comment="#" forShow="True" url="InputMask.cgi"/>
		<CodeFile id="codeRecord1" language="CFML" name="InputMask_users.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codeGrid1" language="CFML" name="InputMask_usersgrid.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codePage" language="CFML" name="InputMask.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="True" url="InputMask.cfm"/>
		<CodeFile id="Model" language="JSP" name="InputMask.xml" path="." comment="&lt;!--" commentEnd="--&gt;" forShow="False"/>
		<CodeFile id="JSP" language="JSP" name="InputMask.jsp" path="." comment="&lt;%--" commentEnd="--%&gt;" forShow="True" url="InputMask.jsp"/>
		<CodeFile id="Handlers" language="JSP" name="InputMaskHandlers.jsp" path="." comment="//" forShow="False"/>
		<CodeFile id="3" language="C#" name="InputMask.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="InputMask.aspx"/>
		<CodeFile id="1" language="C#" name="InputMask.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="2" language="C#" name="InputMaskDataProvider.cs" path="\components" comment="//" forShow="False"/>
		<CodeFile id="1" language="C#InMotion" name="InputMask.aspx" forShow="True" url="InputMask.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.cs" language="C#InMotion" name="InputMaskEvents.aspx.cs" forShow="True" url="InputMaskEvents.aspx.cs" comment="//"/>
		<CodeFile id="1" language="VBInMotion" name="InputMask.aspx" forShow="True" url="InputMask.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.vb" language="VBInMotion" name="InputMaskEvents.aspx.vb" forShow="True" url="InputMaskEvents.aspx.vb" comment="'"/>
	</CodeFiles>
	<SecurityGroups/>
	<Events/>
	<CachingParameters/>
</Page>
