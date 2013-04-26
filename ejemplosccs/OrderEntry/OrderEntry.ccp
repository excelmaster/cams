<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\OrderEntry" secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" validateRequest="False" needGeneration="0" wizardThemeVersion="3.0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="EXPack" scriptingSupport="Always" isService="False">
	<Components>
		<IncludePage id="2" hasOperation="True" name="Header" page="../Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Link id="111" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" editable="False" name="Link1" hrefSource="OrderEntry_desc.ccp" visible="Yes">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Grid id="3" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="10" name="store_orders_grid" connection="IntranetDB" dataSource="orders, customers" pageSizeLimit="100" wizardCaption="List of Store Orders " wizardGridType="Tabular" wizardSortingType="Simple" wizardAllowInsert="False" wizardAltRecord="False" wizardRecordSeparator="False" activeCollection="TableParameters" activeTableType="dataSource" orderBy="order_id">
			<Components>
				<Sorter id="10" visible="True" name="Sorter_order_id" column="order_id" wizardCaption="Order Id" wizardSortingType="Simple" wizardControl="order_id" connection="IntranetDB">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="11" visible="True" name="Sorter_user_id" column="customer_id, order_id" wizardCaption="User Id" wizardSortingType="Simple" wizardControl="user_id" connection="IntranetDB" columnReverse="customer_id desc, order_id">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="12" visible="True" name="Sorter_order_date" column="order_date, order_id" wizardCaption="Order Date" wizardSortingType="Simple" wizardControl="order_date" connection="IntranetDB" columnReverse="order_date desc, order_id">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Link id="13" fieldSourceType="DBColumn" dataType="Integer" html="False" editable="False" name="order_id" fieldSource="order_id" wizardCaption="Order Id" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" hrefType="Page" urlType="Relative" preserveParameters="GET" hrefSource="OrderEntry.ccp" visible="Yes">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="26" sourceType="DataField" name="order_id" source="order_id"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
				<Label id="46" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="customer_name" fieldSource="customer_name">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="15" fieldSourceType="DBColumn" dataType="Date" html="False" editable="False" name="order_date" fieldSource="order_date" wizardCaption="Order Date" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="58" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" editable="False" name="Link1" removeParameters="order_id" hrefSource="OrderEntry.ccp" visible="Yes">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Navigator id="16" type="Centered" name="Navigator" size="10" wizardPagingType="Custom" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardImages="Images" wizardPageNumbers="Centered" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardUsePageScroller="True" pageSizes="1;5;10;25;50">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
			</Components>
			<Events/>
			<TableParameters>
			</TableParameters>
			<JoinTables>
				<JoinTable id="112" tableName="orders" posWidth="100" posHeight="100" posLeft="10" posTop="10"/>
				<JoinTable id="114" tableName="customers" posWidth="102" posHeight="154" posLeft="201" posTop="14"/>
			</JoinTables>
			<JoinLinks>
				<JoinTable2 id="116" fieldLeft="customers.customer_id" fieldRight="orders.order_customer_id" tableLeft="customers" tableRight="orders" conditionType="Equal" joinType="inner"/>
			</JoinLinks>
			<Fields>
				<Field id="113" tableName="orders" fieldName="orders.*"/>
				<Field id="115" tableName="customers" fieldName="customer_name"/>
			</Fields>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
			<Attributes/>
<Features/>
</Grid>
		<Record id="64" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="GET" debugMode="False" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="IntranetDB" name="store_orders_record" errorSummator="Error" wizardCaption="Add/Edit Store Orders " wizardFormMethod="post" returnPage="OrderEntry.ccp" activeCollection="TableParameters" activeTableType="dataSource" dataSource="orders" removeParameters="order_id">
			<Components>
				<ListBox id="65" fieldSourceType="DBColumn" sourceType="Table" dataType="Integer" editable="True" hasErrorCollection="True" returnValueType="Number" name="user_id" fieldSource="order_customer_id" required="True" caption="Customer" wizardCaption="User Id" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" connection="IntranetDB" dataSource="customers" boundColumn="customer_id" textColumn="customer_name" orderBy="customer_id" visible="Yes">
					<Components/>
					<Events>
						<Event name="OnChange" type="Client">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="96"/>
							</Actions>
						</Event>
					</Events>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<Attributes/>
