<root>
	<TableCollection>
		<ParentTable>
			<Name>vB30AccDocPurchase_Edit</Name>
			<Columns>Ct.*, PostSL AS PrevPostSL, '{=USER()}' AS UserName</Columns>
			<Alias>Ct</Alias>
			<TempColumns>
				<IsPostWhenSaveNewDoc>
					<DataType>System.Int16</DataType>
				</IsPostWhenSaveNewDoc>
				<AutoPrintVoucher>
					<DataType>System.Boolean</DataType>
				</AutoPrintVoucher>
				<DocStatusDefault>
					<DataType>System.Byte</DataType>
				</DocStatusDefault>
				<DocumentViewStyleDefault>
					<DataType>System.Byte</DataType>
				</DocumentViewStyleDefault>
				<ExchangeRate_Currency>
					<DataType>System.Decimal</DataType>
				</ExchangeRate_Currency>
				<TaxRegName>
					<DataType>System.String</DataType>
					<MaxLength>192</MaxLength>
				</TaxRegName>
				<TaxRegNo>
					<DataType>System.String</DataType>
					<MaxLength>18</MaxLength>
				</TaxRegNo>
				<DebitAccount3>
					<DataType>System.String</DataType>
				</DebitAccount3>
				<CreditAccount3>
					<DataType>System.String</DataType>
				</CreditAccount3>
				<CustomerDebitAccount>
					<DataType>System.Byte</DataType>
				</CustomerDebitAccount>
				<ProductDebitAccount>
					<DataType>System.Byte</DataType>
				</ProductDebitAccount>
				<CustomerCreditAccount>
					<DataType>System.Byte</DataType>
				</CustomerCreditAccount>
				<ProductCreditAccount>
					<DataType>System.Byte</DataType>
				</ProductCreditAccount>
				<AtchDocDate>
					<DataType>System.DateTime</DataType>
				</AtchDocDate>
				<AtchDocNo>
					<DataType>System.String</DataType>
					<MaxLength>20</MaxLength>
				</AtchDocNo>
				<AtchDocSerialNo>
					<DataType>System.String</DataType>
					<MaxLength>20</MaxLength>
				</AtchDocSerialNo>
				<AtchDocFormNo>
					<DataType>System.String</DataType>
					<MaxLength>16</MaxLength>
				</AtchDocFormNo>
				<AtchDocRows>
					<DataType>System.Decimal</DataType>
				</AtchDocRows>
				<!-- Tổng giá trị tiền hàng bảng AtchDoc -->
				<AtchDoc_TotalOriginalAmountBeforeTax>
					<DataType>System.Decimal</DataType>
					<Caption>
						<Vietnamese>Tổng tiền chứng từ đi kèm</Vietnamese>
						<English>Total attached docs amount</English>
						<Japanese>添付されたドキュメントの総額</Japanese>
						<Chinese>总附加文档数量</Chinese>
						<Korean>첨부 된 총 문서 금액</Korean>
					</Caption>
				</AtchDoc_TotalOriginalAmountBeforeTax>
				<AtchDoc_TotalAmountBeforeTax>
					<DataType>System.Decimal</DataType>
				</AtchDoc_TotalAmountBeforeTax>
				<_Flag>
					<DataType>System.String</DataType>
				</_Flag>
				<BizProcess_UserIdList>
					<DataType>System.String</DataType>
				</BizProcess_UserIdList>
				<BizProcess_RoleList>
					<DataType>System.String</DataType>
				</BizProcess_RoleList>
				<OrderTypeId_PO>
					<DataType>System.Int32</DataType>
				</OrderTypeId_PO>
				<RelationRefreshTable>
					<DataType>System.String</DataType>
				</RelationRefreshTable>
				<RelationRefreshIdList>
					<DataType>System.String</DataType>
				</RelationRefreshIdList>
				<DueSideCreditAccount>
					<DataType>System.String</DataType>
				</DueSideCreditAccount>
				<!-- 17/04/2023 ThắngĐQ: Kiểm tra nhập mua có chọn CP -->
				<RelationCP>
					<DataType>System.String</DataType>
				</RelationCP>
				<!-- 17/04/2023 ThắngĐQ: Kiểm tra nhập mua có chọn CP -->
				<CheckRelationCP>
					<DataType>System.Int64</DataType>
					<DefaultValue>0</DefaultValue>
				</CheckRelationCP>
				<!-- 23/10/2023 ANHPK cảnh báo nhập công đoạn theo TK-->
				<CheckWorkProcess>
					<DataType>System.Byte</DataType>
				</CheckWorkProcess>
				<_AllocationRate>
					<DataType>System.Int32</DataType>
				</_AllocationRate>
				<IsAllocateDiscount>
					<DataType>System.Byte</DataType>
					<DefaultValue>0</DefaultValue>
				</IsAllocateDiscount>
				<TotalAmount3_5Percent>
					<DataType>System.Decimal</DataType>
					<DefaultValue>0</DefaultValue>
				</TotalAmount3_5Percent>
				<TotalAmount3_8Percent>
					<DataType>System.Decimal</DataType>
					<DefaultValue>0</DefaultValue>
				</TotalAmount3_8Percent>
				<TotalAmount3_10Percent>
					<DataType>System.Decimal</DataType>
					<DefaultValue>0</DefaultValue>
				</TotalAmount3_10Percent>
				<TotalOriginalAmount3_5Percent>
					<DataType>System.Decimal</DataType>
					<DefaultValue>0</DefaultValue>
				</TotalOriginalAmount3_5Percent>
				<TotalOriginalAmount3_8Percent>
					<DataType>System.Decimal</DataType>
					<DefaultValue>0</DefaultValue>
				</TotalOriginalAmount3_8Percent>
				<TotalOriginalAmount3_10Percent>
					<DataType>System.Decimal</DataType>
					<DefaultValue>0</DefaultValue>
				</TotalOriginalAmount3_10Percent>
				<TotalOriginalAmount3_OtherPercent>
					<DataType>System.Decimal</DataType>
					<DefaultValue>0</DefaultValue>
				</TotalOriginalAmount3_OtherPercent>
				<EInvoiceLink>
					<DataType>System.String</DataType>
				</EInvoiceLink>
				<EInvoiceKey>
					<DataType>System.String</DataType>
				</EInvoiceKey>
				<AttachedTaxInfo>
					<DataType>System.Byte</DataType>
				</AttachedTaxInfo>
				<!--29/07/2024 PhanNH thêm nút tích lưu nháp-->
				<UsingIsDraftData>
					<DataType>System.Int16</DataType>
				</UsingIsDraftData>
			</TempColumns>
			<ServerLoaded>
				<Eval_BizProcess_UserIdList_GetValue>
					<ClassName>BravoServerConstraint</ClassName>
					<Command>usp_B20DocProcess_UserIdList</Command>
					<Parameters>
						<DocCode>DocCode</DocCode>
						<Stt>Stt</Stt>
						<RowId_DocProcess>RowId_DocProcess</RowId_DocProcess>
						<DocProcessId>DocProcessId</DocProcessId>
					</Parameters>
					<DataMember>BizProcess_UserIdList,BizProcess_RoleList</DataMember>
					<Expr>!Empty(RowId_DocProcess)</Expr>
					<Text />
				</Eval_BizProcess_UserIdList_GetValue>
				<Eval_GetDataFromChild>
					<ClassName>BravoCopyValue</ClassName>
					<CopyValues>
						<DebitAccount>VLOOKUP(Child(Ct0),DebitAccount,DebitAccount&lt;&gt;'')</DebitAccount>
						<CreditAccount>VLOOKUP(Child(Ct0),CreditAccount,CreditAccount&lt;&gt;'')</CreditAccount>
						<WarehouseId>IIF(UsingWarehouseId=1,VLOOKUP(Child(Ct0),WarehouseId,ISNULL(WarehouseId,0)&lt;&gt;0),NULL)</WarehouseId>
						<AttachedTaxInfo>IIF(Exists(AtchDoc,!Empty(TaxCode)) OR Exists(Ct0,!Empty(TaxCode)),1,0)</AttachedTaxInfo>
					</CopyValues>
				</Eval_GetDataFromChild>
				<Eval_ProductDebitAccount_GetValueFromChild />
				<Eval_Ct0_CheckExpenseCatgId_GetValueFromParent>UsingExpenseCatgId=2 AND !Empty(CheckExpenseCatgId)</Eval_Ct0_CheckExpenseCatgId_GetValueFromParent>
				<Eval_Ct0_CheckDeptId_GetValueFromParent>UsingDeptId=2 AND !Empty(CheckDeptId)</Eval_Ct0_CheckDeptId_GetValueFromParent>
				<Eval_Ct0_CheckJobId_GetValueFromParent>UsingJobId=2 AND !Empty(CheckJobId)</Eval_Ct0_CheckJobId_GetValueFromParent>
				<Eval_Ct0_CheckBizDocId_PO_GetValueFromParent>UsingBizDocId_PO=2 AND !Empty(CheckBizDocId_PO)</Eval_Ct0_CheckBizDocId_PO_GetValueFromParent>
				<Eval_Ct0_CheckBizDocId_SO_GetValueFromParent>UsingBizDocId_SO=2 AND !Empty(CheckBizDocId_SO)</Eval_Ct0_CheckBizDocId_SO_GetValueFromParent>
				<Eval_CreditAccount_BindingMembers>
					<bindingMembers>
						<CustomerAccount>CustomerCreditAccount</CustomerAccount>
						<ProductAccount>ProductCreditAccount</ProductAccount>
						<DueSideAccount>DueSideCreditAccount</DueSideAccount>
					</bindingMembers>
					<ClassName>BravoBindingMember</ClassName>
					<DataMember>CreditAccount</DataMember>
					<LookupKey>ChartOfAccount</LookupKey>
					<FilterKey>IsGroup=0 AND IsParentAccount=0</FilterKey>
				</Eval_CreditAccount_BindingMembers>
				<Eval_AtchDocRows>
					<DataMember>AtchDocRows</DataMember>
					<Value>ISNULL(COUNT(Child(AtchDoc).Id),0)</Value>
				</Eval_AtchDocRows>
				<Eval_GetDataFromAtchDoc />
				<Eval_TaxRate_SetValueZeroWhenEmptyValue>
					<DataMember>TaxRate</DataMember>
					<Value>0</Value>
					<Expr>TaxRate IS NULL</Expr>
				</Eval_TaxRate_SetValueZeroWhenEmptyValue>
				<Eval_MoneyDiffValue_GetValue />
				<Eval_Ct0_QuantityBeforeTrans_InitValue_WhenNotPosted>PrevPostSL=0</Eval_Ct0_QuantityBeforeTrans_InitValue_WhenNotPosted>
				<Eval_QuantityAfterTrans_SetValueToChild>
					<ClassName>BravoServerConstraint</ClassName>
					<Command>usp_B30AccDocInventory_GetCurrentInventory</Command>
					<Parameters>
						<BranchCode>BranchCode</BranchCode>
						<FiscalYear>'{=FiscalYear()}'</FiscalYear>
						<DataCode>'{=FiscalYear('DataCode')}'</DataCode>
						<DocGroup>DocGroup</DocGroup>
						<DocCode>DocCode</DocCode>
						<ShowCurrentINV>{=Config('M_ShowCurrentINV')}</ShowCurrentINV>
						<ParentIdentityKey>Id</ParentIdentityKey>
						<Ct0_XML>GETXMLDATA('Ct0', 'Id,ItemId,WarehouseId,Quantity,AllowIssueWhenNotEnough')</Ct0_XML>
						<PostSL>PostSL</PostSL>
					</Parameters>
					<DataMember>Ct0</DataMember>
					<zSourceValueMember>_QuantityByItem,_SameItemValue,QuantityAfterTrans,QuantityBeforeTrans</zSourceValueMember>
					<showMessage>Never</showMessage>
					<Expr>ROWSTATE() &lt;&gt; 'Added'</Expr>
					<Text />
				</Eval_QuantityAfterTrans_SetValueToChild>
				<Eval_Ct0_QuantityAfterTrans_InitValue_WhenNotPosted>PrevPostSL=0</Eval_Ct0_QuantityAfterTrans_InitValue_WhenNotPosted>
				<Eval_Ct0_QuantityBeforeTrans_InitValue>PrevPostSL=1</Eval_Ct0_QuantityBeforeTrans_InitValue>
				<Eval_PhysTotalQuantity_GetInitValueFromChild />
				<Eval_RemainPhysQuantity_SetInitValue />
				<Eval_DocBooking_BindingMember>
					<ClassName>BravoBindingMember</ClassName>
					<DataMember>DocBookingId</DataMember>
					<LookupKey>DocBooking</LookupKey>
					<SelectKey>IsGroup=0</SelectKey>
					<bindingMembers>
						<DocBookingDate>DocBookingDate</DocBookingDate>
					</bindingMembers>
				</Eval_DocBooking_BindingMember>
				<Eval_Ct0_CheckCostCentre_GetValueFromParent>UsingCostCentreId=2 AND !Empty(CheckCostCentre)</Eval_Ct0_CheckCostCentre_GetValueFromParent>
				<Eval_RelationRefreshIdList_GetValue>!EMPTY(VLOOKUP(Ct0, BizDocId_PO))</Eval_RelationRefreshIdList_GetValue>
				<!-- 17/04/2023 ThắngĐQ: Kiểm tra nhập mua có chọn CP -->
				<Eval_usp_B30AccDocPurchase_GetRelationCP />
				<Eval_PhysTotalQuantity9_GetInitValueFromChild />
				<Eval_RemainPhysQuantity9_SetInitValue />
				<Eval_CheckWorkProcess_SetValue />
				<Eval_AllocationRate_Exists />
				<Eval_TotalOriginalAmount3_5Percent />
				<Eval_TotalOriginalAmount3_8Percent />
				<Eval_TotalOriginalAmount3_10Percent />
				<Eval_TotalOriginalAmount3_OtherPercent />
				<!--29/07/2024 PhanNH thêm nút tích lưu nháp-->
				<Eval_UsingIsDraftData_SetValue />
			</ServerLoaded>
			<RowAdded>
				<!--Eval_UserId_BindingMembers /-->
				<Eval_DocCode_BindingMembers />
				<Eval_DocCodeUserId_BindingMembers />
				<Eval_DocNo_DefaultValue>EMPTY(AutoNumbering)</Eval_DocNo_DefaultValue>
				<Eval_MoneyDiffValue_GetValue />
				<!--29/07/2024 PhanNH thêm nút tích lưu nháp-->
				<Eval_UsingIsDraftData_SetValue />
			</RowAdded>
			<RowCopied>
				<Eval_ExchangeRate_Currency_GetExchangeRate>Empty(ExchangeRate) AND Empty(ExchangeRate_Currency)</Eval_ExchangeRate_Currency_GetExchangeRate>
				<Eval_UserId_DefaultValue>
					<DataMember>UserId</DataMember>
					<Value>USER('Id')</Value>
				</Eval_UserId_DefaultValue>
				<Eval_DocCode_BindingMembers_WhenCopy>
					<ClassName>BravoBindingMember</ClassName>
					<bindingMembers>
						<DocStatus_Ct>DocStatus</DocStatus_Ct>
						<AutoPrintVoucher>AutoPrintVoucher</AutoPrintVoucher>
						<AutoNumbering>AutoNumbering</AutoNumbering>
					</bindingMembers>
					<LookupKey>DmCt</LookupKey>
					<DataMember>DocCode</DataMember>
				</Eval_DocCode_BindingMembers_WhenCopy>
				<Eval_DocNo_ResetValue>
					<DataMember>DocNo</DataMember>
					<Value>NULL</Value>
					<Expr>Empty(Stt)</Expr>
					<bSuppressChangeEvents>True</bSuppressChangeEvents>
				</Eval_DocNo_ResetValue>
				<Eval_DocDate_ResetValue>
					<DataMember>DocDate</DataMember>
					<Value>GETDATE()</Value>
				</Eval_DocDate_ResetValue>
				<Eval_FiscalYear_ResetValue>
					<DataMember>FiscalYear</DataMember>
					<Expr>FiscalYear&lt;&gt;FISCALYEAR()</Expr>
					<Value>FISCALYEAR()</Value>
				</Eval_FiscalYear_ResetValue>
				<Eval_BizProcessGroup_ResetValue>
					<DataMember>RowId_DocProcess,DocProcessId</DataMember>
					<Value>NULL</Value>
				</Eval_BizProcessGroup_ResetValue>
				<Eval_AtchDocNo_ResetValue>
					<DataMember>AtchDocNo,AtchDocDate</DataMember>
					<Value>NULL</Value>
					<Expr>Empty(Stt) AND Empty(TaxCode)</Expr>
				</Eval_AtchDocNo_ResetValue>
				<Eval_DocNo_DefaultValue>Empty(DocNo) AND EMPTY(AutoNumbering)</Eval_DocNo_DefaultValue>
				<Eval_DocCodeUserId_BindingMembers />
				<Eval_DocStatusDefault_DefaultFromUser />
				<Eval_DocStatus_BindingMembers_WhenCopy>
					<ClassName>BravoBindingMember</ClassName>
					<bindingMembers>
						<IsCancelled>IsCancelled</IsCancelled>
						<PostGL>PostGL</PostGL>
						<PostSL>PostSL</PostSL>
						<Lock>Lock</Lock>
					</bindingMembers>
					<LookupKey>DocStatus</LookupKey>
					<DataMember>DocStatus</DataMember>
				</Eval_DocStatus_BindingMembers_WhenCopy>
				<!--29/07/2024 PhanNH thêm nút tích lưu nháp-->
				<Eval_UsingIsDraftData_SetValue />
				<Eval_IsDraftData_ResetValue />
				<!--26/08/2024 PhanNH Thêm trạng thái duyệt cho chứng từ-->
				<Eval_ApprovalStatus_ResetValue>
					<DataMember>ApprovalStatus</DataMember>
					<Value>NULL</Value>
				</Eval_ApprovalStatus_ResetValue>
			</RowCopied>
			<ColumnChanging>
				<DocDate>
					<Eval_DocNo_ResetValue />
				</DocDate>
				<CustomerName>
					<Eval_TaxRegName_ClearIfSameAsCustomerName>
						<DataMember>TaxRegName</DataMember>
						<Expr>ISNULL(CustomerName,'')=ISNULL(TaxRegName,'')</Expr>
						<Value>NULL</Value>
						<bSuppressChangeEvents>True</bSuppressChangeEvents>
					</Eval_TaxRegName_ClearIfSameAsCustomerName>
				</CustomerName>
				<TaxRegNo_Customer>
					<Eval_TaxRegNo_ClearIfSameAsTaxRegNo_Customer>
						<DataMember>TaxRegNo</DataMember>
						<Expr>ISNULL(TaxRegNo_Customer,'')=ISNULL(TaxRegNo,'')</Expr>
						<Value>NULL</Value>
						<bSuppressChangeEvents>True</bSuppressChangeEvents>
					</Eval_TaxRegNo_ClearIfSameAsTaxRegNo_Customer>
				</TaxRegNo_Customer>
				<CurrencyCode>
					<!--Eval_Id_Currency_SetNullValue>
            <DataMember>Id_Currency</DataMember>
            <Value>NULL</Value>
          </Eval_Id_Currency_SetNullValue-->
					<Eval_ExchangeRate_ResetIfChangeByUser>
						<DataMember>ExchangeRate_Currency,ExchangeRate</DataMember>
						<Value>NULL</Value>
						<bSuppressChangeEvents>True</bSuppressChangeEvents>
					</Eval_ExchangeRate_ResetIfChangeByUser>
				</CurrencyCode>
			</ColumnChanging>
			<ColumnChanged>
				<DocDate>
					<Eval_ExchangeRate_Currency_GetExchangeRate />
					<Eval_DocNo_DefaultValue>Empty(DocNo) AND EMPTY(AutoNumbering)</Eval_DocNo_DefaultValue>
					<Eval_Ct0_DocDate_GetValueFromParent />
					<Eval_AtchDocDate_SetValue />
					<Eval_AtchDoc_DocDate_GetValueFromParent />
					<!--29/07/2024 PhanNH thêm nút tích lưu nháp-->
					<Eval_UsingIsDraftData_SetValue />
				</DocDate>
				<DocNo>
					<Eval_DocNo_DefaultValue>Empty(DocNo) AND EMPTY(AutoNumbering)</Eval_DocNo_DefaultValue>
					<Eval_AtchDocNo_SetValue />
				</DocNo>
				<Description>
					<Eval_AtchDoc_Description_GetValueFromParent />
				</Description>
				<CurrencyCode>
					<Eval_Controls_Visible>
						<DataMember>TotalAmount0,TotalAmount3,TotalAmount,TotalAmount4</DataMember>
						<Controls>
							<Name>BravoGridContainer.Item_Purchase.Amount9.DiscountAmount.UnitCost.Amount3,BravoGridContainer.Item_AtchDoc.AmountBeforeTax.Amount</Name>
							<Visible>CurrencyCode&lt;&gt;CONFIG('M_Ma_Tte0')</Visible>
						</Controls>
					</Eval_Controls_Visible>
					<Eval_DiscountAmount1_VisibleWhen />
					<Eval_Enable_ExchangeRate>
						<DataMember>ExchangeRate</DataMember>
						<Controls>
							<Enabled>CurrencyCode&lt;&gt;CONFIG('M_Ma_Tte0')</Enabled>
						</Controls>
					</Eval_Enable_ExchangeRate>
					<Eval_MoneyDiffValue_GetValue />
				</CurrencyCode>
				<Id_Currency>
					<Eval_ExchangeRate_Currency_GetExchangeRate>!Empty(Id_Currency)</Eval_ExchangeRate_Currency_GetExchangeRate>
				</Id_Currency>
				<ExchangeRate_Currency>
					<Eval_ExchangeRate_DefaultValue>!Empty(Id_Currency)</Eval_ExchangeRate_DefaultValue>
				</ExchangeRate_Currency>
				<ExchangeRate>
					<Eval_ExchangeRate_Currency_GetExchangeRate>Empty(ExchangeRate) AND Empty(ExchangeRate_Currency)</Eval_ExchangeRate_Currency_GetExchangeRate>
					<Eval_ExchangeRate_DefaultValue>Empty(ExchangeRate) AND !Empty(ExchangeRate_Currency)</Eval_ExchangeRate_DefaultValue>
					<EvaluatorGroup_ExchangeRate />
					<!-- 17/04/2023 ThắngĐQ: Kiểm tra nhập mua có chọn CP -->
					<Eval_CheckRelationCP_SetValue>ROWSTATE()&lt;&gt;'Added'</Eval_CheckRelationCP_SetValue>
					<Eval_Ct0_Amount3 />
				</ExchangeRate>
				<ExchangeRateOperator />
				<DecimalRound>
					<Eval_Ct0_OriginalAmount9_RoundWhenChangeDecimalRound />
					<Eval_Ct0_OriginalAmount4_RoundWhenChangeDecimalRound />
					<Eval_Ct0_OriginalAmount_RoundWhenChangeDecimalRound />
					<Eval_OriginalDiscountAmount_RoundWhenChangeDecimalRound />
					<Eval_Ct0_OriginalAmount3_RoundWhenChangeDecimalRound />
					<Eval_CurrencyCode0_FormatWhen>
						<DataMember>TotalOriginalAmount0,TotalOriginalAmount3,TotalOriginalAmount,TotalOriginalAmount4,OriginalDiscountAmount,TotalOriginalAmount3_5Percent,TotalOriginalAmount3_8Percent,TotalOriginalAmount3_10Percent,TotalOriginalAmount3_OtherPercent</DataMember>
						<Controls>
							<Name>panelSummary.TotalOriginalAmount0.TotalOriginalAmount3.TotalOriginalAmount4.OriginalDiscountAmount.TotalOriginalAmount.AtchDoc_TotalOriginalAmountBeforeTax.AtchDoc_TotalAmountBeforeTax.OriginalDiscountAmount,BravoGridContainer.Item_Purchase.OriginalAmount9.OriginalAmount4.OriginalDiscountAmount.OriginalDiscountAmount1.OriginalAmount3,BravoGridContainer.Item_AtchDoc.OriginalAmount.OriginalAmountBeforeTax</Name>
							<Format>FormatCurrency(CurrencyCode)</Format>
						</Controls>
					</Eval_CurrencyCode0_FormatWhen>
				</DecimalRound>
				<CustomerId>
					<Eval_Ct0_CustomerId_GetValueFromParent />
					<Eval_AtchDoc_CustomerId_GetValueFromParent />
				</CustomerId>
				<Person_Customer>
					<Eval_Person_DefaultValue />
				</Person_Customer>
				<CustomerName>
					<Eval_Person_DefaultValue>Empty(Person_Customer)</Eval_Person_DefaultValue>
					<Eval_TaxRegName_DefaultValue />
				</CustomerName>
				<TaxRegNo_Customer>
					<Eval_TaxRegNo_DefaultValue />
				</TaxRegNo_Customer>
				<Person>
					<Eval_Person_DefaultValue>Empty(Person)</Eval_Person_DefaultValue>
				</Person>
				<TransCode>
					<Eval_Ct0_TransCode_GetValueFromParent />
					<Eval_CreditAccount_AutoValue />
				</TransCode>
				<Account_Trans>
					<Eval_CreditAccount_AutoValue />
				</Account_Trans>
				<ItemAccountType>
					<!--18/03/2019 ChamVT sửa điều kiện !empty(ItemAccountType) thành ItemAccountType IS NOT NULL-->
					<Eval_Ct0_DebitAccount_AutoValue>ItemAccountType IS NOT NULL</Eval_Ct0_DebitAccount_AutoValue>
				</ItemAccountType>
				<BizDocId_PO>
					<Eval_Ct0_BizDocId_PO_GetValueFromParent />
				</BizDocId_PO>
				<BizDocId_SO>
					<Eval_Ct0_BizDocId_SO_GetValueFromParent />
				</BizDocId_SO>
				<StatsDocId_WO>
					<Eval_Ct0_StatsDocId_WO_GetValueFromParent />
				</StatsDocId_WO>
				<WorkProcessId>
					<Eval_Ct0_WorkProcessId_GetValueFromParent />
				</WorkProcessId>
				<CostCentreId>
					<Eval_Ct0_CostCentreId_GetValueFromParent />
				</CostCentreId>
				<ProductId>
					<Eval_Ct0_ProductId_GetValueFromParent />
				</ProductId>
				<WarehouseId>
					<Eval_Ct0_WarehouseId_GetValueFromParent />
				</WarehouseId>
				<ExpenseCatgId>
					<Eval_Ct0_ExpenseCatgId_GetValueFromParent />
				</ExpenseCatgId>
				<DeptId>
					<Eval_Ct0_DeptId_GetValueFromParent />
				</DeptId>
				<JobId>
					<Eval_Ct0_JobId_GetValueFromParent />
				</JobId>
				<EmployeeId>
					<Eval_Ct0_EmployeeId_GetValueFromParent />
					<Eval_AtchDoc_EmployeeId_GetValueFromParent />
				</EmployeeId>
				<DocumentViewStyle>
					<Eval_DocumentViewStyle0_VisibleWhen>
						<DataMember>CreditAccount</DataMember>
						<Controls>
							<Name>lblCreditAccount,BravoGridContainer.Item_Purchase.DebitAccount</Name>
							<Visible>DocumentViewStyle=0</Visible>
						</Controls>
					</Eval_DocumentViewStyle0_VisibleWhen>
					<Eval_TaxInfo_VisibleWhen />
				</DocumentViewStyle>
				<CreditAccount>
					<Eval_Ct0_CreditAccount_GetValueFromParent />
				</CreditAccount>
				<TaxRegNo>
					<Eval_TaxRegNo_DefaultValue>!Empty(TotalAmount3) AND Empty(TaxRegNo)</Eval_TaxRegNo_DefaultValue>
					<Eval_AtchDoc_TaxRegNo_GetValueFromParent />
				</TaxRegNo>
				<TaxRegName>
					<Eval_TaxRegName_DefaultValue>!Empty(TotalAmount3) AND Empty(TaxRegName)</Eval_TaxRegName_DefaultValue>
					<Eval_AtchDoc_TaxRegName_GetValueFromParent />
				</TaxRegName>
				<AtchDocDate>
					<Eval_AtchDocDate_SetValue />
					<Eval_AtchDoc_AtchDocDate_GetValueFromParent />
				</AtchDocDate>
				<AtchDocNo>
					<Eval_AtchDoc_AtchDocNo_GetValueFromParent />
				</AtchDocNo>
				<AtchDocSerialNo>
					<Eval_AtchDoc_AtchDocSerialNo_GetValueFromParent />
				</AtchDocSerialNo>
				<AtchDocFormNo>
					<Eval_AtchDoc_AtchDocFormNo_GetValueFromParent />
				</AtchDocFormNo>
				<DueDate>
					<Eval_AtchDoc_DueDate_GetValueFromParent />
				</DueDate>
				<TotalOriginalAmount0>
					<Eval_TotalAmount0 />
					<Eval_TotalOriginalAmount />
				</TotalOriginalAmount0>
				<TotalAmount0>
					<Eval_TotalAmount3 />
					<Eval_TotalAmount />
				</TotalAmount0>
				<TotalOriginalAmount3>
					<Eval_TotalOriginalAmount />
					<Eval_TotalAmount3 />
				</TotalOriginalAmount3>
				<TotalAmount3>
					<Eval_TotalAmount />
					<Eval_TaxRegNo_DefaultValue />
					<Eval_TaxRegName_DefaultValue />
					<Eval_AttachedTaxInfo />
				</TotalAmount3>
				<DocStatusDefault>
					<Eval_DocStatusDefault_DefaultFromUser />
					<Eval_DocStatusDefault_Enabled />
				</DocStatusDefault>
				<DocumentViewStyleDefault>
					<Eval_DocumentViewStyle_DefaultFromUser>
						<DataMember>DocumentViewStyle</DataMember>
						<Value>DocumentViewStyleDefault</Value>
						<Expr>DocumentViewStyleDefault IS NOT NULL</Expr>
					</Eval_DocumentViewStyle_DefaultFromUser>
				</DocumentViewStyleDefault>
				<CheckExpenseCatgId>
					<Eval_Ct0_CheckExpenseCatgId_GetValueFromParent>UsingExpenseCatgId=2</Eval_Ct0_CheckExpenseCatgId_GetValueFromParent>
				</CheckExpenseCatgId>
				<CheckDeptId>
					<Eval_Ct0_CheckDeptId_GetValueFromParent>UsingDeptId=2</Eval_Ct0_CheckDeptId_GetValueFromParent>
				</CheckDeptId>
				<CheckJobId>
					<Eval_Ct0_CheckJobId_GetValueFromParent>UsingJobId=2</Eval_Ct0_CheckJobId_GetValueFromParent>
				</CheckJobId>
				<CheckBizDocId_PO>
					<Eval_Ct0_CheckBizDocId_PO_GetValueFromParent>UsingBizDocId_PO=2</Eval_Ct0_CheckBizDocId_PO_GetValueFromParent>
				</CheckBizDocId_PO>
				<CheckBizDocId_SO>
					<Eval_Ct0_CheckBizDocId_SO_GetValueFromParent>UsingBizDocId_SO=2</Eval_Ct0_CheckBizDocId_SO_GetValueFromParent>
				</CheckBizDocId_SO>
				<PostGL>
					<Eval_DocStatus_SetStyle>
						<DataMember>DocStatus</DataMember>
						<Controls>
							<Style>IIF(PostGL=0 OR IsCancelled=1,'ForeColor:Red;','ForeColor:Blue;');</Style>
						</Controls>
					</Eval_DocStatus_SetStyle>
				</PostGL>
				<AutoNumbering>
					<Eval_DocNo_EnabledWhen>
						<DataMember>DocNo</DataMember>
						<Controls>
							<Enabled>EMPTY(AutoNumbering)</Enabled>
						</Controls>
					</Eval_DocNo_EnabledWhen>
				</AutoNumbering>
				<CustomFieldId1>
					<Eval_Ct0_CustomFieldId1_DefaultValueFromParent />
				</CustomFieldId1>
				<CustomFieldId2>
					<Eval_Ct0_CustomFieldId2_DefaultValueFromParent />
				</CustomFieldId2>
				<CustomFieldId3>
					<Eval_Ct0_CustomFieldId3_DefaultValueFromParent />
				</CustomFieldId3>
				<CheckCostCentre>
					<Eval_Ct0_CheckCostCentre_GetValueFromParent>UsingCostCentreId=2</Eval_Ct0_CheckCostCentre_GetValueFromParent>
				</CheckCostCentre>
				<CostAllocMethod>
					<Eval_IsAllocateDiscount_SetValue />
					<Eval_DiscountRate_DiscountAmount_ResetValue>CostAllocMethod IS NULL</Eval_DiscountRate_DiscountAmount_ResetValue>
					<Eval_Ct0_AllocationRate_GetValue />
					<Eval_AllocationRate_Exists />
					<Eval_Ct0_OriginalDiscountAmount1_AllocFromParent>!Empty(OriginalDiscountAmount) AND !Empty(_AllocationRate)</Eval_Ct0_OriginalDiscountAmount1_AllocFromParent>
					<Eval_IsAllocateDiscount_ResetValue />
				</CostAllocMethod>
				<_AllocationRate>
					<Eval_IsAllocateDiscount_SetValue />
					<Eval_CostAllocMethod_DefaultValue>
						<DataMember>CostAllocMethod</DataMember>
						<Value>0</Value>
						<Expr>CostAllocMethod IS NULL AND !Empty(OriginalDiscountAmount)</Expr>
					</Eval_CostAllocMethod_DefaultValue>
					<Eval_Ct0_OriginalDiscountAmount1_AllocFromParent>!Empty(OriginalDiscountAmount) AND !Empty(_AllocationRate)</Eval_Ct0_OriginalDiscountAmount1_AllocFromParent>
					<Eval_IsAllocateDiscount_ResetValue />
				</_AllocationRate>
				<IsAllocateDiscount>
					<Eval_Ct0_OriginalDiscountAmount1_ResetValue>IsAllocateDiscount=1</Eval_Ct0_OriginalDiscountAmount1_ResetValue>
				</IsAllocateDiscount>
				<!--29/05/2024 thêm khoản mục dòng tiền tài chính để lên DL báo cáo LCTT, TMBCTC-->
				<NoteFactorId>
					<Eval_Ct0_NoteFactorId_DefaultValueFromParent />
				</NoteFactorId>
				<DiscountRate>
					<Eval_OriginalDiscountAmount />
				</DiscountRate>
				<OriginalDiscountAmount>
					<Eval_OriginalDiscountAmount>UpdatedColumn()='OriginalDiscountAmount' AND !Empty(DiscountRate)</Eval_OriginalDiscountAmount>
					<Eval_Ct0_OriginalDiscountAmount1_ResetValue />
					<Eval_IsAllocateDiscount_SetValue />
					<Eval_CostAllocMethod_SetValue>
						<DataMember>CostAllocMethod</DataMember>
						<Value>IIF(Empty(OriginalDiscountAmount),NULL,1)</Value>
						<Expr>Empty(OriginalDiscountAmount) OR (!Empty(OriginalDiscountAmount) AND CostAllocMethod IS NULL)</Expr>
					</Eval_CostAllocMethod_SetValue>
					<Eval_Ct0_OriginalDiscountAmount1_AllocFromParent>!Empty(_AllocationRate)</Eval_Ct0_OriginalDiscountAmount1_AllocFromParent>
					<Eval_DiscountAmount />
					<Eval_OriginalDiscountAmount1_VisibleWhen />
					<Eval_DiscountAmount1_VisibleWhen />
					<Eval_Controls_Visible />
					<Eval_IsAllocateDiscount_ResetValue />
				</OriginalDiscountAmount>
				<AttachedTaxInfo>
					<Eval_TaxInfo_VisibleWhen>
						<Controls>
							<Name>BravoGridContainer.Item_Purchase.TaxRate.DebitAccount3.CreditAccount3.AtchDocOrder.AtchDocItemName</Name>
							<Visible>IsNull(AttachedTaxInfo,0)&lt;&gt;0 AND Exists(Ct0, !Empty(TaxCode)) AND DocumentViewStyle=0</Visible>
						</Controls>
					</Eval_TaxInfo_VisibleWhen>
				</AttachedTaxInfo>
				<!--29/07/2024 PhanNH thêm nút tích lưu nháp-->
				<UsingIsDraftData>
					<Eval_IsDraftData_VisibleWhen>
						<DataMember>IsDraftData</DataMember>
						<Controls>
							<Visible>!Empty(UsingIsDraftData)</Visible>
						</Controls>
					</Eval_IsDraftData_VisibleWhen>
				</UsingIsDraftData>
			</ColumnChanged>
			<EvaluatorGroups>
				<EvaluatorGroup_ExchangeRate>
					<Eval_Flag_ExchangeRateStatus>
						<DataMember>_Flag</DataMember>
						<Value>'ExchangeRate'</Value>
					</Eval_Flag_ExchangeRateStatus>
					<Eval_Ct0_UnitCost_FromParent />
					<Eval_Ct0_Amount9_FromParent />
					<Eval_Ct0_Amount_FromParent />
					<Eval_Ct0_DiscountAmount />
					<Eval_Ct0_DiscountAmount1 />
					<Eval_Ct0_Amount4 />
					<Eval_TotalAmount0 />
					<Eval_TotalAmount4 />
					<Eval_TotalAmount3 />
					<Eval_Flag_Reset />
				</EvaluatorGroup_ExchangeRate>
			</EvaluatorGroups>
			<Evaluators>
				<Eval_ConvertFromB30BizDoc_PO_GetData>
					<ClassName>BravoServerConstraint</ClassName>
					<CommandKey>BizDocPO_GetData</CommandKey>
					<Command>usp_B30AccDocPurchase_ConvertFromB30BizDoc_PO</Command>
					<Parameters>
						<CurrencyCode>CurrencyCode</CurrencyCode>
						<ExchangeRate>ExchangeRate</ExchangeRate>
					</Parameters>
					<DataMember>Ct0</DataMember>
					<zCtorArgs>AutoSearch=True;FilterKey=CustomerId='{=ISNULL(CustomerId,'')}' AND DocDate&lt;='{=DocDate}' AND PostSL=1 AND ISNULL(Closed,0)=0 AND ISNULL(Finished,0)=0;</zCtorArgs>
					<Expr>!Empty(CustomerId)</Expr>
					<zTargetValueMember>BizDocId_PO</zTargetValueMember>
					<zSourceValueMember>BizDocId</zSourceValueMember>
					<Text />
				</Eval_ConvertFromB30BizDoc_PO_GetData>
				<Eval_ConvertFromB30BizDoc_PO_GetData_Detail>
					<ClassName>BravoServerConstraint</ClassName>
					<CommandKey>BizDocPO_GetData_Detail</CommandKey>
					<Command>usp_B30AccDocPurchase_ConvertFromB30BizDocDetailPO</Command>
					<DataMember>Ct0</DataMember>
					<Parameters>
						<CurrencyCode>CurrencyCode</CurrencyCode>
						<ExchangeRate>ExchangeRate</ExchangeRate>
					</Parameters>
					<!--12/08/2024 theo dõi thực hiện đơn hàng-->
					<zCtorArgs>AutoSearch=True;FilterKey=st.PostSL=1 AND Ct.Closed=0 AND ISNULL(Ct.Finished,0)=0 AND Ct.CustomerId='{=ISNULL(CustomerId,'')}' AND Ct.DocDate&lt;='{=DocDate}' AND Ct0.Quantity &gt; Ct0.TransferedQuantity;</zCtorArgs>
					<Expr>!Empty(CustomerId)</Expr>
					<zTargetValueMember>BizDocDetailId</zTargetValueMember>
					<Text />
				</Eval_ConvertFromB30BizDoc_PO_GetData_Detail>
				<Eval_Purchase_Select>
					<Controls>
						<Name>BravoGridContainer.Item_Purchase</Name>
						<Select>Indicated</Select>
					</Controls>
				</Eval_Purchase_Select>
				<Eval_ConvertFromB30AccDoc_Sales_GetData>
					<ClassName>BravoServerConstraint</ClassName>
					<CommandKey>H2C</CommandKey>
					<Command>usp_B30AccDocPurchase_ConvertFromB30AccDoc_HD</Command>
					<Parameters>
						<CurrencyCode>CurrencyCode</CurrencyCode>
						<ExchangeRate>ExchangeRate</ExchangeRate>
					</Parameters>
					<DataMember>Ct0</DataMember>
					<zCtorArgs>AutoSearch=True;FilterKey=CustomerType=3 AND DocDate&lt;='{=DocDate}' AND PostSL=1 AND BranchCode&lt;&gt;'{=Branch()}';</zCtorArgs>
					<Text />
				</Eval_ConvertFromB30AccDoc_Sales_GetData>
				<Eval_Report_CurrentStock>
					<ClassName>BravoCommandKey</ClassName>
					<CommandKey>REP00_CurrentStock</CommandKey>
					<zCtorArgs>BranchCode='{=BranchCode}';CurrencyCode0='{=CurrencyCode}';DocDate='{=DocDate}';DetailData={=GETXMLDATA('Ct0', 'ItemId,WarehouseId')};StartupCommandKey=Refresh;</zCtorArgs>
				</Eval_Report_CurrentStock>
				<Eval_MoneyDiffValue_GetValue>
					<ClassName>BravoServerConstraint</ClassName>
					<Command>usp_B20Currency_GetMoneyDiff</Command>
					<Parameters>CurrencyCode,BranchCode</Parameters>
					<DataMember>MoneyDiffValue,VATDiffValue,MoneyDiffValue0,VATDiffValue0</DataMember>
					<Text />
				</Eval_MoneyDiffValue_GetValue>
				<Eval_UserId_BindingMembers>
					<ClassName>BravoBindingMember</ClassName>
					<DataMember>UserId</DataMember>
					<LookupKey>UserList</LookupKey>
					<bindingMembers>
						<UserName>UserName</UserName>
					</bindingMembers>
					<Expr>ISNULL(UserId,0)&gt;0</Expr>
				</Eval_UserId_BindingMembers>
				<Eval_DocCodeUserId_BindingMembers>
					<ClassName>BravoServerConstraint</ClassName>
					<Command>usp_B00DmCt_GetDefaultValue</Command>
					<DataMember>DocStatusDefault,DocumentViewStyleDefault</DataMember>
					<Parameters>
						<DocCode>DocCode</DocCode>
						<BranchCode>BranchCode</BranchCode>
						<nUserId>UserId</nUserId>
					</Parameters>
					<Text />
				</Eval_DocCodeUserId_BindingMembers>
				<Eval_DocCode_BindingMembers>
					<bindingMembers>
						<TransTypeCode>TransTypeCode</TransTypeCode>
						<Nh_Ct>DocGroup</Nh_Ct>
						<Ma_Nvu>Ma_Nvu</Ma_Nvu>
						<Ma_Gd_Ct>
							<Condition0>
								<DataMember>TransCode</DataMember>
								<Expr>Empty(TransCode)</Expr>
							</Condition0>
						</Ma_Gd_Ct>
						<Tk_No_Ct>
							<Condition0>
								<DataMember>DebitAccount</DataMember>
								<Expr>Empty(DebitAccount)</Expr>
							</Condition0>
						</Tk_No_Ct>
						<Tk_Co_Ct>
							<Condition0>
								<DataMember>CreditAccount</DataMember>
								<Expr>Empty(CreditAccount)</Expr>
							</Condition0>
						</Tk_Co_Ct>
						<TaxType_Ct>TaxType_Ct</TaxType_Ct>
						<DocStatus_Ct>DocStatus</DocStatus_Ct>
						<ExchangeRateType_Ct>ExchangeRateType</ExchangeRateType_Ct>
						<UsingExpenseCatgId>UsingExpenseCatgId</UsingExpenseCatgId>
						<UsingDeptId>UsingDeptId</UsingDeptId>
						<UsingJobId>UsingJobId</UsingJobId>
						<UsingWarehouseId>UsingWarehouseId</UsingWarehouseId>
						<UsingEmployeeId>UsingEmployeeId</UsingEmployeeId>
						<UsingProductId>UsingProductId</UsingProductId>
						<!--03/11/2020: PhongNVT chuyển cách lấy số liệu từ C1, C2 sang PO, SO
            <UsingBizDocId_C2>UsingBizDocId_C2</UsingBizDocId_C2>
            <UsingBizDocId_C1>UsingBizDocId_C1</UsingBizDocId_C1-->
						<UsingBizDocId_PO>UsingBizDocId_PO</UsingBizDocId_PO>
						<UsingBizDocId_SO>UsingBizDocId_SO</UsingBizDocId_SO>
						<UsingStatsDocId_WO>UsingStatsDocId_WO</UsingStatsDocId_WO>
						<UsingWorkProcessId>UsingWorkProcessId</UsingWorkProcessId>
						<UsingCostCentreId>UsingCostCentreId</UsingCostCentreId>
						<DocumentViewStyle>DocumentViewStyle</DocumentViewStyle>
						<DocCodeNumbering>DocCodeNumbering</DocCodeNumbering>
						<UsingCheckINVWhenNotEnough>UsingCheckINVWhenNotEnough</UsingCheckINVWhenNotEnough>
						<AutoPrintVoucher>AutoPrintVoucher</AutoPrintVoucher>
						<AutoNumbering>AutoNumbering</AutoNumbering>
						<UsingCustomFieldId1>UsingCustomFieldId1</UsingCustomFieldId1>
						<UsingCustomFieldId2>UsingCustomFieldId2</UsingCustomFieldId2>
						<UsingCustomFieldId3>UsingCustomFieldId3</UsingCustomFieldId3>
						<!--29/05/2024 thêm khoản mục dòng tiền tài chính để lên DL báo cáo LCTT, TMBCTC-->
						<UsingNoteFactorId>UsingNoteFactorId</UsingNoteFactorId>
					</bindingMembers>
					<ClassName>BravoBindingMember</ClassName>
					<DataMember>DocCode</DataMember>
					<LookupKey>DmCt</LookupKey>
				</Eval_DocCode_BindingMembers>
				<Eval_DocNo_DefaultValue>
					<ClassName>BravoServerConstraint</ClassName>
					<DataMember>DocNo</DataMember>
					<Command>usp_B30AccDoc_DefaultDocNo</Command>
					<dataAccessMode>Write</dataAccessMode>
					<!--Parameters>BranchCode,Stt,DocCode,DocDate,RowId_VoucherRegister,DocNo</Parameters-->
					<Parameters>
						<BranchCode>BranchCode</BranchCode>
						<Stt>Stt</Stt>
						<DocCode>DocCode</DocCode>
						<DocDate>DocDate</DocDate>
						<RowId_VoucherRegister>RowId_VoucherRegister</RowId_VoucherRegister>
						<DocNo>DocNo</DocNo>
						<outputType>1</outputType>
					</Parameters>
					<Text />
				</Eval_DocNo_DefaultValue>
				<Eval_Person_DefaultValue>
					<DataMember>Person</DataMember>
					<Value>IIF(ISNULL(Person_Customer,'')='',CustomerName,Person_Customer)</Value>
				</Eval_Person_DefaultValue>
				<Eval_TaxRegNo_DefaultValue>
					<DataMember>TaxRegNo</DataMember>
					<Value>IIF(Empty(TotalAmount3),Null,TaxRegNo_Customer)</Value>
				</Eval_TaxRegNo_DefaultValue>
				<Eval_TaxRegName_DefaultValue>
					<DataMember>TaxRegName</DataMember>
					<Value>IIF(Empty(TotalAmount3),Null,CustomerName)</Value>
				</Eval_TaxRegName_DefaultValue>
				<Eval_ExchangeRate_DefaultValue>
					<DataMember>ExchangeRate</DataMember>
					<Expr>Empty(ExchangeRate) AND !Empty(ExchangeRate_Currency)</Expr>
					<Value>ExchangeRate_Currency</Value>
				</Eval_ExchangeRate_DefaultValue>
				<Eval_ExchangeRate_Currency_GetExchangeRate>
					<ClassName>BravoServerConstraint</ClassName>
					<DataMember>ExchangeRate_Currency</DataMember>
					<Command>ufn_B20Currency_GetExchangeRate</Command>
					<Parameters>BranchCode,DocDate,Id_Currency,ExchangeRateType</Parameters>
					<Expr>!Empty(Id_Currency)</Expr>
					<Text />
				</Eval_ExchangeRate_Currency_GetExchangeRate>
				<Eval_CreditAccount_AutoValue>
					<DataMember>CreditAccount</DataMember>
					<Value>Account_Trans+ISNULL(CASE(CurrencySegmentType,'',SegmentAccount1,SegmentAccount2,SegmentAccount3),'')</Value>
					<Expr>!Empty(Account_Trans)</Expr>
				</Eval_CreditAccount_AutoValue>
				<Eval_TotalOriginalAmount0>
					<DataMember>TotalOriginalAmount0</DataMember>
					<Value>SUM(Child(Ct0).OriginalAmount)</Value>
				</Eval_TotalOriginalAmount0>
				<Eval_TotalAmount0>
					<DataMember>TotalAmount0</DataMember>
					<Value>IIF(CurrencyCode=CONFIG('M_Ma_Tte0'),TotalOriginalAmount0,SUM(Child(ct0).Amount))</Value>
				</Eval_TotalAmount0>
				<Eval_TotalOriginalAmount3>
					<DataMember>TotalOriginalAmount3</DataMember>
					<Value>SUM(Child(Ct0).OriginalAmount3)</Value>
				</Eval_TotalOriginalAmount3>
				<Eval_TotalAmount3>
					<DataMember>TotalAmount3</DataMember>
					<Value>SUM(Child(Ct0).Amount3)</Value>
				</Eval_TotalAmount3>
				<Eval_TotalOriginalAmount>
					<DataMember>TotalOriginalAmount</DataMember>
					<Value>TotalOriginalAmount0+ISNULL(TotalOriginalAmount3,0)</Value>
				</Eval_TotalOriginalAmount>
				<Eval_TotalAmount>
					<DataMember>TotalAmount</DataMember>
					<Value>TotalAmount0+ISNULL(TotalAmount3,0)</Value>
				</Eval_TotalAmount>
				<Eval_Flag_Reset>
					<DataMember>_Flag</DataMember>
					<Value>NULL</Value>
				</Eval_Flag_Reset>
				<Eval_TotalQuantity>
					<DataMember>TotalQuantity</DataMember>
					<Value>SUM(Child(Ct0).Quantity9)</Value>
				</Eval_TotalQuantity>
				<Eval_GetDataFromAtchDoc>
					<ClassName>BravoCopyValue</ClassName>
					<CopyValues>
						<AtchDocDate>VLOOKUP(Child(AtchDoc),AtchDocDate,!Empty(AtchDocDate))</AtchDocDate>
						<AtchDocNo>VLOOKUP(Child(AtchDoc),AtchDocNo,!Empty(AtchDocNo))</AtchDocNo>
						<AtchDocSerialNo>VLOOKUP(Child(AtchDoc),AtchDocSerialNo,!Empty(AtchDocSerialNo))</AtchDocSerialNo>
						<AtchDocFormNo>VLOOKUP(Child(AtchDoc),AtchDocFormNo,!Empty(AtchDocFormNo))</AtchDocFormNo>
						<DueDate>VLOOKUP(Child(AtchDoc),DueDate,!Empty(DueDate))</DueDate>
						<TaxRegName>VLOOKUP(Child(AtchDoc),TaxRegName,!Empty(TaxRegName))</TaxRegName>
						<TaxRegNo>VLOOKUP(Child(AtchDoc),TaxRegNo,!Empty(TaxRegNo))</TaxRegNo>
						<EInvoiceLink>VLOOKUP(Child(AtchDoc),EInvoiceLink,!Empty(EInvoiceLink))</EInvoiceLink>
						<EInvoiceKey>VLOOKUP(Child(AtchDoc),EInvoiceKey,!Empty(EInvoiceKey))</EInvoiceKey>
					</CopyValues>
				</Eval_GetDataFromAtchDoc>
				<Eval_AtchDocDate_SetValue>
					<DataMember>AtchDocDate</DataMember>
					<Value>DocDate</Value>
					<Expr>Empty(AtchDocDate) OR Empty(TotalAmount3))</Expr>
				</Eval_AtchDocDate_SetValue>
				<Eval_AtchDocNo_SetValue>
					<DataMember>AtchDocNo</DataMember>
					<Value>DocNo</Value>
					<Expr>Empty(AtchDocNo) OR Empty(TotalAmount3)</Expr>
				</Eval_AtchDocNo_SetValue>
				<Eval_TotalAmount3_GetValueFromAtchDoc>
					<DataMember>TotalAmount3</DataMember>
					<Value>IIF(CurrencyCode=CONFIG('M_Ma_Tte0'),TotalOriginalAmount3,SUM(Child(AtchDoc).Amount))</Value>
					<bSuppressChangeEvents>True</bSuppressChangeEvents>
				</Eval_TotalAmount3_GetValueFromAtchDoc>
				<Eval_AtchDoc_TotalOriginalAmountBeforeTax>
					<DataMember>AtchDoc_TotalOriginalAmountBeforeTax</DataMember>
					<Value>SUM(Child(AtchDoc).OriginalAmountBeforeTax)</Value>
				</Eval_AtchDoc_TotalOriginalAmountBeforeTax>
				<Eval_AtchDoc_TotalAmountBeforeTax>
					<DataMember>AtchDoc_TotalAmountBeforeTax</DataMember>
					<Value>IIF(CurrencyCode=CONFIG('M_Ma_Tte0'),AtchDoc_TotalOriginalAmountBeforeTax,SUM(Child(AtchDoc).AmountBeforeTax))</Value>
				</Eval_AtchDoc_TotalAmountBeforeTax>
				<!-- Khác -->
				<Eval_DocStatusDefault_DefaultFromUser>
					<DataMember>DocStatus</DataMember>
					<Value>ISNULL(DocStatusDefault,DocStatus)</Value>
					<Expr>DocStatusDefault IS NOT NULL AND Empty(Stt)</Expr>
				</Eval_DocStatusDefault_DefaultFromUser>
				<Eval_DocStatusDefault_Enabled>
					<DataMember>DocStatus</DataMember>
					<bDocStatusVisible>Empty(DocStatusDefault)</bDocStatusVisible>
				</Eval_DocStatusDefault_Enabled>
				<Eval_ProductDebitAccount_GetValueFromChild>
					<DataMember>ProductDebitAccount</DataMember>
					<Value>VLOOKUP(Child(Ct0),ProductDebitAccount,ProductDebitAccount=1)</Value>
					<Expr>ISNULL(UsingProductId,0)=1</Expr>
				</Eval_ProductDebitAccount_GetValueFromChild>
				<Eval_ExchangeRateRunning_SetValue>
					<DataMember>ExchangeRateRunning</DataMember>
					<Value>ISNULL(ExchangeRateRunning,0)+1</Value>
				</Eval_ExchangeRateRunning_SetValue>
				<Eval_ConvertFromBizDocRCDetail_GetData>
					<ClassName>BravoServerConstraint</ClassName>
					<CommandKey>BizDocAll</CommandKey>
					<Command>usp_B30AccDocPurchase_ConvertFromB30BizDocRC</Command>
					<DataMember>Ct0</DataMember>
					<zCtorArgs>AutoSearch=True;FilterKey=DocCode='RC'  AND CustomerId='{=ISNULL(CustomerId,'')}'        
            AND DocDate &lt;= '{=DocDate}' AND BranchCode='{=BRANCH()}' AND PostSL=1 AND IsActive=1;SelectDataMode=SingleValue;
            </zCtorArgs>
					<Parameters>
						<CurrencyCode>CurrencyCode</CurrencyCode>
						<ExchangeRate>ExchangeRate</ExchangeRate>
						<Quality>'OK'</Quality>
						<DocDate>DocDate</DocDate>
					</Parameters>
					<mergingData>Reset</mergingData>
					<Expr>!Empty(CustomerId)</Expr>
					<Text />
				</Eval_ConvertFromBizDocRCDetail_GetData>
				<Eval_RelationRefreshIdList_GetValue>
					<ClassName>BravoServerConstraint</ClassName>
					<Command>usp_B30DocRelation_GetRefreshInformation</Command>
					<Parameters>
						<DocCode>DocCode</DocCode>
						<DocStatus>DocStatus</DocStatus>
						<RelationColumns>'BizDocId_PO'</RelationColumns>
						<RowId_RelationDoc>Ct0.BizDocId_PO</RowId_RelationDoc>
						<RelationRefreshTable>
							<Direction>Output</Direction>
						</RelationRefreshTable>
						<RelationRefreshIdList>
							<Name>RelationRefreshIdList</Name>
							<Direction>InputOutput</Direction>
						</RelationRefreshIdList>
					</Parameters>
					<autoOutputMember>UpdateScopeRow</autoOutputMember>
					<Text />
				</Eval_RelationRefreshIdList_GetValue>
				<!-- 17/04/2023 ThắngĐQ: Kiểm tra nhập mua có chọn CP -->
				<Eval_usp_B30AccDocPurchase_GetRelationCP>
					<ClassName>BravoServerConstraint</ClassName>
					<Command>usp_B30AccDocPurchase_GetRelationCP</Command>
					<DataMember>RelationCP</DataMember>
					<Expr>ROWSTATE()&lt;&gt;'Added'</Expr>
					<Parameters>
						<ct0Data>Ct0.Id.RowId.BuiltinOrder.ItemId.WarehouseId.Quantity.Amount9</ct0Data>
					</Parameters>
					<Text />
				</Eval_usp_B30AccDocPurchase_GetRelationCP>
				<!-- 17/04/2023 ThắngĐQ: Kiểm tra nhập mua có chọn CP -->
				<Eval_CheckRelationCP_SetValue>
					<DataMember>CheckRelationCP</DataMember>
					<Value>ISNULL(CheckRelationCP,0)+1</Value>
					<Expr>!EMPTY(RelationCP) AND ROWSTATE()&lt;&gt;'Added'</Expr>
				</Eval_CheckRelationCP_SetValue>
				<Eval_CheckWorkProcess_SetValue>
					<DataMember>CheckWorkProcess</DataMember>
					<Value>IIF(EXISTS(Ct0,!Empty(CheckWorkProcess)),1,0)</Value>
					<Expr>ISNULL(UsingWorkProcessId,0)=1</Expr>
				</Eval_CheckWorkProcess_SetValue>
				<Eval_IsAllocateDiscount_SetValue>
					<DataMember>IsAllocateDiscount</DataMember>
					<Value>1</Value>
				</Eval_IsAllocateDiscount_SetValue>
				<Eval_IsAllocateDiscount_ResetValue>
					<DataMember>IsAllocateDiscount</DataMember>
					<Value>0</Value>
				</Eval_IsAllocateDiscount_ResetValue>
				<Eval_AllocationRate_Exists>
					<DataMember>_AllocationRate</DataMember>
					<Value>IIF(CostAllocMethod=1,DiscountAllocAmount_Exists,IIF(CostAllocMethod=2,DiscountAllocQuantity_Exists,0))</Value>
				</Eval_AllocationRate_Exists>
				<Eval_OriginalDiscountAmount_RoundWhenChangeDecimalRound>
					<DataMember>OriginalDiscountAmount</DataMember>
					<Value>OriginalDiscountAmount</Value>
					<zResultDecimalRound>DecimalRound</zResultDecimalRound>
				</Eval_OriginalDiscountAmount_RoundWhenChangeDecimalRound>
				<Eval_TotalAmount4>
					<DataMember>TotalAmount4</DataMember>
					<Value>IIF(CurrencyCode=CONFIG('M_Ma_Tte0'),TotalOriginalAmount4,SUM(Child(ct0).Amount4))</Value>
				</Eval_TotalAmount4>
				<Eval_TotalOriginalAmount4>
					<DataMember>TotalOriginalAmount4</DataMember>
					<Value>SUM(Child(ct0).OriginalAmount4)</Value>
				</Eval_TotalOriginalAmount4>
				<Eval__AllocationRate_ResetValue>
					<DataMember>_AllocationRate</DataMember>
					<Value>NULL</Value>
				</Eval__AllocationRate_ResetValue>
				<Eval_OriginalDiscountAmount>
					<ClassName>BravoMoneyEvaluator</ClassName>
					<DataMember>OriginalDiscountAmount</DataMember>
					<zNumberValue>DiscountRate</zNumberValue>
					<zMoneyValue>ISNULL(SUM(Child(ct0).OriginalAmount9),0)-ISNULL(SUM(Child(ct0).OriginalDiscountAmount),0)</zMoneyValue>
					<zResultDecimalRound>DecimalRound</zResultDecimalRound>
					<zResultMarginValue>IIF(UpdatedColumn()='OriginalDiscountAmount',MoneyDiffValue,0)</zResultMarginValue>
				</Eval_OriginalDiscountAmount>
				<Eval_DiscountAmount>
					<DataMember>DiscountAmount</DataMember>
					<Value>SUM(Child(ct0).DiscountAmount1)</Value>
				</Eval_DiscountAmount>
				<Eval_OriginalDiscountAmount1_VisibleWhen>
					<Controls>
						<Visible>!EMPTY(OriginalDiscountAmount)</Visible>
						<Name>BravoGridContainer.Item_Purchase.OriginalDiscountAmount1</Name>
					</Controls>
				</Eval_OriginalDiscountAmount1_VisibleWhen>
				<Eval_DiscountAmount1_VisibleWhen>
					<Controls>
						<Visible>!EMPTY(OriginalDiscountAmount) AND CurrencyCode&lt;&gt;CONFIG('M_Ma_Tte0')</Visible>
						<Name>BravoGridContainer.Item_Purchase.DiscountAmount1</Name>
					</Controls>
				</Eval_DiscountAmount1_VisibleWhen>
				<Eval_DiscountRate_DiscountAmount_ResetValue>
					<DataMember>DiscountRate,OriginalDiscountAmount,DiscountAmount</DataMember>
					<Value>0</Value>
				</Eval_DiscountRate_DiscountAmount_ResetValue>
				<Eval_TotalOriginalAmount3_5Percent>
					<DataMember>TotalOriginalAmount3_5Percent</DataMember>
					<Value>SUMIF(Child(Ct0).OriginalAmount3,TaxRate=0.05 OR TaxRateTmp='05')</Value>
				</Eval_TotalOriginalAmount3_5Percent>
				<Eval_TotalOriginalAmount3_10Percent>
					<DataMember>TotalOriginalAmount3_10Percent</DataMember>
					<Value>SUMIF(Child(Ct0).OriginalAmount3,TaxRate=0.1 OR TaxRateTmp='10')</Value>
				</Eval_TotalOriginalAmount3_10Percent>
				<Eval_TotalOriginalAmount3_8Percent>
					<DataMember>TotalOriginalAmount3_8Percent</DataMember>
					<Value>SUMIF(Child(Ct0).OriginalAmount3,TaxRate=0.08 OR TaxRateTmp='8')</Value>
				</Eval_TotalOriginalAmount3_8Percent>
				<Eval_TotalOriginalAmount3_OtherPercent>
					<DataMember>TotalOriginalAmount3_OtherPercent</DataMember>
					<Value>SUMIF(Child(Ct0).OriginalAmount3,ISNULL(TaxRate,0)&lt;&gt;0.1 AND ISNULL(TaxRateTmp,'')&lt;&gt;'10' AND ISNULL(TaxRate,0)&lt;&gt;0.05 AND ISNULL(TaxRateTmp,'')&lt;&gt;'05' AND ISNULL(TaxRate,0)&lt;&gt;0.08 AND ISNULL(TaxRateTmp,'')&lt;&gt;'08')</Value>
				</Eval_TotalOriginalAmount3_OtherPercent>
				<Eval_AttachedTaxInfo>
					<DataMember>AttachedTaxInfo</DataMember>
					<Value>IIF(!Empty(TotalAmount3) OR Exists(Ct0,!Empty(TaxCode)),1,0)</Value>
				</Eval_AttachedTaxInfo>
				<!--29/07/2024 PhanNH thêm nút tích lưu nháp-->
				<Eval_UsingIsDraftData_SetValue>
					<ClassName>BravoServerConstraint</ClassName>
					<Command>usp_Approval_CheckUsingIsDraftData</Command>
					<Parameters>
						<Id>Id</Id>
						<DocDate>DocDate</DocDate>
						<DocCode>DocCode</DocCode>
						<RowId_DocProcess>RowId_DocProcess</RowId_DocProcess>
						<BranchCode>BRANCH()</BranchCode>
						<ApprovalStatus>ApprovalStatus</ApprovalStatus>
					</Parameters>
					<DataMember>UsingIsDraftData</DataMember>
					<Text />
				</Eval_UsingIsDraftData_SetValue>
				<Eval_IsDraftData_ResetValue>
					<DataMember>IsDraftData</DataMember>
					<Value>0</Value>
				</Eval_IsDraftData_ResetValue>
				<Eval_ConvertFromB30BizDoc_RC_GetData>
					<ClassName>BravoServerConstraint</ClassName>
					<CommandKey>BizDocAll</CommandKey>
					<Command>usp_B30AccDocPurchase_ConvertFromB30BizDocRC</Command>
					<DataMember>Ct0</DataMember>
					<zCtorArgs>AutoSearch=True;FilterKey=DocCode='RC' AND CustomerId='{=ISNULL(CustomerId,'')}' AND DocDate &lt;= '{=DocDate}' AND BranchCode='{=BRANCH()}' AND PostSL=1 AND IsActive=1;</zCtorArgs>
					<Parameters>
						<CurrencyCode>CurrencyCode</CurrencyCode>
						<ExchangeRate>ExchangeRate</ExchangeRate>
						<Quality>''</Quality>
						<DocDate>DocDate</DocDate>
					</Parameters>
					<Expr>!Empty(CustomerId)</Expr>
					<Text />
					<zSourceValueMember>BizDocId</zSourceValueMember>
					<zTargetValueMember>BizDocId_RC</zTargetValueMember>
				</Eval_ConvertFromB30BizDoc_RC_GetData>
			</Evaluators>
			<Validators>
				<CheckNotNull>
					<SourceColumn>CustomerId,TransCode,CreditAccount</SourceColumn>
				</CheckNotNull>
				<NotNull_DocNo>
					<SourceColumn>DocNo</SourceColumn>
					<Expr>EMPTY(AutoNumbering)</Expr>
				</NotNull_DocNo>
				<FiscalDate>
					<ClassName>BravoFiscalDateValidator</ClassName>
					<SourceColumn>DocDate</SourceColumn>
					<Expr>!(USER('UsingLockDate')=1 AND !EMPTY(USER('LockDate')))</Expr>
				</FiscalDate>
				<LockDateByUser>
					<SourceColumn>DocDate</SourceColumn>
					<zValidateExpr>DocDate&gt;USER('LockDate') AND (DocDate&gt;=FISCALYEAR('StartDate')) AND (DocDate&lt;=FISCALYEAR('EndDate'))</zValidateExpr>
					<Expr>USER('UsingLockDate')=1 AND !EMPTY(USER('LockDate'))</Expr>
					<Text>
						<Vietnamese>Dữ liệu không phải của năm làm việc hiện thời hoặc đã khóa số liệu.</Vietnamese>
						<English>Editing data is not current fiscal year or locked.</English>
						<Chinese>編輯數據不是當前會計年度或已鎖定</Chinese>
						<Japanese>編集データが現在の会計年度ではないか、ロックされています</Japanese>
						<Korean>데이터 편집이 현재 회계 연도가 아니거나 잠겨 있습니다.</Korean>
					</Text>
				</LockDateByUser>
				<CheckDocNoUnique>
					<ClassName>BravoServerConstraintValidator</ClassName>
					<Command>usp_B30AccDoc_CheckUniqueDocNo</Command>
					<SourceColumn>DocNo,RowId_VoucherRegister</SourceColumn>
					<TargetColumn>DocNo</TargetColumn>
					<Parameters>
						<DocNo>DocNo</DocNo>
						<DocCode>DocCode</DocCode>
						<DocCodeNumbering>DocCodeNumbering</DocCodeNumbering>
						<RowId_VoucherRegister>RowId_VoucherRegister</RowId_VoucherRegister>
						<BranchCode>BranchCode</BranchCode>
						<FiscalYear>FiscalYear</FiscalYear>
					</Parameters>
					<bValidateWarning>True</bValidateWarning>
					<bValidateIfModify>True</bValidateIfModify>
					<bValidateIfNotEmpty>True</bValidateIfNotEmpty>
					<Text>
						<Vietnamese>Số chứng từ phải duy nhất.</Vietnamese>
						<English>The Doc number must be unique.</English>
						<Chinese>该文件号必须是唯一的。</Chinese>
						<Japanese>ドク番号は一意である必要があります。</Japanese>
						<Korean>선생님 번호 고유해야 합니다.</Korean>
					</Text>
				</CheckDocNoUnique>
				<CheckWarehouseId>
					<SourceColumn>WarehouseId</SourceColumn>
					<zValidateExpr>!(ISNULL(UsingWarehouseId,0)=1 AND Empty(WarehouseId))</zValidateExpr>
				</CheckWarehouseId>
				<CheckAtchDocDate>
					<SourceColumn>AtchDocDate,TotalAmount3</SourceColumn>
					<TargetColumn>AtchDocDate</TargetColumn>
					<zValidateExpr>!(!Empty(TotalAmount3) AND Empty(AtchDocDate))</zValidateExpr>
				</CheckAtchDocDate>
				<CheckAtchDocNo>
					<SourceColumn>AtchDocNo,TotalAmount3</SourceColumn>
					<TargetColumn>AtchDocNo</TargetColumn>
					<zValidateExpr>!(!Empty(TotalAmount3) AND Empty(AtchDocNo))</zValidateExpr>
				</CheckAtchDocNo>
				<CheckTaxRegName>
					<SourceColumn>TaxRegName,TotalAmount3</SourceColumn>
					<TargetColumn>TaxRegName</TargetColumn>
					<zValidateExpr>!(!Empty(TotalAmount3) AND Empty(TaxRegName))</zValidateExpr>
				</CheckTaxRegName>
				<CheckTaxRegNo>
					<ClassName>BravoServerConstraintValidator</ClassName>
					<Command>ufn_sys_TaxRegNo_Validate</Command>
					<SourceColumn>TaxRegNo</SourceColumn>
					<bValidateWarning>True</bValidateWarning>
					<bValidateIfModify>True</bValidateIfModify>
					<bValidateIfNotEmpty>True</bValidateIfNotEmpty>
				</CheckTaxRegNo>
				<CheckProductId>
					<SourceColumn>ProductId,ProductDebitAccount,ProductCreditAccount</SourceColumn>
					<TargetColumn>ProductId</TargetColumn>
					<zValidateExpr>!((!Empty(ProductDebitAccount) OR !Empty(ProductCreditAccount)) AND Empty(ProductId))</zValidateExpr>
					<Expr>ISNULL(UsingProductId,0)&lt;&gt;2</Expr>
				</CheckProductId>
				<CheckExpenseCatgId>
					<SourceColumn>ExpenseCatgId,CheckExpenseCatgId</SourceColumn>
					<TargetColumn>ExpenseCatgId</TargetColumn>
					<zValidateExpr>!(!Empty(CheckExpenseCatgId) AND Empty(ExpenseCatgId))</zValidateExpr>
					<Expr>ISNULL(UsingExpenseCatgId,0)=1</Expr>
				</CheckExpenseCatgId>
				<CheckDeptId>
					<SourceColumn>DeptId,CheckDeptId</SourceColumn>
					<TargetColumn>DeptId</TargetColumn>
					<zValidateExpr>!(!Empty(CheckDeptId) AND Empty(DeptId))</zValidateExpr>
					<Expr>ISNULL(UsingDeptId,0)=1</Expr>
				</CheckDeptId>
				<CheckBizDocId_PO>
					<SourceColumn>BizDocId_PO,CheckBizDocId_PO</SourceColumn>
					<TargetColumn>BizDocId_PO</TargetColumn>
					<zValidateExpr>!(!Empty(CheckBizDocId_PO) AND Empty(BizDocId_PO))</zValidateExpr>
					<Expr>UsingBizDocId_PO=1</Expr>
				</CheckBizDocId_PO>
				<CheckBizDocId_SO>
					<SourceColumn>BizDocId_SO,CheckBizDocId_SO</SourceColumn>
					<TargetColumn>BizDocId_SO</TargetColumn>
					<zValidateExpr>!(!Empty(CheckBizDocId_SO) AND Empty(BizDocId_SO))</zValidateExpr>
					<Expr>UsingBizDocId_SO=1</Expr>
				</CheckBizDocId_SO>
				<CheckJobId>
					<SourceColumn>JobId,CheckJobId</SourceColumn>
					<TargetColumn>JobId</TargetColumn>
					<zValidateExpr>!(!Empty(CheckJobId) AND Empty(JobId))</zValidateExpr>
					<Expr>ISNULL(UsingJobId,0)=1</Expr>
				</CheckJobId>
				<CheckBizProcess>
					<!--Đang trong quá trình duyệt chứng từ thì không được sửa đổi (theo y/c mr BắcTP ngày 1/8/18)-->
					<ClassName>BravoValidator</ClassName>
					<SourceColumn>UserId</SourceColumn>
					<zValidateExpr>({=USER('Id')} = CreatedBy AND (Empty(DocProcessId) OR ISNULL(IsDraftData0,0)=1)) OR CHARINDEX(','+CONVERT({=USER('Id')},'String')+',', BizProcess_UserIdList)&gt;=0</zValidateExpr>
					<Expr>!EMPTY(RowId_DocProcess) AND Id&gt;0</Expr>
					<Text>
						<Vietnamese>Người sử dụng không được sửa dữ liệu trong quá trình duyệt</Vietnamese>
						<English>User can not modify the document in approval process.</English>
						<Japanese>承認プロセスで文書を変更することはできません</Japanese>
						<Chinese>无法在批准过程中修改文档</Chinese>
						<Korean>승인 프로세스에서 문서를 수정할 수 없습니다.</Korean>
					</Text>
					<Caption>
						<Vietnamese>Người dùng {=USER('Username')}</Vietnamese>
						<English>User {=USER('Username')}</English>
						<Chinese>用户 {=USER('Username')}</Chinese>
						<Japanese>ユーザー {=USER('Username')}</Japanese>
						<Korean>사용자 {=USER('Username')}</Korean>
					</Caption>
				</CheckBizProcess>
				<CheckDocBookingId>
					<ClassName>BravoServerConstraintValidator</ClassName>
					<SourceColumn>DocBookingId,DocDate</SourceColumn>
					<Command>ufn_B20DocBooking_CheckDate</Command>
					<Parameters>
						<DocBookingId>DocBookingId</DocBookingId>
						<DocDate>DocDate</DocDate>
					</Parameters>
					<TargetColumn>DocBookingId</TargetColumn>
					<Expr>CONFIG('M_AccBookingForm')=1</Expr>
				</CheckDocBookingId>
				<CheckCostCentre>
					<SourceColumn>CostCentreId,CheckCostCentre</SourceColumn>
					<TargetColumn>CostCentreId</TargetColumn>
					<zValidateExpr>!(!Empty(CheckCostCentre) AND Empty(CostCentreId))</zValidateExpr>
					<Expr>ISNULL(UsingCostCentreId,0)=1</Expr>
				</CheckCostCentre>
				<!-- 23/10/2023 ANHPK cảnh báo nhập công đoạn theo TK-->
				<CheckWorkProcess>
					<SourceColumn>WorkProcessId,CheckWorkProcess</SourceColumn>
					<TargetColumn>WorkProcessId</TargetColumn>
					<zValidateExpr>!(!EMPTY(CheckWorkProcess) AND EMPTY(WorkProcessId))</zValidateExpr>
					<Expr>ISNULL(UsingWorkProcessId,0)=1</Expr>
				</CheckWorkProcess>
				<CheckWorkProcess2>
					<ClassName>BravoServerConstraintValidator</ClassName>
					<Command>usp_sys_WorkProcessValidator</Command>
					<SourceColumn>WorkProcessId,DebitAccount,CreditAccount</SourceColumn>
					<TargetColumn>WorkProcessId</TargetColumn>
					<Parameters>
						<DebitAccount>DebitAccount</DebitAccount>
						<CreditAccount>CreditAccount</CreditAccount>
						<WorkProcessId>WorkProcessId</WorkProcessId>
						<BranchCode>BRANCH()</BranchCode>
					</Parameters>
					<Expr>UsingWorkProcessId=1 AND !EXISTS(Ct0)</Expr>
					<Text>
						<Vietnamese>Không được bỏ trắng giá trị</Vietnamese>
						<English>Do not remove white value</English>
						<Japanese>白い値を削除しないでください</Japanese>
						<Chinese>不要删除白色价值</Chinese>
						<Korean>흰색 값을 제거하지 마십시오</Korean>
					</Text>
				</CheckWorkProcess2>
				<CheckDueDateEmpty>
					<!-- Cảnh báo không nhập HTT với những Tk cùng vế theo dõi HTT -->
					<ClassName>BravoNullValidator</ClassName>
					<SourceColumn>DueDate,DueSideCreditAccount,CreditAccount</SourceColumn>
					<TargetColumn>DueDate</TargetColumn>
					<zValidateExpr>!(Empty(DueDate) AND DueSideCreditAccount='Credit' AND !Empty(IsUsingDuePayment))</zValidateExpr>
					<bValidateWarning>True</bValidateWarning>
				</CheckDueDateEmpty>
				<!-- 17/04/2023 ThắngĐQ: Kiểm tra nhập mua có chọn CP -->
				<CheckRelationCP>
					<ClassName>BravoServerConstraintValidator</ClassName>
					<Command>usp_B30AccDocPurchase_CheckRelationCP</Command>
					<SourceColumn>CheckRelationCP</SourceColumn>
					<TargetColumn>DocNo</TargetColumn>
					<Parameters>
						<ct0Data>Ct0.Id.RowId.BuiltinOrder.ItemId.WarehouseId.Quantity.Amount9</ct0Data>
						<RelationCP>RelationCP</RelationCP>
					</Parameters>
					<bValidateWarning>True</bValidateWarning>
					<bValidateIfModify>True</bValidateIfModify>
					<bValidateIfNotEmpty>True</bValidateIfNotEmpty>
					<Text>
						<Vietnamese>Chứng từ đã được phân bổ chi phí.</Vietnamese>
						<English>Documents have been allocated expenses.</English>
						<Chinese>文件已分配费用。</Chinese>
						<Japanese>文書は費用を割り当てられています。</Japanese>
						<Korean>문서에 비용이 할당되었습니다.</Korean>
					</Text>
				</CheckRelationCP>
			</Validators>
			<Expressions>
				<ctViewName>'vB30AccDocPurchase_Edit'</ctViewName>
				<ct0Name>'B30AccDocPurchase1'</ct0Name>
				<ct0ViewName>'vB30AccDocPurchase1_Edit'</ct0ViewName>
				<DiscountAllocQuantity_Exists>IIF(Exists(Child(Ct0),Quantity9&lt;&gt;0),1,0)</DiscountAllocQuantity_Exists>
				<DiscountAllocAmount_Exists>IIF(Exists(Child(Ct0),OriginalAmount9&lt;&gt;0),1,0)</DiscountAllocAmount_Exists>
			</Expressions>
			<BeforeTransaction>
				<!-- T8/2021 ThắngĐQ: Khóa dữ liệu mua - bán -->
				<Eval_Ct0_SetRowState />
				<!-- T8/2021 ThắngĐQ: Khóa dữ liệu mua - bán -->
				<Eval_RestrictItem_CheckBeforeSave>
					<ClassName>BravoServerConstraint</ClassName>
					<Command>usp_B20RestrictItem_CheckBeforeSave</Command>
					<Parameters>
						<RestrictType>1</RestrictType>
						<DocCode>DocCode</DocCode>
						<BranchCode>BranchCode</BranchCode>
						<CustomerId>CustomerId</CustomerId>
						<TableDetail>Ct0.Id.ItemId._RowState</TableDetail>
						<LangId>LANGID()</LangId>
						<nUserId>USER('Id')</nUserId>
					</Parameters>
					<Text />
				</Eval_RestrictItem_CheckBeforeSave>
				<Eval_DocProcess_SetValue>
					<ClassName>BravoServerConstraint</ClassName>
					<Command>usp_B20DocProcess_GetData</Command>
					<DataMember>RowId_DocProcess,DocProcessId</DataMember>
					<Parameters>
						<RowId_DocProcess>RowId_DocProcess</RowId_DocProcess>
						<DocProcessId>DocProcessId</DocProcessId>
						<DocDate>DocDate</DocDate>
						<BranchCode>BranchCode</BranchCode>
						<DocCode>DocCode</DocCode>
						<LangId>LANGID()</LangId>
						<Id>Id</Id>
						<CurrentDataXML>'{=GETXMLDATA('Ct')}'</CurrentDataXML>
					</Parameters>
					<Text />
				</Eval_DocProcess_SetValue>
				<Eval_Ct0_UpdateBuiltinOrder />
				<!--16/10/2023 ANHPK thêm thông tin vật tư bổ sung hóa đơn VAT-->
				<Eval_AtchDoc_UpdateBuiltinOrder />
				<Eval_DocNo_DefaultValue>EMPTY(DocNo) AND !EMPTY(AutoNumbering)</Eval_DocNo_DefaultValue>
				<Eval_Stt_AutoValue>
					<!-- 16/07/2019 Thăng tạo sẵn Stt trước khi lưu -->
					<ClassName>BravoServerConstraint</ClassName>
					<Command>usp_sys_CreateSttBySeq</Command>
					<dataAccessMode>Write</dataAccessMode>
					<Parameters>
						<TableName>LayoutTableName()</TableName>
						<Ws_Id>Branch('Ws_Id')</Ws_Id>
					</Parameters>
					<DataMember>Stt</DataMember>
					<Expr>Empty(Stt)</Expr>
					<Text />
				</Eval_Stt_AutoValue>
				<Eval_Ct0_RowId_AutoValue />
				<Eval_IsPostWhenSaveNewDoc>
					<DataMember>IsPostWhenSaveNewDoc</DataMember>
					<Value>IIF(ROWSTATE()='Added',1,0)</Value>
				</Eval_IsPostWhenSaveNewDoc>
				<Eval_RelationRefreshIdList_GetValue>!EMPTY(VLOOKUP(Ct0, BizDocId_PO))</Eval_RelationRefreshIdList_GetValue>
				<Eval_AtchDoc_SumGroupByFromDetail>EXISTS(Ct0, !Empty(TaxCode)) OR !Empty(DueDate)</Eval_AtchDoc_SumGroupByFromDetail>
				<!--29/07/2024 PhanNH thêm nút tích lưu nháp-->
				<Eval_IsDraftData_ResetValue>Empty(RowId_DocProcess)</Eval_IsDraftData_ResetValue>
				<!--26/08/2024 PhanNH Thêm trạng thái duyệt cho chứng từ-->
				<Eval_ApprovalStatus_SetValue>
					<DataMember>ApprovalStatus</DataMember>
					<Value>IIF(ISNULL(IsDraftData,0)=0,2,1)</Value>
					<Expr>ISNULL(ApprovalStatus, '') IN ('1','2','') AND !Empty(DocProcessId)</Expr>
				</Eval_ApprovalStatus_SetValue>
			</BeforeTransaction>
			<BeforeCommit>
				<Default>
					<CommandType>Procedure</CommandType>
					<CommandName>usp_B30AccDoc_PostAfterSave</CommandName>
					<Parameters>
						<BranchCode>BranchCode</BranchCode>
						<Stt>Stt</Stt>
						<DocDate>DocDate</DocDate>
						<DocCode>DocCode</DocCode>
						<DocStatus>DocStatus</DocStatus>
						<RowId_DocProcess>RowId_DocProcess</RowId_DocProcess>
						<IsPostWhenSaveNewDoc>IsPostWhenSaveNewDoc</IsPostWhenSaveNewDoc>
						<UsingCheckINVWhenNotEnough>UsingCheckINVWhenNotEnough</UsingCheckINVWhenNotEnough>
						<ConditionViewGL1>IIF(EXISTS(Ct0),1,0)</ConditionViewGL1>
						<ConditionViewGL2>IIF(EXISTS(AtchDoc),1,0)</ConditionViewGL2>
						<IsPostInventoryPhys>IIF(EXISTS(phys),1,0)</IsPostInventoryPhys>
						<nUserId>USER('Id')</nUserId>
						<FiscalYear>FISCALYEAR()</FiscalYear>
						<!-- T11/2021 ThắngĐQ: Thêm liên kết chứng từ -->
						<DocNo>DocNo</DocNo>
						<RelationTablesXML>GETXMLDATA('Ct0', 'BizDocId_PO')</RelationTablesXML>
					</Parameters>
					<Text />
				</Default>
			</BeforeCommit>
			<AfterTransaction>
				<Eval_AutoPrintVoucher>
					<ClassName>BravoCommandKey</ClassName>
					<CommandKey>AccDocViewer_NM AutoRun=True;StartupCommandKey=QuickPrint;PrimaryKeyValue={=Id};</CommandKey>
					<commandFormState>Minimized</commandFormState>
					<Expr>ISNULL(AutoPrintVoucher,False)=True</Expr>
				</Eval_AutoPrintVoucher>
				<!-- 30/08/2024 PhanNH thêm noti cho duyệt-->
				<Eval_Approval_PushNotification>
					<ClassName>BravoServerConstraint</ClassName>
					<Command>usp_B00NotificationQueue_Approval</Command>
					<dataAccessMode>Write</dataAccessMode>
					<Parameters>
						<ApprovalStatus>2</ApprovalStatus>
						<Id>Id</Id>
						<Stt>Stt</Stt>
						<DocCode>DocCode</DocCode>
						<DocNo>DocNo</DocNo>
						<RowId_DocProcess>RowId_DocProcess</RowId_DocProcess>
						<DocProcessId>DocProcessId</DocProcessId>
						<LangId>LANGID()</LangId>
						<nUserId>USER('Id')</nUserId>
						<BranchCode>BRANCH()</BranchCode>
					</Parameters>
					<Expr>!Empty(DocProcessId) AND ISNULL(ApprovalStatus,'')='2'</Expr>
					<Text />
				</Eval_Approval_PushNotification>
			</AfterTransaction>
			<DefaultValues>
				<DocCode>'NM'</DocCode>
				<Posted>1</Posted>
				<DocDate>GETDATE()</DocDate>
				<BranchCode>BRANCH()</BranchCode>
				<FiscalYear>FISCALYEAR()</FiscalYear>
				<UserId>USER('Id')</UserId>
				<CurrencyCode>CONFIG('M_Ma_Tte0')</CurrencyCode>
				<!--29/07/2024 PhanNH thêm nút tích lưu nháp-->
				<IsDraftData>0</IsDraftData>
			</DefaultValues>
			<CommandValidators>
				<ModifyWarehouseAccess>
					<CommandName>Edit</CommandName>
					<Expr>NOT(!Empty(USER('WarehouseIdList')) AND !Empty(CONFIG('M_WarehouseUserDocList')) AND (
            (ISNULL(UsingWarehouseId,0)&lt;&gt;1 AND EXISTS(Ct0, CHARINDEX(WarehouseId,USER('WarehouseIdList'),0)&lt;0)) OR
            (ISNULL(UsingWarehouseId,0)=1 AND CHARINDEX(WarehouseId,USER('WarehouseIdList'),0)&lt;0)))
          </Expr>
					<Text>
						<Vietnamese>Tồn tại kho không được phép truy cập.</Vietnamese>
						<English>There is a warehouse that cannot be accessed.</English>
						<Japanese>アクセスできない倉庫があります</Japanese>
						<Chinese>有一个无法访问的仓库</Chinese>
						<Korean>접근할 수 없는 창고가 있습니다</Korean>
					</Text>
				</ModifyWarehouseAccess>
			</CommandValidators>
			<ChildCollection>
				<ChildTable_Ct0>
					<Alias>Ct0</Alias>
					<ChildKey>Stt</ChildKey>
					<Name>vB30AccDocPurchase1_Edit</Name>
					<ParentKey>Stt</ParentKey>
					<RefreshColumnList>Stt</RefreshColumnList>
					<Sort>BuiltinOrder</Sort>
					<ServerLoaded>
						<Eval_Ct0_AllocationRate_GetValue />
					</ServerLoaded>
					<RowAdded>
						<Eval_Ct0_GetValueFromParent />
						<Eval_Ct0_BizDocId_PO_GetValueFromParent>!Empty(Parent.BizDocId_PO)</Eval_Ct0_BizDocId_PO_GetValueFromParent>
						<Eval_Ct0_BizDocId_SO_GetValueFromParent>!Empty(Parent.BizDocId_SO)</Eval_Ct0_BizDocId_SO_GetValueFromParent>
						<!--03/11/2020: PhongNVT chuyển cách lấy số liệu từ C1, C2 sang PO, SO
        <Eval_Ct0_BizDocId_C1_GetValueFromParent>!Empty(Parent.BizDocId_C1)</Eval_Ct0_BizDocId_C1_GetValueFromParent>
        <Eval_Ct0_BizDocId_C2_GetValueFromParent>!Empty(Parent.BizDocId_C2)</Eval_Ct0_BizDocId_C2_GetValueFromParent-->
						<Eval_Ct0_StatsDocId_WO_GetValueFromParent>!Empty(Parent.StatsDocId_WO)</Eval_Ct0_StatsDocId_WO_GetValueFromParent>
						<Eval_Ct0_WorkProcessId_GetValueFromParent>!Empty(Parent.WorkProcessId)</Eval_Ct0_WorkProcessId_GetValueFromParent>
						<Eval_Ct0_CostCentreId_GetValueFromParent>!Empty(Parent.CostCentreId)</Eval_Ct0_CostCentreId_GetValueFromParent>
						<Eval_Ct0_ProductId_GetValueFromParent>!Empty(Parent.ProductId)</Eval_Ct0_ProductId_GetValueFromParent>
						<Eval_Ct0_WarehouseId_GetValueFromParent>!Empty(Parent.WarehouseId)</Eval_Ct0_WarehouseId_GetValueFromParent>
						<Eval_Ct0_ExpenseCatgId_GetValueFromParent>!Empty(Parent.ExpenseCatgId)</Eval_Ct0_ExpenseCatgId_GetValueFromParent>
						<Eval_Ct0_EmployeeId_GetValueFromParent>!Empty(Parent.EmployeeId)</Eval_Ct0_EmployeeId_GetValueFromParent>
						<Eval_Ct0_DeptId_GetValueFromParent>!Empty(Parent.DeptId)</Eval_Ct0_DeptId_GetValueFromParent>
						<Eval_Ct0_JobId_GetValueFromParent>!Empty(Parent.JobId)</Eval_Ct0_JobId_GetValueFromParent>
						<Eval_Ct0_CreditAccount_GetValueFromParent />
						<Eval_Ct0_DebitAccount_AutoValue>!Empty(_ConvertingFlag)</Eval_Ct0_DebitAccount_AutoValue>
						<Eval_Ct0_CheckExpenseCatgId_GetValueFromParent>Parent.UsingExpenseCatgId=2 AND !Empty(Parent.CheckExpenseCatgId)</Eval_Ct0_CheckExpenseCatgId_GetValueFromParent>
						<Eval_Ct0_CheckDeptId_GetValueFromParent>Parent.UsingDeptId=2 AND !Empty(Parent.CheckDeptId)</Eval_Ct0_CheckDeptId_GetValueFromParent>
						<Eval_Ct0_CheckJobId_GetValueFromParent>Parent.UsingJobId=2 AND !Empty(Parent.CheckJobId)</Eval_Ct0_CheckJobId_GetValueFromParent>
						<!--03/11/2020: PhongNVT chuyển cách lấy số liệu từ C1, C2 sang PO, SO
        <Eval_Ct0_CheckBizDocId_C1_GetValueFromParent>Parent.UsingBizDocId_C1=2 AND !Empty(Parent.CheckBizDocId_C1)</Eval_Ct0_CheckBizDocId_C1_GetValueFromParent>
        <Eval_Ct0_CheckBizDocId_C2_GetValueFromParent>Parent.UsingBizDocId_C2=2 AND !Empty(Parent.CheckBizDocId_C2)</Eval_Ct0_CheckBizDocId_C2_GetValueFromParent-->
						<Eval_Ct0_CheckBizDocId_PO_GetValueFromParent>Parent.UsingBizDocId_PO=2 AND !Empty(Parent.CheckBizDocId_PO)</Eval_Ct0_CheckBizDocId_PO_GetValueFromParent>
						<Eval_Ct0_CheckBizDocId_SO_GetValueFromParent>Parent.UsingBizDocId_SO=2 AND !Empty(Parent.CheckBizDocId_SO)</Eval_Ct0_CheckBizDocId_SO_GetValueFromParent>
						<Eval_ProductDebitAccount_GetValueFromChild>!_Convert_Expr</Eval_ProductDebitAccount_GetValueFromChild>
						<!-- Lấy các thông tin trường hợp dùng linkcommand -->
						<EvalGroup_Ct0_ConvertFromPO>!Empty(_ConvertingFlag)</EvalGroup_Ct0_ConvertFromPO>
						<Eval_Ct0_Phys_ItemWithSerialNo_VisibleWhen>_Convert_Expr</Eval_Ct0_Phys_ItemWithSerialNo_VisibleWhen>
						<Eval_Ct0_Phys_LocationId_VisibleWhen>_Convert_Expr</Eval_Ct0_Phys_LocationId_VisibleWhen>
						<Eval_Ct0_Phys_ItemLotCode_VisibleWhen>_Convert_Expr</Eval_Ct0_Phys_ItemLotCode_VisibleWhen>
						<Eval_Ct0_Phys_ColorCode_VisibleWhen>_Convert_Expr</Eval_Ct0_Phys_ColorCode_VisibleWhen>
						<Eval_Ct0_Phys_SizeCode_VisibleWhen>_Convert_Expr</Eval_Ct0_Phys_SizeCode_VisibleWhen>
						<Eval_Ct0_Phys_ItemQualityCode_VisibleWhen>_Convert_Expr</Eval_Ct0_Phys_ItemQualityCode_VisibleWhen>
						<Eval_Ct0_PhysicalInventory>_Convert_Expr</Eval_Ct0_PhysicalInventory>
						<Eval_TotalQuantity />
						<Eval_Ct0_CustomFieldId1_DefaultValueFromParent />
						<Eval_Ct0_CustomFieldId2_DefaultValueFromParent />
						<Eval_Ct0_CustomFieldId3_DefaultValueFromParent />
						<Eval_Ct0_CheckCostCentre_GetValueFromParent>Parent.UsingCostCentreId=2 AND !Empty(Parent.CheckCostCentre)</Eval_Ct0_CheckCostCentre_GetValueFromParent>
						<!-- 17/04/2023 ThắngĐQ: Kiểm tra nhập mua có chọn CP -->
						<Eval_CheckRelationCP_SetValue />
						<!--29/05/2024 thêm khoản mục dòng tiền tài chính để lên DL báo cáo LCTT, TMBCTC-->
						<Eval_Ct0_NoteFactorId_DefaultValueFromParent />
					</RowAdded>
					<RowCopied>
						<Eval_Ct0_QuantityBeforeTrans_WhenSameItemValue />
						<Eval_Ct0_QuantityAfterTrans_WhenSameItemValue />
					</RowCopied>
					<RowDeleting>
						<Eval_Ct0_RowDeleting_SetValue>
							<DataMember>_RowDeleting</DataMember>
							<Value>1</Value>
						</Eval_Ct0_RowDeleting_SetValue>
						<Eval_Ct0_QuantityAfterTrans_WhenDeleting>_CalINV_Expr AND EXISTS(Ct0,Id&lt;&gt;{=Id} AND ItemId={=ISNULL(ItemId,0)} AND WarehouseId={=ISNULL(WarehouseId,0)})</Eval_Ct0_QuantityAfterTrans_WhenDeleting>
						<!-- 17/04/2023 ThắngĐQ: Kiểm tra nhập mua có chọn CP -->
						<Eval_CheckRelationCP_SetValue />
					</RowDeleting>
					<TableMerged>
						<Eval_IsAllocateDiscount_SetValue>CostAllocMethod IS NOT NULL</Eval_IsAllocateDiscount_SetValue>
						<Eval_TotalOriginalAmount0 />
						<Eval_TotalAmount0 />
						<Eval_TotalOriginalAmount4 />
						<Eval_TotalAmount4 />
						<Eval_TotalOriginalAmount3 />
						<Eval_TotalAmount3 />
						<Eval_ProductDebitAccount_GetValueFromChild />
						<Eval_TotalQuantity />
						<Eval_AllocationRate_Exists />
						<Eval_Ct0_OriginalDiscountAmount1_AllocFromParent>!Empty(_AllocationRate)</Eval_Ct0_OriginalDiscountAmount1_AllocFromParent>
						<!-- 17/04/2023 ThắngĐQ: Kiểm tra nhập mua có chọn CP -->
						<Eval_CheckRelationCP_SetValue />
						<Eval_Ct0_CheckWorkProcess_SetValue />
						<Eval_CheckWorkProcess_SetValue />
						<Eval_TotalOriginalAmount3_5Percent />
						<Eval_TotalOriginalAmount3_8Percent />
						<Eval_TotalOriginalAmount3_10Percent />
						<Eval_TotalOriginalAmount3_OtherPercent />
					</TableMerged>
					<ColumnChanging>
						<ItemId>
							<Eval_Ct0_PrevItemId_SetValue>_Convert_Expr AND _CalINV_Expr</Eval_Ct0_PrevItemId_SetValue>
							<Eval_Ct0_Unit_ResetValue>
								<DataMember>Unit_Item</DataMember>
								<Value>NULL</Value>
							</Eval_Ct0_Unit_ResetValue>
						</ItemId>
						<WarehouseId>
							<Eval_Ct0_PrevWarehouseId_SetValue>_Convert_Expr AND _CalINV_Expr</Eval_Ct0_PrevWarehouseId_SetValue>
						</WarehouseId>
						<AllowIssueWhenNotEnough>
							<Eval_Ct0_PrevAllowIssueWhenNotEnough_SetValue>_Convert_Expr AND _CalINV_Expr</Eval_Ct0_PrevAllowIssueWhenNotEnough_SetValue>
						</AllowIssueWhenNotEnough>
					</ColumnChanging>
					<ColumnChanged>
						<ItemId>
							<Eval_Ct0_Unit_DefaultValue>!Empty(ItemId)</Eval_Ct0_Unit_DefaultValue>
							<Eval_Phys_ItemId_DefaultValueFromParent />
							<Eval_Ct0_QuantityAfterTrans_ResetValue>_Convert_Expr AND !Empty(PrevItemId) AND !Empty(ISNULL(PrevWarehouseId,WarehouseId)) AND _CalINV_Reset_Expr</Eval_Ct0_QuantityAfterTrans_ResetValue>
							<Eval_Ct0_RunningTrans>_Convert_Expr</Eval_Ct0_RunningTrans>
							<Eval_Ct0_PrevItemId_SetNullValue>_Convert_Expr AND Empty(ItemId)</Eval_Ct0_PrevItemId_SetNullValue>
							<Eval_Ct0_QuantityTrans_ResetNullWhenEmptyItemWarehouse>_Convert_Expr AND (Empty(ItemId) OR Empty(WarehouseId))</Eval_Ct0_QuantityTrans_ResetNullWhenEmptyItemWarehouse>
							<!-- 17/04/2023 ThắngĐQ: Kiểm tra nhập mua có chọn CP -->
							<Eval_CheckRelationCP_SetValue>ROWSTATE()&lt;&gt;'Added'</Eval_CheckRelationCP_SetValue>
						</ItemId>
						<ItemName>
							<Eval_Ct0_ItemName_DefaultValue>UPDATEDCOLUMN()='ItemName' AND Empty(ItemName)</Eval_Ct0_ItemName_DefaultValue>
							<Eval_Ct0_Description_DefaultValue />
						</ItemName>
						<Unit_Item>
							<Eval_Ct0_Unit_DefaultValue>Empty(_ConvertingFlag)</Eval_Ct0_Unit_DefaultValue>
						</Unit_Item>
						<Unit>
							<Eval_Ct0_Unit_DefaultValue>UPDATEDCOLUMN()='Unit' AND Empty(Unit)</Eval_Ct0_Unit_DefaultValue>
							<Eval_Phys_Unit_DefaultValueFromParent />
						</Unit>
						<ItemType>
							<Eval_Ct0_RunningTrans>_Convert_Expr</Eval_Ct0_RunningTrans>
						</ItemType>
						<WarehouseId>
							<Eval_Phys_WarehouseId_DefaultValueFromParent />
							<Eval_Ct0_QuantityAfterTrans_ResetValue>_Convert_Expr AND !Empty(PrevWarehouseId) AND !Empty(ISNULL(PrevItemId,ItemId)) AND _CalINV_Reset_Expr</Eval_Ct0_QuantityAfterTrans_ResetValue>
							<Eval_Ct0_RunningTrans>_Convert_Expr</Eval_Ct0_RunningTrans>
							<Eval_Ct0_PrevWarehouseId_SetNullValue>_Convert_Expr AND Empty(WarehouseId)</Eval_Ct0_PrevWarehouseId_SetNullValue>
							<Eval_Ct0_QuantityTrans_ResetNullWhenEmptyItemWarehouse>_Convert_Expr AND (Empty(ItemId) OR Empty(WarehouseId))</Eval_Ct0_QuantityTrans_ResetNullWhenEmptyItemWarehouse>
							<!-- 17/04/2023 ThắngĐQ: Kiểm tra nhập mua có chọn CP -->
							<Eval_CheckRelationCP_SetValue>ROWSTATE()&lt;&gt;'Added'</Eval_CheckRelationCP_SetValue>
						</WarehouseId>
						<AllowIssueWhenNotEnough>
							<Eval_Ct0_RunningTrans>_Convert_Expr</Eval_Ct0_RunningTrans>
						</AllowIssueWhenNotEnough>
						<_RunningTrans>
							<!-- Xử lý tồn tức thời -->
							<Eval_Ct0_SameItemValue>_Convert_Expr AND _CalINV_Expr</Eval_Ct0_SameItemValue>
							<Eval_Ct0_QuantityBeforeTrans>!Empty(_RunningTrans) AND !_SameItemValue AND _CalINV_Expr</Eval_Ct0_QuantityBeforeTrans>
							<Eval_Ct0_QuantityAfterTrans>!Empty(_RunningTrans) AND !_SameItemValue AND _CalINV_Expr</Eval_Ct0_QuantityAfterTrans>
							<Eval_Ct0_QuantityBeforeTrans_WhenSameItemValue>!Empty(_RunningTrans) AND _SameItemValue AND _CalINV_Expr</Eval_Ct0_QuantityBeforeTrans_WhenSameItemValue>
							<Eval_Ct0_QuantityAfterTrans_WhenSameItemValue>!Empty(_RunningTrans) AND _SameItemValue AND _CalINV_Expr</Eval_Ct0_QuantityAfterTrans_WhenSameItemValue>
							<!-- Cập nhật Null -->
							<Eval_Ct0_Prev_SetNullValue>
								<DataMember>PrevItemId,PrevWarehouseId,PrevAllowIssueWhenNotEnough</DataMember>
								<Value>Null</Value>
								<Expr>_Convert_Expr</Expr>
							</Eval_Ct0_Prev_SetNullValue>
							<Eval_Ct0_RunningTrans_SetNullValue>
								<DataMember>_RunningTrans</DataMember>
								<Value>Null</Value>
								<Expr>_RunningTrans IS NOT NULL</Expr>
								<bSuppressChangeEvents>True</bSuppressChangeEvents>
							</Eval_Ct0_RunningTrans_SetNullValue>
						</_RunningTrans>
						<ItemAccount>
							<Eval_Ct0_DebitAccount_AutoValue>ISNULL(Parent.ItemAccountType,0)=0</Eval_Ct0_DebitAccount_AutoValue>
						</ItemAccount>
						<ItemAccount1>
							<Eval_Ct0_DebitAccount_AutoValue>ISNULL(Parent.ItemAccountType,0)=1</Eval_Ct0_DebitAccount_AutoValue>
						</ItemAccount1>
						<ItemAccount2>
							<Eval_Ct0_DebitAccount_AutoValue>ISNULL(Parent.ItemAccountType,0)=2</Eval_Ct0_DebitAccount_AutoValue>
						</ItemAccount2>
						<ItemAccount3>
							<Eval_Ct0_DebitAccount_AutoValue>ISNULL(Parent.ItemAccountType,0)=3</Eval_Ct0_DebitAccount_AutoValue>
						</ItemAccount3>
						<DebitAccount>
							<Eval_Ct0_DebitAccount_AutoValue>Empty(DebitAccount)</Eval_Ct0_DebitAccount_AutoValue>
							<!-- 23/10/2023 ANHPK cảnh báo nhập công đoạn theo TK-->
							<Eval_Ct0_CheckWorkProcess_SetValue />
							<Eval_Ct0_DebitAccount3_DefaultValue />
						</DebitAccount>
						<CreditAccount>
							<!-- 23/10/2023 ANHPK cảnh báo nhập công đoạn theo TK-->
							<Eval_Ct0_CheckWorkProcess_SetValue />
							<Eval_Ct0_CreditAccount3_DefaultValue />
						</CreditAccount>
						<OriginalUnitCost>
							<Eval_Ct0_UnitCost />
							<Eval_Ct0_OriginalAmount9 />
						</OriginalUnitCost>
						<ConvertRate9>
							<Eval_Ct0_Quantity />
							<Eval_RemainPhysQuantity_SetValue>!Empty(_PhysicalInventory)</Eval_RemainPhysQuantity_SetValue>
							<!-- 13/04/2023 KhanhDq: Cho phép nhập liệu theo đơn vị tính nhập xuất (Số lượng 9). -->
							<Eval_UpdatedColName_SetValue>
								<DataMember>UpdatedColName</DataMember>
								<Value>'ConvertRate9'</Value>
							</Eval_UpdatedColName_SetValue>
							<Eval_Phys_ConvertRate9_DefaultValueFromParent />
							<Eval_RemainPhysQuantity9_SetValue>!Empty(_PhysicalInventory)</Eval_RemainPhysQuantity9_SetValue>
							<!-- 13/04/2023 KhanhDq: Cho phép nhập liệu theo đơn vị tính nhập xuất (Số lượng 9). -->
							<Eval_UpdatedColName_ResetValue>
								<DataMember>UpdatedColName</DataMember>
								<Value>NULL</Value>
							</Eval_UpdatedColName_ResetValue>
						</ConvertRate9>
						<Quantity9>
							<Eval_Ct0_OriginalAmount9 />
							<Eval_Ct0_Quantity />
							<Eval_RemainPhysQuantity_SetValue>!Empty(_PhysicalInventory)</Eval_RemainPhysQuantity_SetValue>
							<Eval_Ct0_OriginalUnitCost_ResetWhenQuantityZero>
								<DataMember>OriginalUnitCost,UnitCost</DataMember>
								<Value>NULL</Value>
								<Expr>Empty(Quantity9)</Expr>
							</Eval_Ct0_OriginalUnitCost_ResetWhenQuantityZero>
							<Eval_TotalQuantity />
							<Eval_RemainPhysQuantity9_SetValue>!Empty(_PhysicalInventory)</Eval_RemainPhysQuantity9_SetValue>
							<Eval_Ct0_AllocationRate_GetValue>Parent.CostAllocMethod IS NOT NULL</Eval_Ct0_AllocationRate_GetValue>
						</Quantity9>
						<Quantity>
							<Eval_Ct0_SameItemValue>_Convert_Expr AND _CalINV_Expr</Eval_Ct0_SameItemValue>
							<Eval_Ct0_QuantityAfterTrans>_Convert_Expr AND !_SameItemValue AND _CurINV_Expr</Eval_Ct0_QuantityAfterTrans>
							<Eval_Ct0_QuantityAfterTrans_WhenSameItemValue>_Convert_Expr AND _SameItemValue AND _CurINV_Expr</Eval_Ct0_QuantityAfterTrans_WhenSameItemValue>
							<Eval_Ct0_QuantityTrans_ResetNullWhenEmptyItemWarehouse>_Convert_Expr AND (Empty(ItemId) OR Empty(WarehouseId))</Eval_Ct0_QuantityTrans_ResetNullWhenEmptyItemWarehouse>
							<!-- 17/04/2023 ThắngĐQ: Kiểm tra nhập mua có chọn CP -->
							<Eval_CheckRelationCP_SetValue>ROWSTATE()&lt;&gt;'Added'</Eval_CheckRelationCP_SetValue>
						</Quantity>
						<OriginalAmount4>
							<Eval_Ct0_OriginalAmount_AutoValue />
							<Eval_TotalOriginalAmount4 />
							<Eval_TotalOriginalAmount0 />
							<Eval_Ct0_Amount4 />
							<Eval_Ct0_OriginalAmount3>ISNULL(PriceIncludeTax,0)=1</Eval_Ct0_OriginalAmount3>
						</OriginalAmount4>
						<Amount4>
							<Eval_Ct0_Amount4>UPDATEDCOLUMN()='Amount4'</Eval_Ct0_Amount4>
							<Eval_Amount_AutoValue />
							<Eval_TotalAmount4>Empty(Parent._Flag)</Eval_TotalAmount4>
							<Eval_TotalAmount0>Empty(Parent._Flag)</Eval_TotalAmount0>
						</Amount4>
						<OriginalAmount9>
							<Eval_Ct0_OriginalUnitCost>
								<DataMember>OriginalUnitCost</DataMember>
								<Expr>UPDATEDCOLUMN()='OriginalAmount9' AND !Empty(Quantity9) AND !Empty(OriginalAmount9) AND Empty(OriginalUnitCost) AND Empty(UnitCost)</Expr>
								<Value>OriginalAmount9/Quantity9</Value>
								<zResultDecimalRound>5</zResultDecimalRound>
								<bSuppressChangeEvents>True</bSuppressChangeEvents>
							</Eval_Ct0_OriginalUnitCost>
							<Eval_Ct0_UnitCost>UPDATEDCOLUMN()='OriginalAmount9' AND !Empty(Quantity9) AND !Empty(OriginalAmount9) AND Empty(UnitCost)</Eval_Ct0_UnitCost>
							<Eval_Ct0_OriginalAmount9>UPDATEDCOLUMN()='OriginalAmount9'</Eval_Ct0_OriginalAmount9>
							<Eval_Ct0_OriginalDiscountAmount>!EMPTY(DiscountRate)</Eval_Ct0_OriginalDiscountAmount>
							<Eval_OriginalDiscountAmount>!EMPTY(Parent.DiscountRate)</Eval_OriginalDiscountAmount>
							<Eval_Ct0_OriginalAmount3>ISNULL(PriceIncludeTax,0)=1</Eval_Ct0_OriginalAmount3>
							<Eval_Ct0_OriginalAmount_AutoValue />
							<Eval_TotalOriginalAmount0 />
							<Eval_Ct0_Amount9 />
							<Eval_Ct0_AllocationRate_GetValue>Parent.CostAllocMethod IS NOT NULL</Eval_Ct0_AllocationRate_GetValue>
						</OriginalAmount9>
						<Amount9>
							<Eval_Ct0_Amount9>UPDATEDCOLUMN()='Amount9'</Eval_Ct0_Amount9>
							<Eval_Amount_AutoValue />
							<Eval_TotalAmount0>Empty(Parent._Flag)</Eval_TotalAmount0>
							<!-- 17/04/2023 ThắngĐQ: Kiểm tra nhập mua có chọn CP -->
							<Eval_CheckRelationCP_SetValue>ROWSTATE()&lt;&gt;'Added'</Eval_CheckRelationCP_SetValue>
						</Amount9>
						<IsItemWithLocation_WH>
							<!-- 03/11/17: Kết hợp cả điều kiện vật tư + kho theo dõi vị trí thì mới được tính là theo dõi vị trí -->
							<Eval_Ct0_IsItemWithLocation />
						</IsItemWithLocation_WH>
						<IsItemWithLocation_Item>
							<!-- 03/11/17: Kết hợp cả điều kiện vật tư + kho theo dõi vị trí thì mới được tính là theo dõi vị trí -->
							<Eval_Ct0_IsItemWithLocation />
						</IsItemWithLocation_Item>
						<IsItemWithSerialNo>
							<Eval_Ct0_Phys_ItemWithSerialNo_VisibleWhen>_Convert_Expr</Eval_Ct0_Phys_ItemWithSerialNo_VisibleWhen>
							<Eval_Ct0_PhysicalInventory>_Convert_Expr</Eval_Ct0_PhysicalInventory>
						</IsItemWithSerialNo>
						<IsItemWithLocation>
							<Eval_Ct0_Phys_LocationId_VisibleWhen>_Convert_Expr</Eval_Ct0_Phys_LocationId_VisibleWhen>
							<Eval_Ct0_PhysicalInventory>_Convert_Expr</Eval_Ct0_PhysicalInventory>
						</IsItemWithLocation>
						<IsItemWithLot>
							<Eval_Ct0_Phys_ItemLotCode_VisibleWhen>_Convert_Expr</Eval_Ct0_Phys_ItemLotCode_VisibleWhen>
							<Eval_Ct0_Phys_AutoCreateItemLotCode_VisibleWhen>_Convert_Expr</Eval_Ct0_Phys_AutoCreateItemLotCode_VisibleWhen>
							<Eval_Ct0_PhysicalInventory>_Convert_Expr</Eval_Ct0_PhysicalInventory>
						</IsItemWithLot>
						<IsItemWithColor>
							<Eval_Ct0_Phys_ColorCode_VisibleWhen>_Convert_Expr</Eval_Ct0_Phys_ColorCode_VisibleWhen>
							<Eval_Ct0_PhysicalInventory>_Convert_Expr</Eval_Ct0_PhysicalInventory>
						</IsItemWithColor>
						<IsItemWithSize>
							<Eval_Ct0_Phys_SizeCode_VisibleWhen>_Convert_Expr</Eval_Ct0_Phys_SizeCode_VisibleWhen>
							<Eval_Ct0_PhysicalInventory>_Convert_Expr</Eval_Ct0_PhysicalInventory>
						</IsItemWithSize>
						<IsItemWithQuality>
							<Eval_Ct0_Phys_ItemQualityCode_VisibleWhen>_Convert_Expr</Eval_Ct0_Phys_ItemQualityCode_VisibleWhen>
							<Eval_Ct0_PhysicalInventory>_Convert_Expr</Eval_Ct0_PhysicalInventory>
						</IsItemWithQuality>
						<ProductDebitAccount>
							<Eval_ProductDebitAccount_GetValueFromChild />
						</ProductDebitAccount>
						<_PhysicalInventory>
							<Eval_PhysTotalQuantity_GetValueFromChild />
							<Eval_RemainPhysQuantity_SetValue>!Empty(_PhysicalInventory)</Eval_RemainPhysQuantity_SetValue>
							<Eval_PhysTotalQuantity9_GetValueFromChild />
							<Eval_RemainPhysQuantity9_SetValue>!Empty(_PhysicalInventory)</Eval_RemainPhysQuantity9_SetValue>
						</_PhysicalInventory>
						<WorkProcessId>
							<!-- 23/10/2023 ANHPK cảnh báo nhập công đoạn theo TK-->
							<Eval_Ct0_CheckWorkProcess_SetValue />
						</WorkProcessId>
						<!-- 23/10/2023 ANHPK cảnh báo nhập công đoạn theo TK-->
						<CheckWorkProcess>
							<Eval_CheckWorkProcess_SetValue />
						</CheckWorkProcess>
						<CostAllocMethod>
							<Eval_Ct0_AllocationRate_GetValue />
						</CostAllocMethod>
						<AllocationRate>
							<Eval__AllocationRate_ResetValue />
							<Eval_AllocationRate_Exists />
						</AllocationRate>
						<!--16/10/2023 ANHPK thêm thông tin vật tư bổ sung hóa đơn VAT-->
						<AtchDocOrder>
							<Eval_Ct0_AtchDocOrder_SetValue>
								<DataMember>AtchDocOrder</DataMember>
								<Value>ABS(AtchDocOrder)</Value>
								<bSuppressChangeEvents>True</bSuppressChangeEvents>
							</Eval_Ct0_AtchDocOrder_SetValue>
						</AtchDocOrder>
						<DiscountRate>
							<Eval_Ct0_OriginalDiscountAmount />
						</DiscountRate>
						<OriginalDiscountAmount>
							<Eval_Ct0_OriginalDiscountAmount>UpdatedColumn()='OriginalDiscountAmount' AND !Empty(DiscountRate)</Eval_Ct0_OriginalDiscountAmount>
							<Eval_Ct0_DiscountAmount />
							<Eval_Ct0_OriginalAmount4 />
							<Eval_OriginalDiscountAmount>!EMPTY(Parent.DiscountRate)</Eval_OriginalDiscountAmount>
							<Eval_Ct0_AllocationRate_GetValue>Parent.CostAllocMethod IS NOT NULL</Eval_Ct0_AllocationRate_GetValue>
						</OriginalDiscountAmount>
						<DiscountAmount>
							<Eval_Ct0_DiscountAmount>UpdatedColumn()='DiscountAmount'</Eval_Ct0_DiscountAmount>
							<Eval_Ct0_Amount4 />
						</DiscountAmount>
						<OriginalDiscountAmount1>
							<Eval_Ct0_DiscountAmount1 />
							<Eval_Ct0_OriginalAmount4 />
						</OriginalDiscountAmount1>
						<DiscountAmount1>
							<Eval_Ct0_Amount4 />
						</DiscountAmount1>
						<OriginalAmount>
							<Eval_Ct0_Amount />
							<Eval_Ct0_OriginalAmount3>ISNULL(PriceIncludeTax,0)=0</Eval_Ct0_OriginalAmount3>
							<Eval_TotalOriginalAmount0 />
						</OriginalAmount>
						<OriginalAmount3>
							<Eval_Ct0_OriginalAmount3>UpdatedColumn()='OriginalAmount3'</Eval_Ct0_OriginalAmount3>
							<Eval_Ct0_OriginalAmount_AutoValue />
							<Eval_Ct0_Amount3 />
							<Eval_TotalOriginalAmount3 />
							<Eval_TotalOriginalAmount3_5Percent />
							<Eval_TotalOriginalAmount3_8Percent />
							<Eval_TotalOriginalAmount3_10Percent />
							<Eval_TotalOriginalAmount3_OtherPercent />
						</OriginalAmount3>
						<Amount3>
							<Eval_Ct0_Amount3>UpdatedColumn()='Amount3'</Eval_Ct0_Amount3>
							<Eval_TotalAmount3 />
						</Amount3>
						<TaxCode>
							<Eval_Ct0_OriginalAmount3_ResetNull />
							<Eval_AttachedTaxInfo />
						</TaxCode>
						<TaxRate>
							<Eval_Ct0_OriginalAmount3_ResetValue>
								<DataMember>OriginalAmount3</DataMember>
								<Value>NULL</Value>
								<Expr>EMPTY(TaxRate)</Expr>
							</Eval_Ct0_OriginalAmount3_ResetValue>
							<Eval_Ct0_OriginalAmount3 />
							<Eval_TotalOriginalAmount3_5Percent />
							<Eval_TotalOriginalAmount3_8Percent />
							<Eval_TotalOriginalAmount3_10Percent />
							<Eval_TotalOriginalAmount3_OtherPercent />
							<Eval_Ct0_OriginalAmount3_ResetNull />
						</TaxRate>
						<TaxRateTmp>
							<Eval_TotalOriginalAmount3_5Percent />
							<Eval_TotalOriginalAmount3_8Percent />
							<Eval_TotalOriginalAmount3_10Percent />
							<Eval_TotalOriginalAmount3_OtherPercent />
						</TaxRateTmp>
						<TaxType>
							<Eval_Ct0_DebitAccount3_DefaultValue />
							<Eval_Ct0_CreditAccount3_DefaultValue />
						</TaxType>
						<Account_VAT>
							<Eval_Ct0_DebitAccount3_DefaultValue />
							<Eval_Ct0_CreditAccount3_DefaultValue />
						</Account_VAT>
						<DebitAccount3>
							<Eval_Ct0_DebitAccount3_DefaultValue>EMPTY(DebitAccount3)</Eval_Ct0_DebitAccount3_DefaultValue>
						</DebitAccount3>
						<CreditAccount3>
							<Eval_Ct0_CreditAccount3_DefaultValue>EMPTY(CreditAccount3)</Eval_Ct0_CreditAccount3_DefaultValue>
						</CreditAccount3>
						<PriceIncludeTax>
							<Eval_Ct0_OriginalAmount3 />
							<Eval_Ct0_OriginalAmount_AutoValue />
						</PriceIncludeTax>
					</ColumnChanged>
					<EvaluatorGroups>
						<EvalGroup_Ct0_ConvertFromPO>
							<!-- Eval_Ct0_OriginalUnitCost_ConvertPO>
            <DataMember>OriginalUnitCost</DataMember>
            <Expr>!Empty(Quantity9) AND !Empty(OriginalAmount9) AND Empty(OriginalUnitCost) AND Empty(UnitCost)</Expr>
            <Value>OriginalAmount9/Quantity9</Value>
            <zResultDecimalRound>5</zResultDecimalRound>
            <bSuppressChangeEvents>True</bSuppressChangeEvents>
          </Eval_Ct0_OriginalUnitCost_ConvertPO>
          <Eval_Ct0_UnitCost_FromParent />
          <Eval_Ct0_Amount9_FromParent />
          <Xử lý tình huống tồn tức thời -->
							<Eval_Ct0_QuantityBeforeTrans_WhenSameItemValue>!Empty(_ConvertingFlag) AND _ConvertingFlag=2 AND _CalINV_Expr</Eval_Ct0_QuantityBeforeTrans_WhenSameItemValue>
							<Eval_Ct0_QuantityAfterTrans_WhenSameItemValue>!Empty(_ConvertingFlag) AND _ConvertingFlag=2 AND _CalINV_Expr</Eval_Ct0_QuantityAfterTrans_WhenSameItemValue>
							<Eval_TotalOriginalAmount0>_ConvertingFlag=9</Eval_TotalOriginalAmount0>
							<Eval_TotalOriginalAmount4>_ConvertingFlag=9</Eval_TotalOriginalAmount4>
							<Eval_TotalOriginalAmount3>_ConvertingFlag=9</Eval_TotalOriginalAmount3>
							<Eval_Ct0_ConvertingFlag_SetNullValue>!_Convert_Expr</Eval_Ct0_ConvertingFlag_SetNullValue>
						</EvalGroup_Ct0_ConvertFromPO>
					</EvaluatorGroups>
					<Evaluators>
						<Eval_Ct0_UpdateBuiltinOrder>
							<ClassName>BravoTableOrderer</ClassName>
							<DataMember>BuiltinOrder</DataMember>
						</Eval_Ct0_UpdateBuiltinOrder>
						<!-- Bingding member -->
						<Eval_Ct0_GetValueFromParent>
							<ClassName>BravoCopyValue</ClassName>
							<CopyValues>
								<DocDate>Parent.DocDate</DocDate>
								<DocCode>Parent.DocCode</DocCode>
								<CustomerId>Parent.CustomerId</CustomerId>
								<DocGroup>Parent.DocGroup</DocGroup>
								<TransCode>Parent.TransCode</TransCode>
							</CopyValues>
						</Eval_Ct0_GetValueFromParent>
						<Eval_Ct0_Quantity>
							<DataMember>Quantity</DataMember>
							<Value>Quantity9*IIF(Empty(ConvertRate9),1,ConvertRate9)</Value>
							<zResultDecimalRound>{=CONFIG('M_QuantityDecRound')}</zResultDecimalRound>
						</Eval_Ct0_Quantity>
						<Eval_Ct0_UnitCost>
							<ClassName>BravoMoneyEvaluator</ClassName>
							<DataMember>UnitCost</DataMember>
							<zResultDecimalRound>5</zResultDecimalRound>
							<zMoneyValue>OriginalUnitCost</zMoneyValue>
							<zNumberValue>IIF(Parent.ExchangeRateOperator=1,Parent.ExchangeRate,1/Parent.ExchangeRate)</zNumberValue>
							<zFormula>IIF(Parent.CurrencyCode=CONFIG('M_Ma_Tte0'),{0},{0}*{1})</zFormula>
						</Eval_Ct0_UnitCost>
						<Eval_Ct0_UnitCost_FromParent>
							<ClassName>BravoMoneyEvaluator</ClassName>
							<DataMember>UnitCost</DataMember>
							<zResultDecimalRound>5</zResultDecimalRound>
							<zMoneyValue>OriginalUnitCost</zMoneyValue>
							<zNumberValue>IIF(Parent.ExchangeRateOperator=1,Parent.ExchangeRate,1/Parent.ExchangeRate)</zNumberValue>
							<zFormula>IIF(Parent.CurrencyCode=CONFIG('M_Ma_Tte0'),{0},{0}*{1})</zFormula>
							<bSuppressChangeEvents>True</bSuppressChangeEvents>
						</Eval_Ct0_UnitCost_FromParent>
						<Eval_Ct0_OriginalAmount9>
							<ClassName>BravoMoneyEvaluator</ClassName>
							<DataMember>OriginalAmount9</DataMember>
							<Expr>!Empty(Quantity9) OR !Empty(OriginalUnitCost)</Expr>
							<zNumberValue>Quantity9</zNumberValue>
							<zMoneyValue>OriginalUnitCost</zMoneyValue>
							<zResultDecimalRound>Parent.DecimalRound</zResultDecimalRound>
							<zResultMarginValue>IIF(UPDATEDCOLUMN()='OriginalAmount9',Parent.MoneyDiffValue,0)</zResultMarginValue>
						</Eval_Ct0_OriginalAmount9>
						<Eval_Ct0_Amount9>
							<ClassName>BravoMoneyEvaluator</ClassName>
							<DataMember>Amount9</DataMember>
							<zMoneyValue>OriginalAmount9</zMoneyValue>
							<zNumberValue>IIF(Parent.ExchangeRateOperator=1,Parent.ExchangeRate,1/Parent.ExchangeRate)</zNumberValue>
							<zResultMarginValue>IIF(UPDATEDCOLUMN()='Amount9',Parent.MoneyDiffValue0,0)</zResultMarginValue>
							<zResultDecimalRound>{=Currency('DecimalRound')}</zResultDecimalRound>
							<zFormula>IIF(Parent.CurrencyCode=CONFIG('M_Ma_Tte0'),{0},{0}*{1})</zFormula>
						</Eval_Ct0_Amount9>
						<Eval_Ct0_OriginalAmount_AutoValue>
							<DataMember>OriginalAmount</DataMember>
							<Value>ISNULL(OriginalAmount9,0)-ISNULL(OriginalAmount4,0)-
						IIF(!Empty(PriceIncludeTax),ISNULL(OriginalAmount3,0),0)</Value>
							<zResultDecimalRound>Parent.DecimalRound</zResultDecimalRound>
						</Eval_Ct0_OriginalAmount_AutoValue>
						<Eval_Amount_AutoValue>
							<DataMember>Amount</DataMember>
							<Value>Amount9-ISNULL(Amount4,0)</Value>
							<Expr>UPDATEDCOLUMN() IN ('Amount9','Amount4')</Expr>
						</Eval_Amount_AutoValue>
						<Eval_Ct0_Amount>
							<ClassName>BravoMoneyEvaluator</ClassName>
							<DataMember>Amount</DataMember>
							<zMoneyValue>OriginalAmount</zMoneyValue>
							<zNumberValue>IIF(Parent.ExchangeRateOperator=1,Parent.ExchangeRate,1/Parent.ExchangeRate)</zNumberValue>
							<zResultMarginValue>0</zResultMarginValue>
							<zResultDecimalRound>{=Currency('DecimalRound')}</zResultDecimalRound>
							<zFormula>IIF(Parent.CurrencyCode=CONFIG('M_Ma_Tte0'),{0},{0}*{1})</zFormula>
						</Eval_Ct0_Amount>
						<Eval_Ct0_Amount9_FromParent>
							<ClassName>BravoMoneyEvaluator</ClassName>
							<DataMember>Amount9</DataMember>
							<zMoneyValue>OriginalAmount9</zMoneyValue>
							<zNumberValue>IIF(Parent.ExchangeRateOperator=1,Parent.ExchangeRate,1/Parent.ExchangeRate)</zNumberValue>
							<zResultMarginValue>IIF(UPDATEDCOLUMN()='Amount9',Parent.MoneyDiffValue0,0)</zResultMarginValue>
							<zResultDecimalRound>{=Currency('DecimalRound')}</zResultDecimalRound>
							<bSuppressChangeEvents>True</bSuppressChangeEvents>
						</Eval_Ct0_Amount9_FromParent>
						<Eval_Ct0_Amount_FromParent>
							<ClassName>BravoMoneyEvaluator</ClassName>
							<DataMember>Amount</DataMember>
							<zMoneyValue>OriginalAmount</zMoneyValue>
							<zNumberValue>IIF(Parent.ExchangeRateOperator=1,Parent.ExchangeRate,1/Parent.ExchangeRate)</zNumberValue>
							<zResultMarginValue>0</zResultMarginValue>
							<zResultDecimalRound>{=Currency('DecimalRound')}</zResultDecimalRound>
							<bSuppressChangeEvents>True</bSuppressChangeEvents>
						</Eval_Ct0_Amount_FromParent>
						<Eval_Ct0_Amount4>
							<ClassName>BravoMoneyEvaluator</ClassName>
							<DataMember>Amount4</DataMember>
							<zMoneyValue>ISNULL(OriginalDiscountAmount,0)+ISNULL(OriginalDiscountAmount1,0)</zMoneyValue>
							<zNumberValue>IIF(Parent.ExchangeRateOperator=1,Parent.ExchangeRate,1/Parent.ExchangeRate)</zNumberValue>
							<zResultMarginValue>IIF(UPDATEDCOLUMN()='Amount4',Parent.MoneyDiffValue0,0)</zResultMarginValue>
							<zResultDecimalRound>{=Currency('DecimalRound')}</zResultDecimalRound>
						</Eval_Ct0_Amount4>
						<!-- Running when DecimalRound changed -->
						<Eval_Ct0_OriginalAmount9_RoundWhenChangeDecimalRound>
							<DataMember>OriginalAmount9</DataMember>
							<Value>OriginalAmount9</Value>
							<zResultDecimalRound>Parent.DecimalRound</zResultDecimalRound>
						</Eval_Ct0_OriginalAmount9_RoundWhenChangeDecimalRound>
						<Eval_Ct0_OriginalAmount_RoundWhenChangeDecimalRound>
							<DataMember>OriginalAmount</DataMember>
							<Value>OriginalAmount</Value>
							<zResultDecimalRound>Parent.DecimalRound</zResultDecimalRound>
						</Eval_Ct0_OriginalAmount_RoundWhenChangeDecimalRound>
						<Eval_Ct0_OriginalAmount4_RoundWhenChangeDecimalRound>
							<DataMember>OriginalAmount4</DataMember>
							<Value>OriginalAmount4</Value>
							<zResultDecimalRound>Parent.DecimalRound</zResultDecimalRound>
						</Eval_Ct0_OriginalAmount4_RoundWhenChangeDecimalRound>
						<Eval_Ct0_OriginalAmount3_RoundWhenChangeDecimalRound>
							<DataMember>OriginalAmount3</DataMember>
							<Value>OriginalAmount3</Value>
							<zResultDecimalRound>Parent.DecimalRound</zResultDecimalRound>
						</Eval_Ct0_OriginalAmount3_RoundWhenChangeDecimalRound>
						<!-- Default value -->
						<Eval_Ct0_ItemName_DefaultValue>
							<DataMember>ItemName</DataMember>
							<Value>Name_Item</Value>
						</Eval_Ct0_ItemName_DefaultValue>
						<Eval_Ct0_Description_DefaultValue>
							<DataMember>Description</DataMember>
							<Value>IIF(ISNULL(Name_Item,'')&lt;&gt;ISNULL(ItemName,''),ItemName,Null) </Value>
						</Eval_Ct0_Description_DefaultValue>
						<Eval_Ct0_Unit_DefaultValue>
							<DataMember>Unit</DataMember>
							<Value>Unit_Item</Value>
						</Eval_Ct0_Unit_DefaultValue>
						<Eval_Ct0_DebitAccount_AutoValue>
							<DataMember>DebitAccount</DataMember>
							<Value>CASE(Parent.ItemAccountType,ItemAccount,ItemAccount1,ItemAccount2,ItemAccount3)</Value>
						</Eval_Ct0_DebitAccount_AutoValue>
						<!-- Get Data from parent AccDoc -->
						<Eval_Ct0_DocDate_GetValueFromParent>
							<DataMember>DocDate</DataMember>
							<Value>Parent.DocDate</Value>
						</Eval_Ct0_DocDate_GetValueFromParent>
						<Eval_Ct0_CustomerId_GetValueFromParent>
							<DataMember>CustomerId</DataMember>
							<Value>Parent.CustomerId</Value>
						</Eval_Ct0_CustomerId_GetValueFromParent>
						<Eval_Ct0_TransCode_GetValueFromParent>
							<DataMember>TransCode</DataMember>
							<Value>Parent.TransCode</Value>
						</Eval_Ct0_TransCode_GetValueFromParent>
						<Eval_Ct0_BizDocId_PO_GetValueFromParent>
							<DataMember>BizDocId_PO</DataMember>
							<Value>Parent.BizDocId_PO</Value>
							<Expr>ISNULL(Parent.UsingBizDocId_PO,0)=1 OR Empty(BizDocId_PO)</Expr>
						</Eval_Ct0_BizDocId_PO_GetValueFromParent>
						<Eval_Ct0_BizDocId_SO_GetValueFromParent>
							<DataMember>BizDocId_SO</DataMember>
							<Value>Parent.BizDocId_SO</Value>
							<Expr>ISNULL(Parent.UsingBizDocId_SO,0)=1 OR Empty(BizDocId_SO)</Expr>
						</Eval_Ct0_BizDocId_SO_GetValueFromParent>
						<Eval_Ct0_StatsDocId_WO_GetValueFromParent>
							<DataMember>StatsDocId_WO</DataMember>
							<Value>Parent.StatsDocId_WO</Value>
							<Expr>ISNULL(Parent.UsingStatsDocId_WO,0)=1 OR Empty(StatsDocId_WO)</Expr>
						</Eval_Ct0_StatsDocId_WO_GetValueFromParent>
						<Eval_Ct0_JobId_GetValueFromParent>
							<DataMember>JobId</DataMember>
							<Expr>ISNULL(Parent.UsingJobId,0)=1 OR Empty(JobId)</Expr>
							<Value>Parent.JobId</Value>
						</Eval_Ct0_JobId_GetValueFromParent>
						<Eval_Ct0_WorkProcessId_GetValueFromParent>
							<DataMember>WorkProcessId</DataMember>
							<Value>Parent.WorkProcessId</Value>
							<Expr>ISNULL(Parent.UsingWorkProcessId,0)=1 OR Empty(WorkProcessId)</Expr>
						</Eval_Ct0_WorkProcessId_GetValueFromParent>
						<Eval_Ct0_CostCentreId_GetValueFromParent>
							<DataMember>CostCentreId</DataMember>
							<Value>Parent.CostCentreId</Value>
							<Expr>ISNULL(Parent.UsingCostCentreId,0)=1 OR Empty(CostCentreId)</Expr>
						</Eval_Ct0_CostCentreId_GetValueFromParent>
						<Eval_Ct0_ProductId_GetValueFromParent>
							<DataMember>ProductId</DataMember>
							<Value>Parent.ProductId</Value>
							<Expr>ISNULL(Parent.UsingProductId,0)=1 OR Empty(ProductId)</Expr>
						</Eval_Ct0_ProductId_GetValueFromParent>
						<Eval_Ct0_WarehouseId_GetValueFromParent>
							<DataMember>WarehouseId</DataMember>
							<Value>Parent.WarehouseId</Value>
							<Expr>ISNULL(Parent.UsingWarehouseId,0)=1 OR Empty(WarehouseId)</Expr>
						</Eval_Ct0_WarehouseId_GetValueFromParent>
						<Eval_Ct0_ExpenseCatgId_GetValueFromParent>
							<DataMember>ExpenseCatgId</DataMember>
							<Value>Parent.ExpenseCatgId</Value>
							<Expr>ISNULL(Parent.UsingExpenseCatgId,0)=1 OR Empty(ExpenseCatgId)</Expr>
						</Eval_Ct0_ExpenseCatgId_GetValueFromParent>
						<Eval_Ct0_EmployeeId_GetValueFromParent>
							<DataMember>EmployeeId</DataMember>
							<Value>Parent.EmployeeId</Value>
							<Expr>ISNULL(Parent.UsingEmployeeId,0)=1 OR Empty(EmployeeId)</Expr>
						</Eval_Ct0_EmployeeId_GetValueFromParent>
						<Eval_Ct0_DeptId_GetValueFromParent>
							<DataMember>DeptId</DataMember>
							<Value>Parent.DeptId</Value>
							<Expr>ISNULL(Parent.UsingDeptId,0)=1 OR Empty(DeptId)</Expr>
						</Eval_Ct0_DeptId_GetValueFromParent>
						<Eval_Ct0_CreditAccount_GetValueFromParent>
							<DataMember>CreditAccount</DataMember>
							<Value>PARENT.CreditAccount</Value>
						</Eval_Ct0_CreditAccount_GetValueFromParent>
						<Eval_Ct0_CheckExpenseCatgId_GetValueFromParent>
							<DataMember>CheckExpenseCatgId</DataMember>
							<Value>Parent.CheckExpenseCatgId</Value>
						</Eval_Ct0_CheckExpenseCatgId_GetValueFromParent>
						<Eval_Ct0_CheckDeptId_GetValueFromParent>
							<DataMember>CheckDeptId</DataMember>
							<Value>Parent.CheckDeptId</Value>
						</Eval_Ct0_CheckDeptId_GetValueFromParent>
						<Eval_Ct0_CheckJobId_GetValueFromParent>
							<DataMember>CheckJobId</DataMember>
							<Value>Parent.CheckJobId</Value>
						</Eval_Ct0_CheckJobId_GetValueFromParent>
						<Eval_Ct0_CheckBizDocId_PO_GetValueFromParent>
							<DataMember>CheckBizDocId_PO</DataMember>
							<Value>Parent.CheckBizDocId_PO</Value>
						</Eval_Ct0_CheckBizDocId_PO_GetValueFromParent>
						<Eval_Ct0_CheckBizDocId_SO_GetValueFromParent>
							<DataMember>CheckBizDocId_SO</DataMember>
							<Value>Parent.CheckBizDocId_SO</Value>
						</Eval_Ct0_CheckBizDocId_SO_GetValueFromParent>
						<!-- Eval Phys Quantity -->
						<Eval_Ct0_PhysicalInventory>
							<DataMember>_PhysicalInventory</DataMember>
							<Value>ISNULL(IsItemWithSerialNo,0)+ISNULL(IsItemWithLocation,0)+ISNULL(IsItemWithLot,0)</Value>
						</Eval_Ct0_PhysicalInventory>
						<Eval_Ct0_IsItemWithLocation>
							<!-- 03/11/17: Kết hợp cả điều kiện vật tư + kho theo dõi vị trí thì mới được tính là theo dõi vị trí -->
							<DataMember>IsItemWithLocation</DataMember>
							<Value>MinOf(ISNULL(IsItemWithLocation_Item,0),ISNULL(IsItemWithLocation_WH,0))</Value>
						</Eval_Ct0_IsItemWithLocation>
						<Eval_PhysTotalQuantity_GetValueFromChild>
							<DataMember>PhysTotalQuantity</DataMember>
							<Value>ISNULL(SUM(Child(Phys).Quantity),0)</Value>
						</Eval_PhysTotalQuantity_GetValueFromChild>
						<Eval_RemainPhysQuantity_SetValue>
							<DataMember>RemainPhysQuantity</DataMember>
							<Value>ISNULL(Quantity,0)-ISNULL(PhysTotalQuantity,0)</Value>
						</Eval_RemainPhysQuantity_SetValue>
						<Eval_PhysTotalQuantity_GetInitValueFromChild>
							<DataMember>PhysTotalQuantity</DataMember>
							<Value>ISNULL(SUM(Child(Phys).Quantity),0)</Value>
							<Expr>!Empty(_PhysicalInventory)</Expr>
						</Eval_PhysTotalQuantity_GetInitValueFromChild>
						<Eval_RemainPhysQuantity_SetInitValue>
							<DataMember>RemainPhysQuantity</DataMember>
							<Value>ISNULL(Quantity,0)-ISNULL(PhysTotalQuantity,0)</Value>
							<Expr>!Empty(_PhysicalInventory)</Expr>
						</Eval_RemainPhysQuantity_SetInitValue>
						<Eval_Ct0_Phys_ItemWithSerialNo_VisibleWhen>
							<Controls>
								<Name>BravoGridContainer.Item_Phys.ItemSerialNo</Name>
								<Visible>!Empty(IsItemWithSerialNo)</Visible>
							</Controls>
						</Eval_Ct0_Phys_ItemWithSerialNo_VisibleWhen>
						<Eval_Ct0_Phys_LocationId_VisibleWhen>
							<Controls>
								<Name>BravoGridContainer.Item_Phys.LocationId.LocationName</Name>
								<Visible>!Empty(IsItemWithLocation)</Visible>
							</Controls>
						</Eval_Ct0_Phys_LocationId_VisibleWhen>
						<Eval_Ct0_Phys_ItemLotCode_VisibleWhen>
							<Controls>
								<Name>BravoGridContainer.Item_Phys.ItemLotCode.MfgDate.ExpiryDate</Name>
								<Visible>!Empty(IsItemWithLot)</Visible>
							</Controls>
						</Eval_Ct0_Phys_ItemLotCode_VisibleWhen>
						<Eval_Ct0_Phys_AutoCreateItemLotCode_VisibleWhen>
							<Controls>
								<Name>BravoGridContainer.Item_Phys.AutoCreateItemLotCode</Name>
								<Visible>!Empty(IsItemWithLot) AND CONFIG('M_AllowCreateItemLot')=1</Visible>
							</Controls>
						</Eval_Ct0_Phys_AutoCreateItemLotCode_VisibleWhen>
						<Eval_Ct0_Phys_ColorCode_VisibleWhen>
							<Controls>
								<Name>BravoGridContainer.Item_Phys.ColorCode</Name>
								<Visible>!Empty(IsItemWithColor)</Visible>
							</Controls>
						</Eval_Ct0_Phys_ColorCode_VisibleWhen>
						<Eval_Ct0_Phys_SizeCode_VisibleWhen>
							<Controls>
								<Name>BravoGridContainer.Item_Phys.SizeCode</Name>
								<Visible>!Empty(IsItemWithSize)</Visible>
							</Controls>
						</Eval_Ct0_Phys_SizeCode_VisibleWhen>
						<Eval_Ct0_Phys_ItemQualityCode_VisibleWhen>
							<Controls>
								<Name>BravoGridContainer.Item_Phys.ItemQualityCode</Name>
								<Visible>!Empty(IsItemWithQuality)</Visible>
							</Controls>
						</Eval_Ct0_Phys_ItemQualityCode_VisibleWhen>
						<Eval_Ct0_QuantityBeforeTrans>
							<ClassName>BravoServerConstraint</ClassName>
							<Command>usp_B30CurrentInventory_GetValue</Command>
							<Parameters>
								<BranchCode>BranchCode</BranchCode>
								<FiscalYear>Parent.FiscalYear</FiscalYear>
								<WarehouseId>WarehouseId</WarehouseId>
								<ItemId>ItemId</ItemId>
								<DataCode>FiscalYear('DataCode')</DataCode>
								<ct0Name>Parent.ct0Name</ct0Name>
								<Stt>Parent.Stt</Stt>
								<DocGroup>Parent.DocGroup</DocGroup>
								<DocCode>NULL</DocCode>
								<PostSL>Parent.PrevPostSL</PostSL>
							</Parameters>
							<DataMember>QuantityBeforeTrans</DataMember>
							<Expr>_Convert_Expr AND !Empty(ItemId) AND !Empty(WarehouseId)</Expr>
							<bSuppressChangeEvents>True</bSuppressChangeEvents>
							<Text />
						</Eval_Ct0_QuantityBeforeTrans>
						<Eval_Ct0_QuantityBeforeTrans_WhenSameItemValue>
							<ClassName>BravoServerConstraint</ClassName>
							<Command>usp_B30CurrentInventory_GetValue</Command>
							<Parameters>
								<BranchCode>BranchCode</BranchCode>
								<FiscalYear>Parent.FiscalYear</FiscalYear>
								<WarehouseId>WarehouseId</WarehouseId>
								<ItemId>ItemId</ItemId>
								<DataCode>FiscalYear('DataCode')</DataCode>
								<ct0Name>Parent.ct0Name</ct0Name>
								<Stt>Parent.Stt</Stt>
								<DocGroup>Parent.DocGroup</DocGroup>
								<DocCode>NULL</DocCode>
								<PostSL>Parent.PrevPostSL</PostSL>
							</Parameters>
							<DataMember>QuantityBeforeTrans</DataMember>
							<zUpdateScopeExpr>ItemId={=ISNULL(ItemId,0)} AND WarehouseId={=ISNULL(WarehouseId,0)}</zUpdateScopeExpr>
							<Expr>ISNULL(_ConvertingFlag, 0) IN(0,2) AND !Empty(ItemId) AND !Empty(WarehouseId)</Expr>
							<bSuppressChangeEvents>True</bSuppressChangeEvents>
							<Text />
						</Eval_Ct0_QuantityBeforeTrans_WhenSameItemValue>
						<Eval_Ct0_QuantityAfterTrans>
							<DataMember>QuantityAfterTrans</DataMember>
							<Value>ISNULL(QuantityBeforeTrans,0)+IIF(Parent.DocGroup=1,1,-1)*ISNULL(Quantity,0)</Value>
							<zResultDecimalRound>{=CONFIG('M_QuantityDecRound')}</zResultDecimalRound>
							<Expr>_Convert_Expr AND !Empty(ItemId) AND !Empty(WarehouseId)</Expr>
							<bSuppressChangeEvents>True</bSuppressChangeEvents>
						</Eval_Ct0_QuantityAfterTrans>
						<Eval_Ct0_QuantityAfterTrans_WhenSameItemValue>
							<DataMember>QuantityAfterTrans</DataMember>
							<Value>ISNULL(QuantityBeforeTrans,0)+IIF(Parent.DocGroup=1,1,-1)*ISNULL(SUMIF(ct0.Quantity,ItemId={=ItemId} AND WarehouseId='{=WarehouseId}'),0)</Value>
							<zResultDecimalRound>{=CONFIG('M_QuantityDecRound')}</zResultDecimalRound>
							<zScopeExpr>ItemId={=ISNULL(ItemId,0)} AND WarehouseId={=ISNULL(WarehouseId,0)}</zScopeExpr>
							<Expr>ISNULL(_ConvertingFlag, 0) IN(0,2) AND !Empty(ItemId) AND !Empty(WarehouseId)</Expr>
							<bSuppressChangeEvents>True</bSuppressChangeEvents>
						</Eval_Ct0_QuantityAfterTrans_WhenSameItemValue>
						<Eval_Ct0_QuantityAfterTrans_ResetValue>
							<DataMember>QuantityAfterTrans</DataMember>
							<Value>ISNULL(QuantityBeforeTrans,0)+IIF(Parent.DocGroup=1,1,-1)*ISNULL(SUMIF(Ct0.Quantity,ItemId={=ISNULL(PrevItemId,ItemId)} AND WarehouseId='{=ISNULL(PrevWarehouseId,WarehouseId)}'),0)</Value>
							<zResultDecimalRound>{=CONFIG('M_QuantityDecRound')}</zResultDecimalRound>
							<zScopeExpr>Id&lt;&gt;{=ISNULL(Id,0)} AND ItemId={=ISNULL(ISNULL(PrevItemId,ItemId),0)} AND WarehouseId='{=ISNULL(ISNULL(PrevWarehouseId,WarehouseId),'')}'</zScopeExpr>
							<bSuppressChangeEvents>True</bSuppressChangeEvents>
						</Eval_Ct0_QuantityAfterTrans_ResetValue>
						<Eval_Ct0_QuantityTrans_ResetNullWhenEmptyItemWarehouse>
							<!-- Xóa tồn tức thời trường hợp ko có kho, vật tư, mặt hàng dịch vụ -->
							<DataMember>QuantityBeforeTrans,QuantityAfterTrans</DataMember>
							<Value>NULL</Value>
							<Expr>_Convert_Expr AND (!Empty(QuantityBeforeTrans) OR !Empty(QuantityAfterTrans)) AND (Empty(ItemId) OR Empty(WarehouseId))</Expr>
						</Eval_Ct0_QuantityTrans_ResetNullWhenEmptyItemWarehouse>
						<Eval_Ct0_PrevItemId_SetValue>
							<DataMember>PrevItemId</DataMember>
							<Value>ItemId</Value>
						</Eval_Ct0_PrevItemId_SetValue>
						<Eval_Ct0_PrevWarehouseId_SetValue>
							<DataMember>PrevWarehouseId</DataMember>
							<Value>WarehouseId</Value>
						</Eval_Ct0_PrevWarehouseId_SetValue>
						<Eval_Ct0_PrevAllowIssueWhenNotEnough_SetValue>
							<DataMember>PrevAllowIssueWhenNotEnough</DataMember>
							<Value>AllowIssueWhenNotEnough</Value>
						</Eval_Ct0_PrevAllowIssueWhenNotEnough_SetValue>
						<Eval_Ct0_PrevItemId_SetNullValue>
							<DataMember>PrevItemId</DataMember>
							<Value>Null</Value>
							<Expr>!Empty(PrevItemId)</Expr>
						</Eval_Ct0_PrevItemId_SetNullValue>
						<Eval_Ct0_PrevWarehouseId_SetNullValue>
							<DataMember>PrevWarehouseId</DataMember>
							<Value>Null</Value>
							<Expr>!Empty(PrevWarehouseId)</Expr>
						</Eval_Ct0_PrevWarehouseId_SetNullValue>
						<Eval_Ct0_PrevAllowIssueWhenNotEnough_SetNullValue>
							<DataMember>PrevAllowIssueWhenNotEnough</DataMember>
							<Value>Null</Value>
							<Expr>PrevAllowIssueWhenNotEnough IS NOT NULL</Expr>
						</Eval_Ct0_PrevAllowIssueWhenNotEnough_SetNullValue>
						<Eval_Ct0_SameItemValue>
							<DataMember>_SameItemValue</DataMember>
							<Value>IIF(Empty(ItemId) OR Empty(WarehouseId),0,EXISTS(Ct0,Id&lt;&gt;{=Id} AND ItemId={=ISNULL(ItemId,0)} AND WarehouseId={=ISNULL(WarehouseId,0)}))</Value>
							<Expr>_Convert_Expr</Expr>
						</Eval_Ct0_SameItemValue>
						<Eval_Ct0_RunningTrans>
							<DataMember>_RunningTrans</DataMember>
							<Value>1</Value>
							<Expr>_Convert_Expr AND !Empty(ItemId) AND !Empty(WarehouseId) AND ItemType IS NOT NULL AND AllowIssueWhenNotEnough IS NOT NULL</Expr>
						</Eval_Ct0_RunningTrans>
						<Eval_Ct0_QuantityAfterTrans_WhenDeleting>
							<DataMember>QuantityAfterTrans</DataMember>
							<!--Value>ISNULL(QuantityAfterTrans,0)-IIF(Parent.DocGroup=1,1,-1)*SUMIF(Ct0.Quantity,Id&lt;&gt;{=Id} AND ItemId={=ISNULL(ItemId,0)} AND WarehouseId={=ISNULL(WarehouseId,0)})</Value-->
							<Value>ISNULL(QuantityBeforeTrans,0) + IIF(Parent.DocGroup=1,1,-1)*SUMIF(Ct0.Quantity, Empty(_RowDeleting) AND ItemId={=ISNULL(ItemId,0)} AND WarehouseId={=ISNULL(WarehouseId,0)})</Value>
							<zResultDecimalRound>{=CONFIG('M_QuantityDecRound')}</zResultDecimalRound>
							<zScopeExpr>Empty(_RowDeleting) AND ItemId={=ISNULL(ItemId,0)} AND WarehouseId={=ISNULL(WarehouseId,0)}</zScopeExpr>
							<Expr>_CalINV_Expr</Expr>
							<bSuppressChangeEvents>True</bSuppressChangeEvents>
						</Eval_Ct0_QuantityAfterTrans_WhenDeleting>
						<Eval_Ct0_QuantityBeforeTrans_InitValue_WhenNotPosted>
							<DataMember>QuantityBeforeTrans</DataMember>
							<Value>ISNULL(QuantityAfterTrans,0)</Value>
							<zResultDecimalRound>{=CONFIG('M_QuantityDecRound')}</zResultDecimalRound>
							<bSuppressChangeEvents>True</bSuppressChangeEvents>
							<Expr>Parent.PrevPostSL=0 AND _CurINV_Expr</Expr>
						</Eval_Ct0_QuantityBeforeTrans_InitValue_WhenNotPosted>
						<Eval_Ct0_QuantityAfterTrans_InitValue_WhenNotPosted>
							<DataMember>QuantityAfterTrans</DataMember>
							<Value>ISNULL(QuantityBeforeTrans,0) + IIF(Parent.DocGroup=1,1,-1)*ISNULL(_QuantityByItem,0)</Value>
							<zResultDecimalRound>{=CONFIG('M_QuantityDecRound')}</zResultDecimalRound>
							<bSuppressChangeEvents>True</bSuppressChangeEvents>
							<Expr>Parent.PrevPostSL=0 AND _CurINV_Expr</Expr>
						</Eval_Ct0_QuantityAfterTrans_InitValue_WhenNotPosted>
						<Eval_Ct0_QuantityBeforeTrans_InitValue>
							<DataMember>QuantityBeforeTrans</DataMember>
							<Value>ISNULL(QuantityAfterTrans,0)+IIF(Parent.DocGroup=1,-1,+1)*ISNULL(_QuantityByItem,0)</Value>
							<zResultDecimalRound>{=CONFIG('M_QuantityDecRound')}</zResultDecimalRound>
							<bSuppressChangeEvents>True</bSuppressChangeEvents>
							<Expr>Parent.PrevPostSL=1 AND _CurINV_Expr</Expr>
							<allowRunning>Nonnested</allowRunning>
						</Eval_Ct0_QuantityBeforeTrans_InitValue>
						<!-- Other eval -->
						<Eval_Ct0_ConvertingFlag_SetNullValue>
							<DataMember>_ConvertingFlag</DataMember>
							<Value>Null</Value>
							<Expr>!_Convert_Expr</Expr>
						</Eval_Ct0_ConvertingFlag_SetNullValue>
						<Eval_Ct0_UserId_DefaultValueFromParent>
							<DataMember>UserId</DataMember>
							<Value>Parent.UserId</Value>
						</Eval_Ct0_UserId_DefaultValueFromParent>
						<Eval_Ct0_RowId_AutoValue>
							<!-- 16/07/2019 Thăng tạo sẵn RowId trước khi lưu -->
							<ClassName>BravoServerConstraint</ClassName>
							<Command>usp_sys_CreateSttBySeq</Command>
							<dataAccessMode>Write</dataAccessMode>
							<Parameters>
								<TableName>LayoutTableName()</TableName>
								<Ws_Id>Branch('Ws_Id')</Ws_Id>
								<Ext>Parent.DocCode</Ext>
							</Parameters>
							<DataMember>RowId</DataMember>
							<Expr>Empty(RowId)</Expr>
							<Text />
						</Eval_Ct0_RowId_AutoValue>
						<Eval_Ct0_CustomFieldId1_DefaultValueFromParent>
							<DataMember>CustomFieldId1</DataMember>
							<Expr>Empty(CustomFieldId1) OR ISNULL(Parent.UsingCustomFieldId1,0)=1</Expr>
							<Value>Parent.CustomFieldId1</Value>
							<bSuppressChangeEvents>True</bSuppressChangeEvents>
						</Eval_Ct0_CustomFieldId1_DefaultValueFromParent>
						<Eval_Ct0_CustomFieldId2_DefaultValueFromParent>
							<DataMember>CustomFieldId2</DataMember>
							<Expr>Empty(CustomFieldId2) OR ISNULL(Parent.UsingCustomFieldId2,0)=1</Expr>
							<Value>Parent.CustomFieldId2</Value>
							<bSuppressChangeEvents>True</bSuppressChangeEvents>
						</Eval_Ct0_CustomFieldId2_DefaultValueFromParent>
						<Eval_Ct0_CustomFieldId3_DefaultValueFromParent>
							<DataMember>CustomFieldId3</DataMember>
							<Expr>Empty(CustomFieldId3) OR ISNULL(Parent.UsingCustomFieldId3,0)=1</Expr>
							<Value>Parent.CustomFieldId3</Value>
							<bSuppressChangeEvents>True</bSuppressChangeEvents>
						</Eval_Ct0_CustomFieldId3_DefaultValueFromParent>
						<Eval_Ct0_CheckCostCentre_GetValueFromParent>
							<DataMember>CheckCostCentre</DataMember>
							<Value>Parent.CheckCostCentre</Value>
						</Eval_Ct0_CheckCostCentre_GetValueFromParent>
						<!-- T8/2021 ThắngĐQ: Khóa dữ liệu mua - bán -->
						<Eval_Ct0_SetRowState>
							<DataMember>_RowState</DataMember>
							<Value>ROWSTATE()</Value>
							<Expr>ROWSTATE() IN ('Added', 'Modified')</Expr>
						</Eval_Ct0_SetRowState>
						<!-- 28/09/22: THANGNH nhóm thuế vào view riêng theo các trường Mã -->
						<Eval_AtchDoc_SumGroupByFromDetail>
							<ClassName>BravoTableAggregator</ClassName>
							<DataMember>AtchDoc</DataMember>
							<Expr>!Empty(Parent.TotalAmount3) OR !Empty(Parent.DueDate)</Expr>
							<Groups>
								<TaxCode>TaxCode</TaxCode>
								<TaxRate>TaxRate</TaxRate>
								<DebitAccount>DebitAccount3</DebitAccount>
								<CreditAccount>CreditAccount3</CreditAccount>
								<CustomerId>CustomerId</CustomerId>
								<BizDocId_PO>IIF(!Empty(Parent.IsDebtByContract),BizDocId_PO,NULL)</BizDocId_PO>
							</Groups>
							<Values>
								<BuiltinOrder>MIN(BuiltinOrder)</BuiltinOrder>
								<OriginalAmountBeforeTax>SUM(OriginalAmount)</OriginalAmountBeforeTax>
								<AmountBeforeTax>SUM(Amount)</AmountBeforeTax>
								<OriginalAmount>SUM(OriginalAmount3)</OriginalAmount>
								<Amount>SUM(Amount3)</Amount>
							</Values>
						</Eval_AtchDoc_SumGroupByFromDetail>
						<Eval_PhysTotalQuantity9_GetValueFromChild>
							<DataMember>PhysTotalQuantity9</DataMember>
							<Value>ISNULL(SUM(Child(Phys).Quantity9),0)</Value>
						</Eval_PhysTotalQuantity9_GetValueFromChild>
						<Eval_PhysTotalQuantity9_GetInitValueFromChild>
							<DataMember>PhysTotalQuantity9</DataMember>
							<Value>ISNULL(SUM(Child(Phys).Quantity9),0)</Value>
							<Expr>!Empty(_PhysicalInventory)</Expr>
						</Eval_PhysTotalQuantity9_GetInitValueFromChild>
						<Eval_RemainPhysQuantity9_SetInitValue>
							<DataMember>RemainPhysQuantity9</DataMember>
							<Value>ISNULL(Quantity9,0)-ISNULL(PhysTotalQuantity9,0)</Value>
							<Expr>!Empty(_PhysicalInventory)</Expr>
						</Eval_RemainPhysQuantity9_SetInitValue>
						<Eval_RemainPhysQuantity9_SetValue>
							<DataMember>RemainPhysQuantity9</DataMember>
							<Value>ISNULL(Quantity9,0)-ISNULL(PhysTotalQuantity9,0)</Value>
						</Eval_RemainPhysQuantity9_SetValue>
						<Eval_Ct0_CheckWorkProcess_SetValue>
							<ClassName>BravoServerConstraint</ClassName>
							<DataMember>CheckWorkProcess</DataMember>
							<Command>usp_sys_WorkProcessValidator</Command>
							<Parameters>
								<DebitAccount>DebitAccount</DebitAccount>
								<CreditAccount>CreditAccount</CreditAccount>
								<WorkProcessId>WorkProcessId</WorkProcessId>
								<BranchCode>BRANCH()</BranchCode>
							</Parameters>
							<Text />
						</Eval_Ct0_CheckWorkProcess_SetValue>
						<Eval_Ct0_AllocationRate_GetValue>
							<DataMember>AllocationRate</DataMember>
							<Value>ISNULL(CASE(Parent.CostAllocMethod-1,OriginalAmount9-ISNULL(OriginalDiscountAmount,0),Quantity9),0)</Value>
						</Eval_Ct0_AllocationRate_GetValue>
						<Eval_Ct0_OriginalDiscountAmount1_AllocFromParent>
							<ClassName>BravoAllocationEvaluator</ClassName>
							<DataMember>OriginalDiscountAmount1</DataMember>
							<zAllocationBaseMember>AllocationRate</zAllocationBaseMember>
							<Value>IIF(Empty(AllocationRate),0,Parent.OriginalDiscountAmount)</Value>
							<zResultDecimalRound>Parent.DecimalRound</zResultDecimalRound>
							<zScopeExpr>!Empty(AllocationRate)</zScopeExpr>
						</Eval_Ct0_OriginalDiscountAmount1_AllocFromParent>
						<!--29/05/2024 thêm khoản mục dòng tiền tài chính để lên DL báo cáo LCTT, TMBCTC-->
						<Eval_Ct0_NoteFactorId_DefaultValueFromParent>
							<DataMember>NoteFactorId</DataMember>
							<Expr>Empty(NoteFactorId) OR ISNULL(Parent.UsingNoteFactorId,0)=1</Expr>
							<Value>Parent.NoteFactorId</Value>
							<bSuppressChangeEvents>True</bSuppressChangeEvents>
						</Eval_Ct0_NoteFactorId_DefaultValueFromParent>
						<!--16/10/2023 ANHPK thêm thông tin vật tư bổ sung hóa đơn VAT-->
						<Eval_Ct0_AtchDocInfo_ResetValue>
							<DataMember>AtchDocOrder,AtchDocItemName</DataMember>
							<Value>NULL</Value>
							<Expr>!EXISTS(AtchDoc, !Empty(TaxCode))</Expr>
							<scopeType>Table</scopeType>
						</Eval_Ct0_AtchDocInfo_ResetValue>
						<Eval_Ct0_OriginalDiscountAmount>
							<ClassName>BravoMoneyEvaluator</ClassName>
							<DataMember>OriginalDiscountAmount</DataMember>
							<zNumberValue>DiscountRate</zNumberValue>
							<zMoneyValue>OriginalAmount9</zMoneyValue>
							<zResultDecimalRound>Parent.DecimalRound</zResultDecimalRound>
							<zResultMarginValue>IIF(UpdatedColumn()='OriginalDiscountAmount',Parent.MoneyDiffValue,0)</zResultMarginValue>
						</Eval_Ct0_OriginalDiscountAmount>
						<Eval_Ct0_DiscountAmount>
							<ClassName>BravoMoneyEvaluator</ClassName>
							<DataMember>DiscountAmount</DataMember>
							<zResultDecimalRound>Currency('DecimalRound')</zResultDecimalRound>
							<zMoneyValue>OriginalDiscountAmount</zMoneyValue>
							<zNumberValue>IIF(Parent.ExchangeRateOperator=1,Parent.ExchangeRate,1/Parent.ExchangeRate)</zNumberValue>
							<zResultMarginValue>IIF(UpdatedColumn()='DiscountAmount',Parent.MoneyDiffValue0,0)</zResultMarginValue>
						</Eval_Ct0_DiscountAmount>
						<Eval_Ct0_OriginalAmount4>
							<ClassName>BravoMoneyEvaluator</ClassName>
							<DataMember>OriginalAmount4</DataMember>
							<zMoneyValue>ISNULL(OriginalDiscountAmount,0)+ISNULL(OriginalDiscountAmount1,0)</zMoneyValue>
							<zNumberValue>1</zNumberValue>
							<zResultMarginValue>IIF(UPDATEDCOLUMN()='OriginalAmount4',Parent.MoneyDiffValue0,0)</zResultMarginValue>
							<zResultDecimalRound>Parent.DecimalRound</zResultDecimalRound>
						</Eval_Ct0_OriginalAmount4>
						<Eval_Ct0_DiscountAmount1>
							<ClassName>BravoMoneyEvaluator</ClassName>
							<DataMember>DiscountAmount1</DataMember>
							<zResultDecimalRound>Currency('DecimalRound')</zResultDecimalRound>
							<zMoneyValue>OriginalDiscountAmount1</zMoneyValue>
							<zNumberValue>IIF(Parent.ExchangeRateOperator=1,Parent.ExchangeRate,1/Parent.ExchangeRate)</zNumberValue>
							<zResultMarginValue>IIF(UpdatedColumn()='DiscountAmount1',Parent.MoneyDiffValue0,0)</zResultMarginValue>
						</Eval_Ct0_DiscountAmount1>
						<Eval_Ct0_OriginalDiscountAmount1_ResetValue>
							<DataMember>OriginalDiscountAmount1</DataMember>
							<Value>0</Value>
						</Eval_Ct0_OriginalDiscountAmount1_ResetValue>
						<Eval_Ct0_OriginalAmount3>
							<ClassName>BravoMoneyEvaluator</ClassName>
							<DataMember>OriginalAmount3</DataMember>
							<zMoneyValue>ISNULL(OriginalAmount9,0)-ISNULL(OriginalAmount4,0)</zMoneyValue>
							<zNumberValue>IIF(ISNULL(PriceIncludeTax,0)=1,TaxRate/(1+TaxRate),TaxRate)</zNumberValue>
							<zResultDecimalRound>Parent.DecimalRound</zResultDecimalRound>
							<zResultMarginValue>IIF(UPDATEDCOLUMN()='OriginalAmount3',Parent.VATDiffValue,0)</zResultMarginValue>
							<Expr>!Empty(TaxRate)</Expr>
						</Eval_Ct0_OriginalAmount3>
						<Eval_Ct0_OriginalAmount3_ResetNull>
							<DataMember>OriginalAmount3,Amount3</DataMember>
							<Value>NULL</Value>
							<Expr>Empty(TaxCode)</Expr>
						</Eval_Ct0_OriginalAmount3_ResetNull>
						<Eval_Ct0_Amount3>
							<ClassName>BravoMoneyEvaluator</ClassName>
							<DataMember>Amount3</DataMember>
							<zMoneyValue>OriginalAmount3</zMoneyValue>
							<zNumberValue>IIF(Parent.ExchangeRateOperator=1,Parent.ExchangeRate,1/Parent.ExchangeRate)</zNumberValue>
							<zResultMarginValue>IIF(UPDATEDCOLUMN()='Amount3',Parent.VATDiffValue0,0)</zResultMarginValue>
							<zResultDecimalRound>{=Currency('DecimalRound')}</zResultDecimalRound>
							<zFormula>IIF(Parent.CurrencyCode=CONFIG('M_Ma_Tte0'),{0},{0}*{1})</zFormula>
						</Eval_Ct0_Amount3>
						<Eval_Ct0_DebitAccount3_DefaultValue>
							<DataMember>DebitAccount3</DataMember>
							<Value>CASE(TaxType,Null,Account_VAT,DebitAccount)</Value>
						</Eval_Ct0_DebitAccount3_DefaultValue>
						<Eval_Ct0_CreditAccount3_DefaultValue>
							<DataMember>CreditAccount3</DataMember>
							<Value>CASE(TaxType,Null,CreditAccount,Account_VAT)</Value>
						</Eval_Ct0_CreditAccount3_DefaultValue>
					</Evaluators>
					<Validators>
						<CheckNotNull>
							<SourceColumn>ItemId,CreditAccount,DebitAccount</SourceColumn>
						</CheckNotNull>
						<CheckDebitAccount3>
							<SourceColumn>DebitAccount3,TaxCode</SourceColumn>
							<TargetColumn>DebitAccount3</TargetColumn>
							<zValidateExpr>!(!Empty(TaxCode) AND Empty(DebitAccount3))</zValidateExpr>
						</CheckDebitAccount3>
						<CheckCreditAccount3>
							<SourceColumn>CreditAccount3,TaxCode</SourceColumn>
							<TargetColumn>CreditAccount3</TargetColumn>
							<zValidateExpr>!(!Empty(TaxCode) AND Empty(CreditAccount3))</zValidateExpr>
						</CheckCreditAccount3>
						<CheckQuantityAfterTrans>
							<ClassName>BravoValidator</ClassName>
							<SourceColumn>WarehouseId,ItemId,QuantityAfterTrans,AllowIssueWhenNotEnough</SourceColumn>
							<TargetColumn>Quantity9</TargetColumn>
							<Expr>!Empty(Parent.UsingCheckINVWhenNotEnough)</Expr>
							<zValidateExpr>ISNULL(QuantityAfterTrans,0)&gt;=0 OR Empty(Quantity9) OR Empty(ItemId) OR ISNULL(AllowIssueWhenNotEnough,1)=1</zValidateExpr>
							<Text>
								<Vietnamese>Số tồn kho không đủ để thực hiện giao dịch</Vietnamese>
								<English>Not enough item quantity in warehouse for transaction</English>
								<Chinese>没有足够的项目数量在仓库交易)</Chinese>
								<Japanese>トランザクションの倉庫内が十分ではありません数量)</Japanese>
								<Korean>트랜잭션에 대한웨어 하우스 충분하지 항목 수량)</Korean>
							</Text>
						</CheckQuantityAfterTrans>
						<CheckPhysicalInventory>
							<ClassName>BravoValidator</ClassName>
							<SourceColumn>PhysTotalQuantity,RemainPhysQuantity,_PhysicalInventory,WarehouseId</SourceColumn>
							<TargetColumn>Quantity9</TargetColumn>
							<zValidateExpr>Empty(_PhysicalInventory) OR Empty(RemainPhysQuantity)</zValidateExpr>
							<Text>
								<Vietnamese>Mặt hàng chưa cập nhật chi tiết: vị trí, lô, serial#,...</Vietnamese>
								<English>Item was not detailed: location, lot, serial#,...</English>
								<Chinese>项目没有详细介绍：位置，大量的，序列号，...</Chinese>
								<Japanese>アイテムが詳述されていないし、場所、ロット、シリアル番号、...</Japanese>
								<Korean>항목은 자세히 설명하지 않은 위치, 많은, 시리얼 #,...</Korean>
							</Text>
						</CheckPhysicalInventory>
						<CheckProductId>
							<SourceColumn>ProductId,ProductDebitAccount,ProductCreditAccount</SourceColumn>
							<TargetColumn>ProductId</TargetColumn>
							<zValidateExpr>!((!Empty(ProductDebitAccount) OR !Empty(ProductCreditAccount)) AND Empty(ProductId))</zValidateExpr>
							<Expr>ISNULL(Parent.UsingProductId,0)&lt;&gt;1</Expr>
						</CheckProductId>
						<CheckExpenseCatgId>
							<SourceColumn>ExpenseCatgId,CheckExpenseCatgId</SourceColumn>
							<TargetColumn>ExpenseCatgId</TargetColumn>
							<zValidateExpr>!(!Empty(CheckExpenseCatgId) AND Empty(ExpenseCatgId))</zValidateExpr>
							<Expr>Parent.UsingExpenseCatgId=2</Expr>
						</CheckExpenseCatgId>
						<CheckDeptId>
							<SourceColumn>DeptId,CheckDeptId</SourceColumn>
							<TargetColumn>DeptId</TargetColumn>
							<zValidateExpr>!(!Empty(CheckDeptId) AND Empty(DeptId))</zValidateExpr>
							<Expr>Parent.UsingDeptId=2</Expr>
						</CheckDeptId>
						<CheckBizDocId_PO>
							<SourceColumn>BizDocId_PO,CheckBizDocId_PO</SourceColumn>
							<TargetColumn>BizDocId_PO</TargetColumn>
							<zValidateExpr>!(!Empty(CheckBizDocId_PO) AND Empty(BizDocId_PO))</zValidateExpr>
							<Expr>Parent.UsingBizDocId_PO=2</Expr>
						</CheckBizDocId_PO>
						<CheckBizDocId_SO>
							<SourceColumn>BizDocId_SO,CheckBizDocId_SO</SourceColumn>
							<TargetColumn>BizDocId_SO</TargetColumn>
							<zValidateExpr>!(!Empty(CheckBizDocId_SO) AND Empty(BizDocId_SO))</zValidateExpr>
							<Expr>Parent.UsingBizDocId_SO=2</Expr>
						</CheckBizDocId_SO>
						<CheckJobId>
							<SourceColumn>JobId,CheckJobId</SourceColumn>
							<TargetColumn>JobId</TargetColumn>
							<zValidateExpr>!(!Empty(CheckJobId) AND Empty(JobId))</zValidateExpr>
							<Expr>Parent.UsingJobId=2</Expr>
						</CheckJobId>
						<!-- 22/01/2019 ChamVT thêm điều kiện bắt buộc nhập kho -->
						<CheckWarehouseId>
							<SourceColumn>WarehouseId</SourceColumn>
							<!-- 21/09/2022 ThuanLD Thêm điều kiện hàng hóa là dịch vụ thì không bắt buộc nhập kho-->
							<zValidateExpr>!(!Empty(ItemType) AND Empty(WarehouseId))</zValidateExpr>
							<Expr>Parent.UsingWarehouseId=2</Expr>
						</CheckWarehouseId>
						<CheckItemWithPO>
							<SourceColumn>BizDocId_PO,ItemPurchasePriceTypeId</SourceColumn>
							<TargetColumn>BizDocId_PO</TargetColumn>
							<zValidateExpr>!(Empty(BizDocId_PO) AND ISNULL(ItemPurchasePriceTypeId,-1) IN (3,4))</zValidateExpr>
						</CheckItemWithPO>
						<CheckOriginalUnitCost_PO>
							<ClassName>BravoValidator</ClassName>
							<SourceColumn>OriginalUnitCost_PO,OriginalUnitCost,ItemPurchasePriceTypeId</SourceColumn>
							<TargetColumn>OriginalUnitCost</TargetColumn>
							<!--zValidateExpr>CONVERT((ISNULL(OriginalUnitCost_PO,0)-ISNULL(OriginalUnitCost,0))*100.0/ISNULL(OriginalUnitCost_PO,1), 'System.Int32') BETWEEN 0 AND 5 AND ISNULL(OriginalUnitCost_PO,0)&gt;=ISNULL(OriginalUnitCost,0)</zValidateExpr>
          <Expr>ISNULL(ItemPurchasePriceTypeId,-1) IN (3,4) AND ISNULL(OriginalUnitCost_PO,0)&lt;&gt;0</Expr-->
							<zValidateExpr>!(ISNULL(ItemPurchasePriceTypeId,-1) IN (3,4) AND !Empty(OriginalUnitCost_PO) AND OriginalUnitCost NOT BETWEEN {=ISNULL(OriginalUnitCost_PO,0)*0.95} AND {=ISNULL(OriginalUnitCost_PO,0)})</zValidateExpr>
							<bValidateIfModify>True</bValidateIfModify>
							<Text>
								<Vietnamese>Giá mua phải bằng hoặc nhỏ hơn giá đặt hàng 5%</Vietnamese>
								<English>Purchase price must be equal or less than order price 5%</English>
								<Japanese>購入価格は注文価格以下である必要があります 5%</Japanese>
								<Chinese>购买价格必须等于或小于订单价格 5%</Chinese>
								<Korean>구매 가격은 주문 가격과 같거나 낮아야합니다 5%.</Korean>
							</Text>
						</CheckOriginalUnitCost_PO>
						<CheckCostCentre>
							<SourceColumn>CostCentreId,CheckCostCentre</SourceColumn>
							<TargetColumn>CostCentreId</TargetColumn>
							<zValidateExpr>!(!Empty(CheckCostCentre) AND Empty(CostCentreId))</zValidateExpr>
							<Expr>ISNULL(Parent.UsingCostCentreId,0) =2</Expr>
						</CheckCostCentre>
						<CheckWorkProcess>
							<SourceColumn>WorkProcessId,CheckWorkProcess</SourceColumn>
							<TargetColumn>WorkProcessId</TargetColumn>
							<zValidateExpr>!(!EMPTY(CheckWorkProcess) AND EMPTY(WorkProcessId))</zValidateExpr>
							<Expr>ISNULL(Parent.UsingWorkProcessId,0) IN (0,2)</Expr>
						</CheckWorkProcess>
						<!-- 19/09/2023 HuyTQ: Check cảnh báo phiếu xuất đã chọn đích danh đến phiếu nhập vẫn cho phép quay lại phiếu nhập sửa-->
						<CheckDependenceInventory>
							<ClassName>BravoServerConstraintValidator</ClassName>
							<Command>usp_AccDocInventory_CheckDependence</Command>
							<SourceColumn>ItemId,Quantity9</SourceColumn>
							<TargetColumn>ItemId</TargetColumn>
							<Parameters>
								<RowId>RowId</RowId>
								<Quantity>Quantity</Quantity>
								<ItemId>ItemId</ItemId>
							</Parameters>
							<bValidateIfModify>True</bValidateIfModify>
							<bValidateIfNotEmpty>True</bValidateIfNotEmpty>
							<Text>
								<Vietnamese>Chứng từ đã có phiếu xuất đích danh.</Vietnamese>
								<English>Documents have been allocated expenses.</English>
								<Chinese>文件已分配费用。</Chinese>
								<Japanese>文書は費用を割り当てられています。</Japanese>
								<Korean>문서에 비용이 할당되었습니다.</Korean>
							</Text>
							<Expr>CONFIG('M_PP_Gia')='3' AND Id &gt; 0</Expr>
						</CheckDependenceInventory>
					</Validators>
					<TempColumns>
						<ImportingFlag>
							<DataType>System.Byte</DataType>
						</ImportingFlag>
						<PhysTotalQuantity>
							<DataType>System.Decimal</DataType>
						</PhysTotalQuantity>
						<!-- Số lượng tồn tức thời không tính cho số lượng của phiếu -->
						<QuantityBeforeTrans>
							<DataType>System.Decimal</DataType>
						</QuantityBeforeTrans>
						<PrevItemId>
							<DataType>System.String</DataType>
						</PrevItemId>
						<PrevWarehouseId>
							<DataType>System.String</DataType>
						</PrevWarehouseId>
						<PrevAllowIssueWhenNotEnough>
							<DataType>System.Byte</DataType>
						</PrevAllowIssueWhenNotEnough>
						<!-- Chỉ chạy khi thỏa mãn dữ liệu cập nhật -->
						<_RunningTrans>
							<DataType>System.Int32</DataType>
						</_RunningTrans>
						<!-- Cột ảo xử lý convert dữ liệu bằng linkcommand -->
						<_ConvertingFlag>
							<DataType>System.Byte</DataType>
						</_ConvertingFlag>
						<BizDocDetailId>
							<DataType>System.Int32</DataType>
						</BizDocDetailId>
						<AtchDocNo>
							<DataType>System.String</DataType>
						</AtchDocNo>
						<CheckExpenseCatgId>
							<DataType>System.Byte</DataType>
						</CheckExpenseCatgId>
						<CheckDeptId>
							<DataType>System.Byte</DataType>
						</CheckDeptId>
						<CheckBizDocId_PO>
							<DataType>System.Byte</DataType>
						</CheckBizDocId_PO>
						<CheckBizDocId_SO>
							<DataType>System.Byte</DataType>
						</CheckBizDocId_SO>
						<CheckJobId>
							<DataType>System.Byte</DataType>
						</CheckJobId>
						<_RowDeleting>
							<DataType>System.Byte</DataType>
						</_RowDeleting>
						<UserId>
							<DataType>System.Int32</DataType>
						</UserId>
						<OrderTypeId_PO>
							<DataType>System.Int32</DataType>
						</OrderTypeId_PO>
						<CheckCostCentre>
							<DataType>System.Byte</DataType>
						</CheckCostCentre>
						<!-- T8/2021 ThắngĐQ: Khóa dữ liệu mua - bán -->
						<_RowState>
							<DataType>System.String</DataType>
						</_RowState>
						<_SameItemValue>
							<DataType>System.Byte</DataType>
							<DefaultValue>0</DefaultValue>
						</_SameItemValue>
						<_QuantityByItem>
							<DataType>System.Decimal</DataType>
							<DefaultValue>0</DefaultValue>
						</_QuantityByItem>
						<QuantityAfterTrans>
							<DataType>System.Decimal</DataType>
							<DefaultValue>0</DefaultValue>
						</QuantityAfterTrans>
						<PhysTotalQuantity9>
							<DataType>System.Decimal</DataType>
						</PhysTotalQuantity9>
						<!-- 13/04/2023 KhanhDq: Cho phép nhập liệu theo đơn vị tính nhập xuất (Số lượng 9). -->
						<UpdatedColName>
							<DataType>System.String</DataType>
						</UpdatedColName>
						<!-- 23/10/2023 ANHPK cảnh báo nhập công đoạn theo TK-->
						<CheckWorkProcess>
							<DataType>System.Byte</DataType>
						</CheckWorkProcess>
						<AllocationRate>
							<DataType>System.Decimal</DataType>
						</AllocationRate>
					</TempColumns>
					<Expressions>
						<!-- Không chạy Eval khi có giá trị cột _ConvertingFlag -->
						<_Convert_Expr>Empty(_ConvertingFlag)</_Convert_Expr>
						<!-- Điều kiện tính tồn: Phiếu khai báo theo dõi tồn và (Kho theo dõi tồn hoặc hiển thị cột tồn) -->
						<_CalINV_Expr>!Empty(Parent.UsingCheckINVWhenNotEnough) AND (AllowIssueWhenNotEnough=0 OR Config('M_ShowCurrentINV')=1)</_CalINV_Expr>
						<_CalINV_Reset_Expr>!Empty(Parent.UsingCheckINVWhenNotEnough)</_CalINV_Reset_Expr>
						<!-- Điều kiện tính toán tồn tức thời cho dòng hiện thời-->
						<_CurINV_Expr>!Empty(ItemId) AND !Empty(WarehouseId) AND _CalINV_Expr</_CurINV_Expr>
					</Expressions>
					<DefaultValues>
						<BranchCode>BRANCH()</BranchCode>
						<Gia_Tb_Tt>0</Gia_Tb_Tt>
					</DefaultValues>
					<BeforeTransaction>
						<!--16/10/2023 ANHPK thêm thông tin vật tư bổ sung hóa đơn VAT-->
						<Eval_Ct0_AtchDocInfo_ResetValue />
					</BeforeTransaction>
					<ChildCollection>
						<ChildTable_Phys>
							<Name>vB30AccDocInventoryPhys_Edit</Name>
							<Alias>phys</Alias>
							<ChildKey>RowId_SourceDoc</ChildKey>
							<ParentTable>ct0</ParentTable>
							<ParentKey>RowId</ParentKey>
							<NewAsCopy>Quantity</NewAsCopy>
							<CopyMode>Never</CopyMode>
							<RefreshColumnList>Stt,RowId,RowId_SourceDoc</RefreshColumnList>
							<Sort>BuiltinOrder</Sort>
							<Custom>
								<Expr>!Empty(Parent._PhysicalInventory)</Expr>
							</Custom>
							<TempColumns>
								<QuantityAdded>
									<DataType>System.Decimal</DataType>
								</QuantityAdded>
								<QuantityBeforeChange>
									<DataType>System.Decimal</DataType>
								</QuantityBeforeChange>
								<FiscalYear>
									<DataType>System.String</DataType>
								</FiscalYear>
								<AutoCreateItemLotCode>
									<DataType>System.Int32</DataType>
								</AutoCreateItemLotCode>
								<Quantity9Added>
									<DataType>System.Decimal</DataType>
								</Quantity9Added>
								<Quantity9BeforeChange>
									<DataType>System.Decimal</DataType>
								</Quantity9BeforeChange>
								<_PhysConvertingFlag>
									<DataType>System.Byte</DataType>
								</_PhysConvertingFlag>
								<Quantity9SaveValue>
									<DataType>System.Decimal</DataType>
								</Quantity9SaveValue>
							</TempColumns>
							<ServerLoaded>
								<Eval_Phys_FiscalYear_SetValue />
								<Eval_Phys_AutoCreateItemLotCode_AutoValue />
							</ServerLoaded>
							<Evaluators>
								<Eval_Phys_ItemLotCode_BindingMembers>
									<ClassName>BravoBindingMember</ClassName>
									<DataMember>ItemLotCode</DataMember>
									<LookupKey>ItemLotDetail</LookupKey>
									<FilterKey>(IsGroup=0) AND ItemId={=Parent.ItemId}</FilterKey>
									<bindingMembers>
										<ItemLotName>ItemLotName</ItemLotName>
										<MfgDate>MfgDate</MfgDate>
										<ExpiryDate>ExpiryDate</ExpiryDate>
										<Id>Id_ItemLot</Id>
									</bindingMembers>
								</Eval_Phys_ItemLotCode_BindingMembers>
								<Eval_Phys_Quantity_SetValue>
									<DataMember>Quantity</DataMember>
									<zResultDecimalRound>CONFIG('M_QuantityDecRound')</zResultDecimalRound>
									<Value>IIF(Parent.IsItemWithSerialNo=1,IIF(ISNULL(Parent.RemainPhysQuantity,0)+ISNULL(QuantityBeforeChange,0)-ISNULL(Quantity,0)&gt;=1,1,0),IIF(ISNULL(Parent.RemainPhysQuantity,0)+ISNULL(QuantityBeforeChange,0)-ISNULL(Quantity,0)&lt;0,ISNULL(Parent.RemainPhysQuantity,0)+ISNULL(QuantityBeforeChange,0),Quantity))</Value>
									<allowRunning>Nonnested</allowRunning>
								</Eval_Phys_Quantity_SetValue>
								<Eval_Phys_FiscalYear_SetValue>
									<DataMember>FiscalYear</DataMember>
									<Value>VLOOKUP(Ct,FiscalYear,!Empty(FiscalYear))</Value>
								</Eval_Phys_FiscalYear_SetValue>
								<Eval_Phys_DocGroup_DefaultValueFromParent>
									<DataMember>DocGroup</DataMember>
									<Value>Parent.DocGroup</Value>
								</Eval_Phys_DocGroup_DefaultValueFromParent>
								<Eval_Phys_ItemId_DefaultValueFromParent>
									<DataMember>ItemId</DataMember>
									<Value>Parent.ItemId</Value>
								</Eval_Phys_ItemId_DefaultValueFromParent>
								<Eval_Phys_WarehouseId_DefaultValueFromParent>
									<DataMember>WarehouseId</DataMember>
									<Value>Parent.WarehouseId</Value>
								</Eval_Phys_WarehouseId_DefaultValueFromParent>
								<Eval_Phys_AutoCreateItemLotCode_AutoValue>
									<DataMember>AutoCreateItemLotCode</DataMember>
									<Value>IIF(Id_ItemLot&gt;0,0,1)</Value>
									<Expr>!EMPTY(ItemLotCode)</Expr>
								</Eval_Phys_AutoCreateItemLotCode_AutoValue>
								<Eval_Phys_ExpiryDate_AutoValue>
									<DataMember>ExpiryDate</DataMember>
									<Value>DATEADD(m,Parent.ShelfLife,MfgDate)</Value>
									<Expr>!EMPTY(Parent.ShelfLife) AND !EMPTY(MfgDate)</Expr>
								</Eval_Phys_ExpiryDate_AutoValue>
								<Eval_Phys_Unit_DefaultValueFromParent>
									<DataMember>Unit</DataMember>
									<Value>Parent.Unit</Value>
								</Eval_Phys_Unit_DefaultValueFromParent>
								<Eval_Phys_ConvertRate9_DefaultValueFromParent>
									<DataMember>ConvertRate9</DataMember>
									<Value>Parent.ConvertRate9</Value>
								</Eval_Phys_ConvertRate9_DefaultValueFromParent>
								<Eval_Phys_Quantity>
									<DataMember>Quantity</DataMember>
									<Value>Quantity9*IIF(Empty(ConvertRate9),1,ConvertRate9)</Value>
									<zResultDecimalRound>IIF(Parent.IsItemWithSerialNo=1 AND ISNULL(Parent.ConvertRate9,1)&lt;&gt;1,0,{=CONFIG('M_QuantityDecRound')})</zResultDecimalRound>
								</Eval_Phys_Quantity>
								<Eval_Phys_Quantity9_SetValue>
									<DataMember>Quantity9</DataMember>
									<zResultDecimalRound>CONFIG('M_QuantityDecRound')</zResultDecimalRound>
									<Value>IIF(Parent.IsItemWithSerialNo=1 AND ISNULL(Parent.ConvertRate9,0)=1,
    IIF(ISNULL(Parent.RemainPhysQuantity9,0)+ISNULL(Quantity9BeforeChange,0)-ISNULL(Quantity9,0)&gt;=0,1,0),
    IIF(ISNULL(Parent.RemainPhysQuantity9,0)+ISNULL(Quantity9BeforeChange,0)-ISNULL(Quantity9,0)&lt;0,ISNULL(Parent.RemainPhysQuantity9,0)+ISNULL(Quantity9BeforeChange,0),Quantity9))</Value>
									<allowRunning>Nonnested</allowRunning>
								</Eval_Phys_Quantity9_SetValue>
								<Eval_Phys_Quantity_SetValue_WhenIsItemWithSerialNo>
									<DataMember>Quantity</DataMember>
									<!-- Serial luôn làm tròn số chẵn -->
									<zResultDecimalRound>0</zResultDecimalRound>
									<Value>Quantity</Value>
									<Expr>Parent.IsItemWithSerialNo=1 AND ISNULL(ConvertRate9,0)&lt;&gt;1</Expr>
									<allowRunning>Nonnested</allowRunning>
								</Eval_Phys_Quantity_SetValue_WhenIsItemWithSerialNo>
							</Evaluators>
							<EvaluatorGroups>
								<Eval_Phys_Quantity9_IsItemWithSerialNo_DefaultValue>
									<Eval_Phys_Quantity9_IsItemWithSerialNo_DefaultValue1>
										<DataMember>Quantity9</DataMember>
										<Value>IIF(Parent.IsItemWithSerialNo=1 AND ISNULL(Parent.ConvertRate9,0)=1 AND ISNULL(Quantity9,0)&gt;1, 1, IIF(ISNULL(Parent.RemainPhysQuantity9,0)&gt;=1 AND Quantity9=0,1,Quantity9))</Value>
										<Expr>Parent.IsItemWithSerialNo=1 AND ISNULL(Parent.ConvertRate9,0)=1</Expr>
									</Eval_Phys_Quantity9_IsItemWithSerialNo_DefaultValue1>
									<Eval_PhysTotalQuantity9_GetValueFromChild />
									<Eval_RemainPhysQuantity9_SetValue />
								</Eval_Phys_Quantity9_IsItemWithSerialNo_DefaultValue>
							</EvaluatorGroups>
							<RowAdded>
								<Eval_Phys_FiscalYear_SetValue />
								<Eval_Phys_DocGroup_DefaultValueFromParent />
								<Eval_Phys_ItemId_DefaultValueFromParent />
								<Eval_Phys_WarehouseId_DefaultValueFromParent />
								<Eval_Phys_QuantityAdded_AutoValue>
									<DataMember>QuantityAdded</DataMember>
									<zResultDecimalRound>CONFIG('M_QuantityDecRound')</zResultDecimalRound>
									<Value>IIF(Parent.IsItemWithSerialNo=1,IIF(ISNULL(Parent.RemainPhysQuantity,0)&gt;=1,1,0),IIF(ISNULL(Parent.RemainPhysQuantity,0)&lt;=0,0,ISNULL(Parent.RemainPhysQuantity,0)))</Value>
									<bSuppressChangeEvents>False</bSuppressChangeEvents>
								</Eval_Phys_QuantityAdded_AutoValue>
								<Eval_Phys_Quantity_AutoValue>
									<DataMember>Quantity</DataMember>
									<Value>QuantityAdded</Value>
									<bSuppressChangeEvents>True</bSuppressChangeEvents>
								</Eval_Phys_Quantity_AutoValue>
								<Eval_PhysTotalQuantity_GetValueFromChild />
								<Eval_RemainPhysQuantity_SetValue />
								<Eval_Phys_ConvertRate9_DefaultValueFromParent />
								<Eval_Phys_Unit_DefaultValueFromParent />
								<Eval_Phys_Quantity9Added_AutoValue>
									<DataMember>Quantity9Added</DataMember>
									<zResultDecimalRound>CONFIG('M_QuantityDecRound')</zResultDecimalRound>
									<Value>IIF(Parent.IsItemWithSerialNo=1 AND ISNULL(Parent.ConvertRate9,0)=1,
    IIF(ISNULL(Parent.RemainPhysQuantity9,0)&gt;=1,1,0),
    IIF(ISNULL(Parent.RemainPhysQuantity9,0)&lt;=0,0,ISNULL(Parent.RemainPhysQuantity9,0)))</Value>
									<Expr>EMPTY(_PhysConvertingFlag)</Expr>
								</Eval_Phys_Quantity9Added_AutoValue>
								<Eval_Phys_Quantity9_AutoValue>
									<DataMember>Quantity9</DataMember>
									<Value>Quantity9Added</Value>
									<bSuppressChangeEvents>True</bSuppressChangeEvents>
									<Expr>EMPTY(_PhysConvertingFlag)</Expr>
								</Eval_Phys_Quantity9_AutoValue>
								<Eval_PhysTotalQuantity9_GetValueFromChild />
								<Eval_RemainPhysQuantity9_SetValue />
								<Eval_Phys_Quantity />
								<Eval_Phys_QuantityAdded_ResetValue />
								<Eval_Phys_Quantity9Added_ResetValue />
								<Eval_PhysConvertingFlag_ResetValue>
									<DataMember>_PhysConvertingFlag</DataMember>
									<Value>NULL</Value>
								</Eval_PhysConvertingFlag_ResetValue>
							</RowAdded>
							<TableMerged>
								<Eval_PhysTotalQuantity_GetValueFromChild />
								<Eval_RemainPhysQuantity_SetValue />
								<Eval_PhysTotalQuantity9_GetValueFromChild />
								<Eval_RemainPhysQuantity9_SetValue />
							</TableMerged>
							<ColumnChanging>
								<Quantity>
									<Eval_QuantityBeforeChange_SetValue>
										<DataMember>QuantityBeforeChange</DataMember>
										<Value>ISNULL(Quantity,0)</Value>
									</Eval_QuantityBeforeChange_SetValue>
								</Quantity>
								<Quantity9>
									<Eval_Quantity9BeforeChange_SetValue>
										<DataMember>Quantity9BeforeChange</DataMember>
										<Value>ISNULL(Quantity9,0)</Value>
									</Eval_Quantity9BeforeChange_SetValue>
								</Quantity9>
							</ColumnChanging>
							<ColumnChanged>
								<ConvertRate9>
									<Eval_Phys_Quantity />
								</ConvertRate9>
								<Quantity9>
									<Eval_Phys_Quantity9_SetValue>EMPTY(Quantity9Added) AND (Quantity9BeforeChange IS NOT NULL OR Quantity9SaveValue=0)</Eval_Phys_Quantity9_SetValue>
									<Eval_Phys_Quantity9Added_ResetValue>
										<DataMember>Quantity9Added</DataMember>
										<Value>NULL</Value>
									</Eval_Phys_Quantity9Added_ResetValue>
									<Eval_Quantity9BeforeChange_SetNullValue>
										<DataMember>Quantity9BeforeChange</DataMember>
										<Value>Null</Value>
									</Eval_Quantity9BeforeChange_SetNullValue>
									<Eval_PhysTotalQuantity9_GetValueFromChild />
									<Eval_RemainPhysQuantity9_SetValue />
									<Eval_Phys_Quantity9_IsItemWithSerialNo_DefaultValue>Parent.IsItemWithSerialNo=1 AND ISNULL(Parent.ConvertRate9,0)=1</Eval_Phys_Quantity9_IsItemWithSerialNo_DefaultValue>
									<Eval_Phys_Quantity />
									<Eval_Phy_Quantity9SaveValue>
										<DataMember>Quantity9SaveValue</DataMember>
										<Value>IIF(Quantity9=0,0,NULL)</Value>
									</Eval_Phy_Quantity9SaveValue>
								</Quantity9>
								<Quantity>
									<Eval_Phys_Quantity_SetValue>ISNULL(Quantity,0)&lt;&gt;ISNULL(QuantityAdded,0) OR EMPTY(QuantityAdded)</Eval_Phys_Quantity_SetValue>
									<Eval_Phys_QuantityAdded_ResetValue>
										<DataMember>QuantityAdded</DataMember>
										<Value>NULL</Value>
									</Eval_Phys_QuantityAdded_ResetValue>
									<Eval_QuantityBeforeChange_SetNullValue>
										<DataMember>QuantityBeforeChange</DataMember>
										<Value>Null</Value>
									</Eval_QuantityBeforeChange_SetNullValue>
									<Eval_PhysTotalQuantity_GetValueFromChild />
									<Eval_RemainPhysQuantity_SetValue />
									<!-- 13/04/2023 ThắngĐQ: Cho phép nhập liệu theo đơn vị tính nhập xuất (Số lượng 9)-->
									<Eval_Phys_Quantity_ResetAutoValue>
										<DataMember>Quantity</DataMember>
										<!-- Xử lý lại phần còn lại nếu RemainPhysQuantity9 hết của đơn vị tính gốc -->
										<Value>IIF(ISNULL(Parent.RemainPhysQuantity9,0)=0 AND ISNULL(Parent.RemainPhysQuantity,0)&lt;&gt;0,Quantity+ISNULL(Parent.RemainPhysQuantity,0),Quantity)</Value>
										<Expr>Parent.IsItemWithSerialNo&lt;&gt;1 AND ISNULL(Parent.UpdatedColName,'')&lt;&gt;'ConvertRate9'</Expr>
									</Eval_Phys_Quantity_ResetAutoValue>
								</Quantity>
								<ItemLotCode>
									<Eval_Phys_ItemLotCode_BindingMembers />
									<Eval_Phys_AutoCreateItemLotCode_AutoValue>CONFIG('M_AllowCreateItemLot')=1</Eval_Phys_AutoCreateItemLotCode_AutoValue>
								</ItemLotCode>
								<AutoCreateItemLotCode>
									<Eval_Phys_ItemLotCode_BindingMembers>EMPTY(AutoCreateItemLotCode)</Eval_Phys_ItemLotCode_BindingMembers>
								</AutoCreateItemLotCode>
								<MfgDate>
									<Eval_Phys_ExpiryDate_AutoValue />
								</MfgDate>
							</ColumnChanged>
							<UniqueKey>
								<ItemSerialNo>ItemSerialNo,ItemId</ItemSerialNo>
							</UniqueKey>
							<Validators>
								<ItemSerialNoUnique>
									<ClassName>BravoServerConstraintValidator</ClassName>
									<Command>ufn_sys_CheckUniqueItemSerialNo</Command>
									<SourceColumn>BranchCode,FiscalYear,ItemId,ItemSerialNo,WarehouseId,DocGroup,RowId</SourceColumn>
									<TargetColumn>ItemSerialNo</TargetColumn>
									<Expr>!Empty(ItemSerialNo)</Expr>
									<Text>
										<Vietnamese>Số serial phải duy nhất.</Vietnamese>
										<English>The serial number must be unique.</English>
										<Chinese>序列号必须是唯一的。</Chinese>
										<Japanese>シリアル番号は一意である必要があります。</Japanese>
										<Korean>그 일련 번호 고유해야 합니다.</Korean>
									</Text>
								</ItemSerialNoUnique>
								<CheckQuantity>
									<SourceColumn>Quantity,Quantity9</SourceColumn>
								</CheckQuantity>
								<CheckQuantitySerialNo>
									<SourceColumn>Quantity,Quantity9</SourceColumn>
									<zValidateExpr>Empty(Parent.IsItemWithSerialNo) OR (!Empty(Parent.IsItemWithSerialNo) AND ISNULL(Quantity,0)=1)</zValidateExpr>
									<Text>
										<Vietnamese>Số lượng serial không hợp lệ.</Vietnamese>
										<English>Invalid quantity</English>
										<Chinese>数量无效</Chinese>
										<Japanese>無効な数量。</Japanese>
										<Korean>잘못된 수량</Korean>
									</Text>
								</CheckQuantitySerialNo>
								<CheckItemSerialNo>
									<SourceColumn>ItemSerialNo</SourceColumn>
									<zValidateExpr>!(!Empty(Parent.IsItemWithSerialNo) AND Empty(ItemSerialNo))</zValidateExpr>
								</CheckItemSerialNo>
								<CheckLocationId>
									<SourceColumn>LocationId</SourceColumn>
									<zValidateExpr>!(!Empty(Parent.IsItemWithLocation) AND Empty(LocationId))</zValidateExpr>
								</CheckLocationId>
								<CheckItemLotCode>
									<SourceColumn>ItemLotCode</SourceColumn>
									<zValidateExpr>!(!Empty(Parent.IsItemWithLot) AND Empty(ItemLotCode))</zValidateExpr>
								</CheckItemLotCode>
								<CheckColorCode>
									<SourceColumn>ColorCode</SourceColumn>
									<zValidateExpr>!(!Empty(Parent.IsItemWithColor) AND Empty(ColorCode))</zValidateExpr>
								</CheckColorCode>
								<CheckSizeCode>
									<SourceColumn>SizeCode</SourceColumn>
									<zValidateExpr>!(!Empty(Parent.IsItemWithSize) AND Empty(SizeCode))</zValidateExpr>
								</CheckSizeCode>
								<CheckItemQualityCode>
									<SourceColumn>ItemQualityCode</SourceColumn>
									<zValidateExpr>!(!Empty(Parent.IsItemWithQuality) AND Empty(ItemQualityCode))</zValidateExpr>
								</CheckItemQualityCode>
								<CheckWarehouseId_location>
									<ClassName>BravoValidator</ClassName>
									<SourceColumn>LocationId,WarehouseId</SourceColumn>
									<zValidateExpr>!(!Empty(Parent.IsItemWithLocation) AND WarehouseId_location&lt;&gt;PARENT.WarehouseId)</zValidateExpr>
									<Text>
										<Vietnamese>Vị trí không có trong kho</Vietnamese>
										<English>Location not in stock</English>
										<Japanese>在庫の場所ではありません</Japanese>
										<Chinese>地点不是在股票</Chinese>
										<Korean>재고 위치하지</Korean>
									</Text>
								</CheckWarehouseId_location>
								<CheckExpiryDate>
									<ClassName>BravoValidator</ClassName>
									<SourceColumn>MfgDate,ExpiryDate</SourceColumn>
									<zValidateExpr>MfgDate&lt;=ExpiryDate OR EMPTY(ExpiryDate)</zValidateExpr>
									<Text>
										<Vietnamese>Ngày hết hạn phải sau ngày sản xuất</Vietnamese>
										<English>Expiration date must be after production date</English>
										<Japanese>有効期限は製造日の後でなければなりません</Japanese>
										<Chinese>到期日必须在生产日期之后</Chinese>
										<Korean>만료일은 생산일 이후 여야합니다.</Korean>
									</Text>
								</CheckExpiryDate>
							</Validators>
							<BeforeTransaction>
								<Eval_Phys_DeleteIfIsNormalItem>
									<ClassName>BravoDeleteRowEvaluator</ClassName>
									<Expr>Empty(Parent.IsItemWithLocation) AND Empty(Parent.IsItemWithLot) AND Empty(Parent.IsItemWithSerialNo) AND Empty(Parent.IsItemWithColor) AND Empty(Parent.IsItemWithSize) AND Empty(Parent.IsItemWithQuality)</Expr>
								</Eval_Phys_DeleteIfIsNormalItem>
								<Eval_Phys_DefaultValueFromParent>
									<ClassName>BravoCopyValue</ClassName>
									<CopyValues>
										<DocDate>Parent.DocDate</DocDate>
										<Stt>Parent.Stt</Stt>
										<DocCode>Parent.DocCode</DocCode>
										<DocGroup>Parent.DocGroup</DocGroup>
										<LocationId>IIF(Empty(Parent.IsItemWithLocation),NULL,LocationId)</LocationId>
									</CopyValues>
								</Eval_Phys_DefaultValueFromParent>
								<Eval_Phys_ItemLotCode_AutoCreate>
									<ClassName>BravoServerConstraint</ClassName>
									<Command>usp_B20ItemLot_CreateFromItemReceipt</Command>
									<dataAccessMode>Write</dataAccessMode>
									<Parameters>
										<ItemLotCode>ItemLotCode</ItemLotCode>
										<ItemId>Parent.ItemId</ItemId>
										<MfgDate>MfgDate</MfgDate>
										<ExpiryDate>ExpiryDate</ExpiryDate>
										<nUserId>USER('Id')</nUserId>
									</Parameters>
									<Expr>!EMPTY(AutoCreateItemLotCode)</Expr>
									<Text />
								</Eval_Phys_ItemLotCode_AutoCreate>
								<Eval_Phys_RowId_AutoValue>
									<!-- 16/07/2019 Thăng tạo sẵn RowId trước khi lưu -->
									<ClassName>BravoServerConstraint</ClassName>
									<Command>usp_sys_CreateSttBySeq</Command>
									<dataAccessMode>Write</dataAccessMode>
									<Parameters>
										<TableName>LayoutTableName()</TableName>
										<Ws_Id>Branch('Ws_Id')</Ws_Id>
										<Ext>Parent.DocCode</Ext>
									</Parameters>
									<DataMember>RowId</DataMember>
									<Expr>Empty(RowId)</Expr>
									<Text />
								</Eval_Phys_RowId_AutoValue>
							</BeforeTransaction>
							<DefaultValues>
								<BranchCode>Branch()</BranchCode>
							</DefaultValues>
						</ChildTable_Phys>
					</ChildCollection>
				</ChildTable_Ct0>
				<ChildTable_AtchDoc>
					<ChildKey>Stt</ChildKey>
					<Name>vB30AccDocAtchPurchase_Edit</Name>
					<Columns>AtchDoc.*, IIF(DueDate &lt;&gt; 0, DATEADD(day, DueDate, AtchDocDate), NULL) AS DateDue</Columns>
					<Alias>AtchDoc</Alias>
					<!-- 28/09/22: THANGNH thêm FilterKey, loại trừ trùng dữ liệu khi thêm Hóa đơn tổng hợp từ chi tiết, nhóm theo các trường Mã -->
					<FilterKey>AtchDocType&lt;&gt;'E3'</FilterKey>
					<ParentKey>Stt</ParentKey>
					<Sort>BuiltinOrder</Sort>
					<RowAdded>
						<EvalGroup_AtchDoc_GetValueFromParent />
						<Eval_AtchDoc_TaxRegName_DefaultValue />
						<Eval_AtchDoc_TaxRegNo_DefaultValue />
					</RowAdded>
					<DefaultValues>
						<BranchCode>BRANCH()</BranchCode>
					</DefaultValues>
					<EvaluatorGroups>
						<EvalGroup_AtchDoc_GetValueFromParent>
							<Eval_AtchDoc_AtchDocDate_GetValueFromParent />
							<Eval_AtchDoc_AtchDocNo_GetValueFromParent />
							<Eval_AtchDoc_AtchDocSerialNo_GetValueFromParent />
							<Eval_AtchDoc_AtchDocFormNo_GetValueFromParent />
							<Eval_AtchDoc_TaxRegName_GetValueFromParent />
							<Eval_AtchDoc_TaxRegNo_GetValueFromParent />
							<Eval_AtchDoc_DueDate_GetValueFromParent />
							<Eval_AtchDoc_Description_GetValueFromParent />
							<Eval_AtchDoc_CustomerId_GetValueFromParent />
							<Eval_AtchDoc_EmployeeId_GetValueFromParent />
						</EvalGroup_AtchDoc_GetValueFromParent>
					</EvaluatorGroups>
					<Evaluators>
						<Eval_AtchDoc_DocDate_GetValueFromParent>
							<DataMember>DocDate</DataMember>
							<Value>Parent.DocDate</Value>
						</Eval_AtchDoc_DocDate_GetValueFromParent>
						<Eval_AtchDoc_DocCode_GetValueFromParent>
							<DataMember>DocCode</DataMember>
							<Value>Parent.DocCode</Value>
						</Eval_AtchDoc_DocCode_GetValueFromParent>
						<Eval_AtchDoc_AtchDocDate_GetValueFromParent>
							<DataMember>AtchDocDate</DataMember>
							<Value>ISNULL(Parent.AtchDocDate, Parent.DocDate)</Value>
						</Eval_AtchDoc_AtchDocDate_GetValueFromParent>
						<Eval_AtchDoc_AtchDocNo_GetValueFromParent>
							<DataMember>AtchDocNo</DataMember>
							<Value>ISNULL(Parent.AtchDocNo,Parent.DocNo)</Value>
						</Eval_AtchDoc_AtchDocNo_GetValueFromParent>
						<Eval_AtchDoc_AtchDocSerialNo_GetValueFromParent>
							<DataMember>AtchDocSerialNo</DataMember>
							<Value>Parent.AtchDocSerialNo</Value>
						</Eval_AtchDoc_AtchDocSerialNo_GetValueFromParent>
						<Eval_AtchDoc_AtchDocFormNo_GetValueFromParent>
							<DataMember>AtchDocFormNo</DataMember>
							<Value>Parent.AtchDocFormNo</Value>
						</Eval_AtchDoc_AtchDocFormNo_GetValueFromParent>
						<Eval_AtchDoc_TaxRegName_GetValueFromParent>
							<DataMember>TaxRegName</DataMember>
							<Value>Parent.TaxRegName</Value>
						</Eval_AtchDoc_TaxRegName_GetValueFromParent>
						<Eval_AtchDoc_TaxRegNo_GetValueFromParent>
							<DataMember>TaxRegNo</DataMember>
							<Value>Parent.TaxRegNo</Value>
						</Eval_AtchDoc_TaxRegNo_GetValueFromParent>
						<Eval_AtchDoc_DueDate_GetValueFromParent>
							<DataMember>DueDate</DataMember>
							<Value>ISNULL(Parent.DueDate,0)</Value>
						</Eval_AtchDoc_DueDate_GetValueFromParent>
						<Eval_AtchDoc_Description_GetValueFromParent>
							<DataMember>Description</DataMember>
							<Value>Parent.Description</Value>
						</Eval_AtchDoc_Description_GetValueFromParent>
						<Eval_AtchDoc_CustomerId_GetValueFromParent>
							<DataMember>CustomerId</DataMember>
							<Value>Parent.CustomerId</Value>
						</Eval_AtchDoc_CustomerId_GetValueFromParent>
						<Eval_AtchDoc_EmployeeId_GetValueFromParent>
							<DataMember>EmployeeId</DataMember>
							<Value>Parent.EmployeeId</Value>
						</Eval_AtchDoc_EmployeeId_GetValueFromParent>
						<Eval_AtchDoc_Account_GetValueFromParent>
							<DataMember>Account</DataMember>
							<Value>IIF(Parent.DocGroup='1',Parent.CreditAccount,Parent.DebitAccount)</Value>
						</Eval_AtchDoc_Account_GetValueFromParent>
						<!-- Default value -->
						<Eval_AtchDoc_OriginalDueAmount_DefaultValue>
							<DataMember>OriginalDueAmount</DataMember>
							<Value>ISNULL(OriginalAmountBeforeTax,0)+ISNULL(OriginalAmount,0)</Value>
						</Eval_AtchDoc_OriginalDueAmount_DefaultValue>
						<Eval_AtchDoc_DueAmount_DefaultValue>
							<DataMember>DueAmount</DataMember>
							<Value>ISNULL(AmountBeforeTax,0)+ISNULL(Amount,0)</Value>
						</Eval_AtchDoc_DueAmount_DefaultValue>
						<Eval_AtchDoc_TaxRegName_DefaultValue>
							<DataMember>TaxRegName</DataMember>
							<Value>Parent.TaxRegName</Value>
						</Eval_AtchDoc_TaxRegName_DefaultValue>
						<Eval_AtchDoc_TaxRegNo_DefaultValue>
							<DataMember>TaxRegNo</DataMember>
							<Value>Parent.TaxRegNo</Value>
						</Eval_AtchDoc_TaxRegNo_DefaultValue>
						<Eval_AtchDoc_UpdateBuiltinOrder>
							<ClassName>BravoTableOrderer</ClassName>
							<DataMember>BuiltinOrder</DataMember>
						</Eval_AtchDoc_UpdateBuiltinOrder>
					</Evaluators>
					<TempColumns>
						<_Convert_Expr>
							<DataType>System.Byte</DataType>
						</_Convert_Expr>
						<ButtEInvoiceLink>
							<DataType>System.String</DataType>
							<DefaultValue>''</DefaultValue>
						</ButtEInvoiceLink>
						<DueSideAccount>
							<DataType>System.String</DataType>
						</DueSideAccount>
					</TempColumns>
					<BeforeTransaction>
						<Eval_AtchDoc_DeleteIfEmpty>
							<ClassName>BravoDeleteRowEvaluator</ClassName>
							<Expr>Empty(Parent.TotalOriginalAmount3) AND Empty(Parent.DueDate)</Expr>
						</Eval_AtchDoc_DeleteIfEmpty>
						<Eval_AtchDoc_DefaultValuesFromParent>
							<ClassName>BravoCopyValue</ClassName>
							<CopyValues>
								<DocDate>Parent.DocDate</DocDate>
								<DocCode>Parent.DocCode</DocCode>
								<DueDate>Parent.DueDate</DueDate>
								<AtchDocDate>Parent.AtchDocDate</AtchDocDate>
								<AtchDocNo>Parent.AtchDocNo</AtchDocNo>
								<TaxRegName>Parent.TaxRegName</TaxRegName>
								<TaxRegNo>Parent.TaxRegNo</TaxRegNo>
								<CurrencyCode>Parent.CurrencyCode</CurrencyCode>
								<ExchangeRate>Parent.ExchangeRate</ExchangeRate>
								<EInvoiceLink>Parent.EInvoiceLink</EInvoiceLink>
								<EInvoiceKey>Parent.EInvoiceKey</EInvoiceKey>
								<Posted>IIF(Parent.Posted=1 AND Parent.PostGL=1, 1, 0)</Posted>
							</CopyValues>
						</Eval_AtchDoc_DefaultValuesFromParent>
						<Eval_AtchDoc_Account_GetValueFromParent />
						<Eval_AtchDoc_OriginalDueAmount_DefaultValue />
						<Eval_AtchDoc_DueAmount_DefaultValue />
						<Eval_AtchDoc_RowId_AutoValue>
							<!-- Tạo sẵn RowId trước khi lưu -->
							<ClassName>BravoServerConstraint</ClassName>
							<Command>usp_sys_CreateSttBySeq</Command>
							<dataAccessMode>Write</dataAccessMode>
							<Parameters>
								<TableName>LayoutTableName()</TableName>
								<Ws_Id>Branch('Ws_Id')</Ws_Id>
								<Ext>'ATD'</Ext>
							</Parameters>
							<DataMember>RowId</DataMember>
							<Expr>Empty(RowId)</Expr>
							<Text />
						</Eval_AtchDoc_RowId_AutoValue>
					</BeforeTransaction>
					<ChildCollection>
						<ChildTable_AtchPurchaseDetail>
							<Name>B30AccDocAtchPurchaseDetail</Name>
							<Alias>AtchPurchaseDetail</Alias>
							<ChildKey>RowId_SourceDoc</ChildKey>
							<ParentKey>RowId</ParentKey>
							<CopyMode>Never</CopyMode>
						</ChildTable_AtchPurchaseDetail>
					</ChildCollection>
				</ChildTable_AtchDoc>
				<ChildTable_AtchFile>
					<Name>vB20FileStore</Name>
					<Alias>AtchFile</Alias>
					<ParentKey>Stt</ParentKey>
					<ChildKey>Stt</ChildKey>
					<Sort>BuiltinOrder</Sort>
					<CopyMode>Never</CopyMode>
					<RowAdded>
						<Eval_AtchFile_DocCode_SetValueFromParent>
							<DataMember>DocCode</DataMember>
							<Value>Parent.DocCode</Value>
						</Eval_AtchFile_DocCode_SetValueFromParent>
					</RowAdded>
					<ColumnChanged>
						<FileSize>
							<Eval_AtchFile_FileSizeInKB>
								<DataMember>FileSize</DataMember>
								<Value>FileSize/1024</Value>
								<bSuppressChangeEvents>True</bSuppressChangeEvents>
							</Eval_AtchFile_FileSizeInKB>
						</FileSize>
					</ColumnChanged>
					<Validators>
						<NotNull>
							<SourceColumn>FileName</SourceColumn>
						</NotNull>
					</Validators>
				</ChildTable_AtchFile>
			</ChildCollection>
		</ParentTable>
	</TableCollection>
</root>