<Features/>
</ListBox>
				<TextBox id="66" fieldSourceType="DBColumn" dataType="Date" html="False" editable="True" hasErrorCollection="True" name="order_date" fieldSource="order_date" required="False" caption="Order Date" wizardCaption="Order Date" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes">
					<Components/>
					<Events>
						<Event name="OnChange" type="Client">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="97"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<DatePicker id="108" name="DatePicker1" wizardPicture="../Styles/None/Images/DatePicker.gif" style="../Styles/EXPack/Style.css" control="order_date" wizardDatePickerType="ImageLink">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</DatePicker>
				<Button id="69" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="70" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit">
					<Components/>
					<Events>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="72" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Delete" operation="Delete" wizardCaption="Delete">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
			</Components>
			<Events>
				<Event name="AfterInsert" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="73"/>
					</Actions>
				</Event>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="74"/>
					</Actions>
				</Event>
				<Event name="BeforeDelete" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="75"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="76" conditionType="Parameter" useIsNull="False" field="order_id" parameterSource="order_id" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1" defaultValue="-1"/>
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
			<Attributes/>
<Features/>
</Record>
		<EditableGrid id="77" urlType="Relative" secured="False" emptyRows="30" allowInsert="True" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="GET" sourceType="Table" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="store_orders_items" connection="IntranetDB" dataSource="order_items" pageSizeLimit="100" wizardCaption="List of Store Order Items " wizardGridType="Tabular" wizardAltRecord="False" wizardRecordSeparator="False" deleteControl="Delete1" activeCollection="TableParameters" activeTableType="dataSource" removeParameters="order_id">
			<Components>
				<Label id="78" fieldSourceType="DBColumn" dataType="Text" html="True" editable="False" name="PriceArray">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="79"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="104" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="RowIDAttribute">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="102" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="RowNameAttribute">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="110" fieldSourceType="DBColumn" dataType="Text" html="True" editable="False" name="RowStyleAttribute">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="80" fieldSourceType="DBColumn" dataType="Integer" html="False" editable="True" hasErrorCollection="True" name="order_id" fieldSource="order_id" required="False" caption="Order Id" wizardCaption="Order Id" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<ListBox id="81" fieldSourceType="DBColumn" sourceType="Table" dataType="Integer" editable="True" hasErrorCollection="True" returnValueType="Number" name="product_id" fieldSource="product_id" required="True" caption="Product" wizardCaption="Product Id" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" connection="IntranetDB" dataSource="products" boundColumn="product_id" textColumn="product_name" orderBy="product_id" visible="Yes">
					<Components/>
					<Events>
						<Event name="OnChange" type="Client">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="82"/>
							</Actions>
						</Event>
					</Events>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<Attributes/>
<Features/>
</ListBox>
				<TextBox id="83" fieldSourceType="DBColumn" dataType="Float" html="False" editable="True" hasErrorCollection="True" name="price" fieldSource="price" required="False" caption="Price" wizardCaption="Price" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" format="0.00" visible="Yes">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="84" fieldSourceType="DBColumn" dataType="Integer" html="False" editable="True" hasErrorCollection="True" name="quantity" fieldSource="quantity" required="True" caption="Quantity" wizardCaption="Quantity" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes">
					<Components/>
					<Events>
						<Event name="OnChange" type="Client">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="85"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="86" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="SumPrice" visible="Yes">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Panel id="120" visible="True" name="Delete1_Panel" wizardTheme="None" wizardThemeType="File" wizardThemeVersion="3.0">
					<Components>
						<CheckBox id="87" fieldSourceType="CodeExpression" dataType="Boolean" editable="True" name="Delete1" checkedValue="true" uncheckedValue="false" wizardCaption="Delete" wizardUseTemplateBlock="True" visible="Yes" defaultValue="Unchecked">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</CheckBox>
					</Components>
					<Events/>
					<Attributes/>
					<Features/>
				</Panel>
				<Button id="100" urlType="Relative" enableValidation="False" isDefault="False" name="AddItemBtn">
					<Components/>
					<Events>
						<Event name="OnClick" type="Client">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="101"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="88" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Submit" operation="Submit">
					<Components/>
					<Events>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
			</Components>
			<Events>
				<Event name="BeforeBuildInsert" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="90"/>
					</Actions>
				</Event>
				<Event name="OnLoad" type="Client">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="99"/>
					</Actions>
				</Event>
				<Event name="BeforeShowRow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="105"/>
					</Actions>
				</Event>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="117"/>
					</Actions>
				</Event>
				<Event name="BeforeSubmit" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="118"/>
					</Actions>
				</Event>
				<Event name="BeforeExecuteInsert" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="120"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="92" conditionType="Parameter" useIsNull="False" field="order_id" dataType="Integer" searchConditionType="Equal" parameterType="URL" logicOperator="And" defaultValue="-1" parameterSource="order_id" orderNumber="1"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="93" tableName="order_items" posWidth="117" posHeight="136" posLeft="10" posTop="10"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="94" tableName="order_items" fieldName="*"/>
			</Fields>
			<PKFields>
				<PKField id="95" tableName="order_items" fieldName="order_item_id" dataType="Integer"/>
			</PKFields>
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
		</EditableGrid>
		<IncludePage id="119" name="Footer" wizardTheme="None" wizardThemeType="File" wizardThemeVersion="3.0" page="../Footer.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
	</Components>
	<CodeFiles>
		<CodeFile id="Events" language="ASPTemplates" name="OrderEntry_events.asp" comment="'" forShow="False"/>
		<CodeFile id="1" language="C#" name="OrderEntry.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="2" language="C#" name="OrderEntryDataProvider.cs" path="\components" comment="//" forShow="False"/>
		<CodeFile id="3" language="VB" name="OrderEntry.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="OrderEntry.aspx"/>
		<CodeFile id="1" language="VB" name="OrderEntry.aspx.vb" comment="'" forShow="False"/>
		<CodeFile id="2" language="VB" name="OrderEntryDataProvider.vb" path="\components" comment="'" forShow="False"/>
		<CodeFile id="codeRecord1" language="CFMLTemplates" name="OrderEntry_store_orders_record.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codeGrid1" language="CFMLTemplates" name="OrderEntry_store_orders_grid.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codeEG1" language="CFMLTemplates" name="OrderEntry_store_orders_items.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codePage" language="CFMLTemplates" name="OrderEntry.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="True" url="OrderEntry.cfm"/>
		<CodeFile id="codeRecord1" language="CFML" name="OrderEntry_store_orders_record.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codeGrid1" language="CFML" name="OrderEntry_store_orders_grid.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codeEG1" language="CFML" name="OrderEntry_store_orders_items.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codePage" language="CFML" name="OrderEntry.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="True" url="OrderEntry.cfm"/>
		<CodeFile id="Handlers" language="JSP" name="OrderEntryHandlers.jsp" path="." comment="//" forShow="False"/>
		<CodeFile id="Events" language="PHPTemplates" name="OrderEntry_events.php" comment="//" forShow="False"/>
		<CodeFile id="Events" language="PerlTemplates" name="OrderEntry_events.pl" comment="#" forShow="False"/>
		<CodeFile id="store_orders_gridDataObject3" language="ServletTemplates" name="store_orders_gridDataObject.java" path="..\CCSBuild\src\OrderEntry\OrderEntry\" comment="//" forShow="False"/>
		<CodeFile id="store_orders_recordDataObject64" language="ServletTemplates" name="store_orders_recordDataObject.java" path="..\CCSBuild\src\OrderEntry\OrderEntry\" comment="//" forShow="False"/>
		<CodeFile id="store_orders_itemsDataObject77" language="ServletTemplates" name="store_orders_itemsDataObject.java" path="..\CCSBuild\src\OrderEntry\OrderEntry\" comment="//" forShow="False"/>
		<CodeFile id="store_orders_itemsDataObjectEventHandler" language="ServletTemplates" name="store_orders_itemsDataObjectHandler.java" path="..\CCSBuild\src\OrderEntry\OrderEntry\" comment="//" forShow="False"/>
		<CodeFile id="store_orders_gridRow3" language="ServletTemplates" name="store_orders_gridRow.java" path="..\CCSBuild\src\OrderEntry\OrderEntry\" comment="//" forShow="False"/>
		<CodeFile id="store_orders_recordRow64" language="ServletTemplates" name="store_orders_recordRow.java" path="..\CCSBuild\src\OrderEntry\OrderEntry\" comment="//" forShow="False"/>
		<CodeFile id="store_orders_itemsRow77" language="ServletTemplates" name="store_orders_itemsRow.java" path="..\CCSBuild\src\OrderEntry\OrderEntry\" comment="//" forShow="False"/>
		<CodeFile id="PK_store_orders_items77" language="ServletTemplates" name="PK_store_orders_items.java" path="..\CCSBuild\src\OrderEntry\OrderEntry\" comment="//" forShow="False"/>
		<CodeFile id="Action" language="ServletTemplates" name="OrderEntryAction.java" path="..\CCSBuild\src\OrderEntry\OrderEntry\" comment="//" forShow="True" url="OrderEntry.do"/>
		<CodeFile id="Model" language="ServletTemplates" name="OrderEntryModel.java" path="..\CCSBuild\src\OrderEntry\OrderEntry\" comment="//" forShow="False"/>
		<CodeFile id="View" language="ServletTemplates" name="OrderEntryView.java" path="..\CCSBuild\src\OrderEntry\OrderEntry\" comment="//" forShow="False"/>
		<CodeFile id="store_orders_recordRecordEventHandler" language="ServletTemplates" name="store_orders_recordRecordHandler.java" path="..\CCSBuild\src\OrderEntry\OrderEntry\" comment="//" forShow="False"/>
		<CodeFile id="store_orders_itemsEditableGridEventHandler" language="ServletTemplates" name="store_orders_itemsEditableGridHandler.java" path="..\CCSBuild\src\OrderEntry\OrderEntry\" comment="//" forShow="False"/>
		<CodeFile id="store_orders_itemsPriceArrayEventHandler" language="ServletTemplates" name="store_orders_itemsPriceArrayHandler.java" path="..\CCSBuild\src\OrderEntry\OrderEntry\" comment="//" forShow="False"/>
		<CodeFile id="Code" language="PHPTemplates" forShow="True" url="OrderEntry.php" name="OrderEntry.php" comment="//"/>
		<CodeFile id="Code" language="PerlTemplates" forShow="True" url="OrderEntry.cgi" name="OrderEntry.cgi" comment="#"/>
		<CodeFile id="Model" language="JSP" forShow="False" name="OrderEntry.xml" path="." comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="JSP" language="JSP" forShow="True" url="OrderEntry.jsp" name="OrderEntry.jsp" path="." comment="&lt;%--" commentEnd="--%&gt;"/>
		<CodeFile id="3" language="C#" forShow="True" url="OrderEntry.aspx" name="OrderEntry.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="Code" language="ASPTemplates" forShow="True" url="OrderEntry.asp" name="OrderEntry.asp" comment="'"/>
	</CodeFiles>
	<SecurityGroups/>
	<Events>
		<Event name="OnLoad" type="Client">
<Actions>
<Action actionName="Custom Code" actionCategory="General" id="121"/>
</Actions>
</Event>
</Events>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
