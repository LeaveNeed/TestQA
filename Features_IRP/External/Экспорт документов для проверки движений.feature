﻿#language: ru

@tree
@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: экспорт документов для проверки движений

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект> 

Сценарий: загрузка документа Поступление товаров и услуг

	И я проверяю или создаю для справочника "RowIDs" объекты:
		| 'Ref'                                                            | 'DeletionMark' | 'Code' | 'Description'                          | 'AgreementSales' | 'Company'                                                           | 'CurrencySales' | 'LegalNameSales' | 'PartnerSales' | 'PriceIncludeTaxSales' | 'Store'                                                          | 'Unit'                                                          | 'ItemKey'                                                          | 'Branch' | 'Basis'                                                                    | 'RowID'                                | 'ProcurementMethod' | 'StoreSender' | 'StoreReceiver' | 'TransactionTypeSC'                                        | 'TransactionTypeGR'                          | 'TransactionType' | 'Requester' | 'AgreementPurchases'                                                 | 'PartnerPurchases'                                                 | 'LegalNamePurchases'                                                | 'PriceIncludeTaxPurchases' | 'CurrencyPurchases'                                                  |
		| 'e1cib/data/Catalog.RowIDs?ref=a99a001a7dda711311ed05ca9df7cc9b' | 'False'        | 1      | '26a0ff25-e9aa-49de-9ad1-2952c2dd83f3' | ''               | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | ''              | ''               | ''             | 'False'                | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb766bf96b2751' | ''       | 'e1cib/data/Document.PurchaseInvoice?ref=a99a001a7dda711311ed05ca9df7ccb1' | '26a0ff25-e9aa-49de-9ad1-2952c2dd83f3' | ''                  | ''            | ''              | 'Enum.ShipmentConfirmationTransactionTypes.ReturnToVendor' | 'Enum.GoodsReceiptTransactionTypes.Purchase' | ''                | ''          | 'e1cib/data/Catalog.Agreements?ref=b762b13668d0905011eb76684b9f6871' | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794e' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb766bf96b2771' | 'True'                     | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' |
		| 'e1cib/data/Catalog.RowIDs?ref=a99a001a7dda711311ed05ca9df7ccb0' | 'False'        | 2      | '8aa31110-8371-403b-bade-3d709d272b48' | ''               | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | ''              | ''               | ''             | 'False'                | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb766bf96b2753' | ''       | 'e1cib/data/Document.PurchaseInvoice?ref=a99a001a7dda711311ed05ca9df7ccb1' | '8aa31110-8371-403b-bade-3d709d272b48' | ''                  | ''            | ''              | 'Enum.ShipmentConfirmationTransactionTypes.ReturnToVendor' | 'Enum.GoodsReceiptTransactionTypes.Purchase' | ''                | ''          | 'e1cib/data/Catalog.Agreements?ref=b762b13668d0905011eb76684b9f6871' | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794e' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb766bf96b2771' | 'True'                     | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' |

	// Документ.PurchaseInvoice

	И я проверяю или создаю для документа "PurchaseInvoice" объекты:
		| 'Ref'                                                                      | 'DeletionMark' | 'Number' | 'Date'                | 'Posted' | 'Agreement'                                                          | 'Company'                                                           | 'Currency'                                                           | 'DocDate'            | 'DocNumber' | 'LegalName'                                                         | 'Partner'                                                          | 'PriceIncludeTax' | 'IgnoreAdvances' | 'LegalNameContract' | 'Author'                                                        | 'Branch' | 'Description' | 'DocumentAmount' |
		| 'e1cib/data/Document.PurchaseInvoice?ref=a99a001a7dda711311ed05ca9df7ccb1' | 'False'        | 1001     | '17.07.2022 15:56:23' | 'True'   | 'e1cib/data/Catalog.Agreements?ref=b762b13668d0905011eb76684b9f6871' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | '01.01.0001 0:00:00' | ''          | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb766bf96b2771' | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794e' | 'True'            | 'False'          | ''                  | 'e1cib/data/Catalog.Users?ref=aa7f120ed92fbced11eb13d7279770c0' | ''       | ''            | 400              |

	И я перезаполняю для объекта табличную часть "ItemList":
		| 'Ref'                                                                      | 'Key'                                  | 'ItemKey'                                                          | 'Store'                                                          | 'PurchaseOrder' | 'Unit'                                                          | 'Quantity' | 'Price' | 'PriceType'                                             | 'TaxAmount' | 'TotalAmount' | 'NetAmount' | 'OffersAmount' | 'ProfitLossCenter' | 'ExpenseType'                                                                    | 'DeliveryDate'       | 'SalesOrder' | 'Detail' | 'AdditionalAnalytic' | 'DontCalculateRow' | 'QuantityInBaseUnit' | 'UseGoodsReceipt' | 'InternalSupplyRequest' |
		| 'e1cib/data/Document.PurchaseInvoice?ref=a99a001a7dda711311ed05ca9df7ccb1' | '26a0ff25-e9aa-49de-9ad1-2952c2dd83f3' | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb766bf96b2751' | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | ''              | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 2          | 100     | 'e1cib/data/Catalog.PriceTypes?refName=ManualPriceType' | 33.33       | 200           | 166.67      |                | ''                 | ''                                                                               | '01.01.0001 0:00:00' | ''           | ''       | ''                   | 'False'            | 2                    | 'True'            | ''                      |
		| 'e1cib/data/Document.PurchaseInvoice?ref=a99a001a7dda711311ed05ca9df7ccb1' | '8aa31110-8371-403b-bade-3d709d272b48' | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb766bf96b2753' | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | ''              | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 1          | 200     | 'e1cib/data/Catalog.PriceTypes?refName=ManualPriceType' | 33.33       | 200           | 166.67      |                | ''                 | 'e1cib/data/Catalog.ExpenseAndRevenueTypes?ref=a99a001a7dda711311ed05ca9df7cc9a' | '01.01.0001 0:00:00' | ''           | ''       | ''                   | 'False'            | 1                    | 'False'           | ''                      |

	И я перезаполняю для объекта табличную часть "TaxList":
		| 'Ref'                                                                      | 'Key'                                  | 'Tax'                                                           | 'Analytics' | 'TaxRate'                                                          | 'Amount' | 'IncludeToTotalAmount' | 'ManualAmount' |
		| 'e1cib/data/Document.PurchaseInvoice?ref=a99a001a7dda711311ed05ca9df7ccb1' | '26a0ff25-e9aa-49de-9ad1-2952c2dd83f3' | 'e1cib/data/Catalog.Taxes?ref=b762b13668d0905011eb7663e35d7970' | ''          | 'e1cib/data/Catalog.TaxRates?ref=b762b13668d0905011eb7663e35d796c' | 33.33    | 'True'                 | 33.33          |
		| 'e1cib/data/Document.PurchaseInvoice?ref=a99a001a7dda711311ed05ca9df7ccb1' | '8aa31110-8371-403b-bade-3d709d272b48' | 'e1cib/data/Catalog.Taxes?ref=b762b13668d0905011eb7663e35d7970' | ''          | 'e1cib/data/Catalog.TaxRates?ref=b762b13668d0905011eb7663e35d796c' | 33.33    | 'True'                 | 33.33          |

	И я перезаполняю для объекта табличную часть "Currencies":
		| 'Ref'                                                                      | 'Key' | 'CurrencyFrom'                                                       | 'Rate' | 'ReverseRate' | 'ShowReverseRate' | 'Multiplicity' | 'MovementType'                                                                                    | 'Amount' | 'IsFixed' |
		| 'e1cib/data/Document.PurchaseInvoice?ref=a99a001a7dda711311ed05ca9df7ccb1' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 1      | 1             | 'False'           | 1              | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796b' | 400      | 'False'   |
		| 'e1cib/data/Document.PurchaseInvoice?ref=a99a001a7dda711311ed05ca9df7ccb1' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 0.859  | 1.1641        | 'False'           | 1              | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796a' | 343.6    | 'False'   |
		| 'e1cib/data/Document.PurchaseInvoice?ref=a99a001a7dda711311ed05ca9df7ccb1' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 1      | 1             | 'False'           | 1              | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7968' | 400      | 'False'   |
		| 'e1cib/data/Document.PurchaseInvoice?ref=a99a001a7dda711311ed05ca9df7ccb1' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' |        |               | 'False'           |                | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7969' |          | 'False'   |

	И я перезаполняю для объекта табличную часть "RowIDInfo":
		| 'Ref'                                                                      | 'Key'                                  | 'RowID'                                | 'Quantity' | 'Basis' | 'CurrentStep' | 'NextStep'                                    | 'RowRef'                                                         | 'BasisKey' |
		| 'e1cib/data/Document.PurchaseInvoice?ref=a99a001a7dda711311ed05ca9df7ccb1' | '26a0ff25-e9aa-49de-9ad1-2952c2dd83f3' | '26a0ff25-e9aa-49de-9ad1-2952c2dd83f3' | 2          | ''      | ''            | 'e1cib/data/Catalog.MovementRules?refName=GR' | 'e1cib/data/Catalog.RowIDs?ref=a99a001a7dda711311ed05ca9df7cc9b' | ''         |
		| 'e1cib/data/Document.PurchaseInvoice?ref=a99a001a7dda711311ed05ca9df7ccb1' | '8aa31110-8371-403b-bade-3d709d272b48' | '8aa31110-8371-403b-bade-3d709d272b48' | 1          | ''      | ''            | ''                                            | 'e1cib/data/Catalog.RowIDs?ref=a99a001a7dda711311ed05ca9df7ccb0' | ''         |

Сценарий: загрузка документа поступления товаров и услуг будущим числом

	// Справочник.RowIDs

	И я проверяю или создаю для справочника "RowIDs" объекты:
		| 'Ref'                                                            | 'DeletionMark' | 'Code' | 'Description'                          | 'AgreementSales' | 'Company'                                                           | 'CurrencySales' | 'LegalNameSales' | 'PartnerSales' | 'PriceIncludeTaxSales' | 'Store'                                                          | 'Unit'                                                          | 'ItemKey'                                                          | 'Branch' | 'Basis'                                                                    | 'RowID'                                | 'ProcurementMethod' | 'StoreSender' | 'StoreReceiver' | 'TransactionTypeSC'                                        | 'TransactionTypeGR'                          | 'TransactionType' | 'Requester' | 'AgreementPurchases'                                                 | 'PartnerPurchases'                                                 | 'LegalNamePurchases'                                                | 'PriceIncludeTaxPurchases' | 'CurrencyPurchases'                                                  |
		| 'e1cib/data/Catalog.RowIDs?ref=a99a001a7dda711311ed05ca9df7ccb2' | 'False'        | 3      | '18be867d-5ca6-47ef-a2b2-bdfa8a11f918' | ''               | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | ''              | ''               | ''             | 'False'                | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb766bf96b2751' | ''       | 'e1cib/data/Document.PurchaseInvoice?ref=a99a001a7dda711311ed05ca9df7ccb4' | '18be867d-5ca6-47ef-a2b2-bdfa8a11f918' | ''                  | ''            | ''              | 'Enum.ShipmentConfirmationTransactionTypes.ReturnToVendor' | 'Enum.GoodsReceiptTransactionTypes.Purchase' | ''                | ''          | 'e1cib/data/Catalog.Agreements?ref=b762b13668d0905011eb76684b9f6871' | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794e' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb766bf96b2771' | 'True'                     | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' |
		| 'e1cib/data/Catalog.RowIDs?ref=a99a001a7dda711311ed05ca9df7ccb3' | 'False'        | 4      | 'd286bb53-274f-4a35-963b-5a64351ba998' | ''               | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | ''              | ''               | ''             | 'False'                | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb766bf96b2753' | ''       | 'e1cib/data/Document.PurchaseInvoice?ref=a99a001a7dda711311ed05ca9df7ccb4' | 'd286bb53-274f-4a35-963b-5a64351ba998' | ''                  | ''            | ''              | 'Enum.ShipmentConfirmationTransactionTypes.ReturnToVendor' | 'Enum.GoodsReceiptTransactionTypes.Purchase' | ''                | ''          | 'e1cib/data/Catalog.Agreements?ref=b762b13668d0905011eb76684b9f6871' | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794e' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb766bf96b2771' | 'True'                     | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' |

	// Документ.PurchaseInvoice

	И я проверяю или создаю для документа "PurchaseInvoice" объекты:
		| 'Ref'                                                                      | 'DeletionMark' | 'Number' | 'Date'                                   | 'Posted' | 'Agreement'                                                          | 'Company'                                                           | 'Currency'                                                           | 'DocDate'            | 'DocNumber' | 'LegalName'                                                         | 'Partner'                                                          | 'PriceIncludeTax' | 'IgnoreAdvances' | 'LegalNameContract' | 'Author'                                                        | 'Branch' | 'Description' | 'DocumentAmount' |
		| 'e1cib/data/Document.PurchaseInvoice?ref=a99a001a7dda711311ed05ca9df7ccb4' | 'False'        | 1002     | '{Строка(КонецДня(ТекущаяДата()) + 10)}' | 'True'   | 'e1cib/data/Catalog.Agreements?ref=b762b13668d0905011eb76684b9f6871' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | '01.01.0001 0:00:00' | ''          | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb766bf96b2771' | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794e' | 'True'            | 'False'          | ''                  | 'e1cib/data/Catalog.Users?ref=aa7f120ed92fbced11eb13d7279770c0' | ''       | ''            | 400              |

	И я перезаполняю для объекта табличную часть "ItemList":
		| 'Ref'                                                                      | 'Key'                                  | 'ItemKey'                                                          | 'Store'                                                          | 'PurchaseOrder' | 'Unit'                                                          | 'Quantity' | 'Price' | 'PriceType'                                             | 'TaxAmount' | 'TotalAmount' | 'NetAmount' | 'OffersAmount' | 'ProfitLossCenter' | 'ExpenseType'                                                                    | 'DeliveryDate'       | 'SalesOrder' | 'Detail' | 'AdditionalAnalytic' | 'DontCalculateRow' | 'QuantityInBaseUnit' | 'UseGoodsReceipt' | 'InternalSupplyRequest' |
		| 'e1cib/data/Document.PurchaseInvoice?ref=a99a001a7dda711311ed05ca9df7ccb4' | '18be867d-5ca6-47ef-a2b2-bdfa8a11f918' | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb766bf96b2751' | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | ''              | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 2          | 100     | 'e1cib/data/Catalog.PriceTypes?refName=ManualPriceType' | 33.33       | 200           | 166.67      |                | ''                 | ''                                                                               | '01.01.0001 0:00:00' | ''           | ''       | ''                   | 'False'            | 2                    | 'True'            | ''                      |
		| 'e1cib/data/Document.PurchaseInvoice?ref=a99a001a7dda711311ed05ca9df7ccb4' | 'd286bb53-274f-4a35-963b-5a64351ba998' | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb766bf96b2753' | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | ''              | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 1          | 200     | 'e1cib/data/Catalog.PriceTypes?refName=ManualPriceType' | 33.33       | 200           | 166.67      |                | ''                 | 'e1cib/data/Catalog.ExpenseAndRevenueTypes?ref=a99a001a7dda711311ed05ca9df7cc9a' | '01.01.0001 0:00:00' | ''           | ''       | ''                   | 'False'            | 1                    | 'False'           | ''                      |

	И я перезаполняю для объекта табличную часть "TaxList":
		| 'Ref'                                                                      | 'Key'                                  | 'Tax'                                                           | 'Analytics' | 'TaxRate'                                                          | 'Amount' | 'IncludeToTotalAmount' | 'ManualAmount' |
		| 'e1cib/data/Document.PurchaseInvoice?ref=a99a001a7dda711311ed05ca9df7ccb4' | '18be867d-5ca6-47ef-a2b2-bdfa8a11f918' | 'e1cib/data/Catalog.Taxes?ref=b762b13668d0905011eb7663e35d7970' | ''          | 'e1cib/data/Catalog.TaxRates?ref=b762b13668d0905011eb7663e35d796c' | 33.33    | 'True'                 | 33.33          |
		| 'e1cib/data/Document.PurchaseInvoice?ref=a99a001a7dda711311ed05ca9df7ccb4' | 'd286bb53-274f-4a35-963b-5a64351ba998' | 'e1cib/data/Catalog.Taxes?ref=b762b13668d0905011eb7663e35d7970' | ''          | 'e1cib/data/Catalog.TaxRates?ref=b762b13668d0905011eb7663e35d796c' | 33.33    | 'True'                 | 33.33          |

	И я перезаполняю для объекта табличную часть "Currencies":
		| 'Ref'                                                                      | 'Key' | 'CurrencyFrom'                                                       | 'Rate' | 'ReverseRate' | 'ShowReverseRate' | 'Multiplicity' | 'MovementType'                                                                                    | 'Amount' | 'IsFixed' |
		| 'e1cib/data/Document.PurchaseInvoice?ref=a99a001a7dda711311ed05ca9df7ccb4' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 1      | 1             | 'False'           | 1              | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796b' | 400      | 'False'   |
		| 'e1cib/data/Document.PurchaseInvoice?ref=a99a001a7dda711311ed05ca9df7ccb4' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 0.859  | 1.1641        | 'False'           | 1              | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796a' | 343.6    | 'False'   |
		| 'e1cib/data/Document.PurchaseInvoice?ref=a99a001a7dda711311ed05ca9df7ccb4' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 1      | 1             | 'False'           | 1              | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7968' | 400      | 'False'   |
		| 'e1cib/data/Document.PurchaseInvoice?ref=a99a001a7dda711311ed05ca9df7ccb4' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' |        |               | 'False'           |                | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7969' |          | 'False'   |

	И я перезаполняю для объекта табличную часть "RowIDInfo":
		| 'Ref'                                                                      | 'Key'                                  | 'RowID'                                | 'Quantity' | 'Basis' | 'CurrentStep' | 'NextStep'                                    | 'RowRef'                                                         | 'BasisKey' |
		| 'e1cib/data/Document.PurchaseInvoice?ref=a99a001a7dda711311ed05ca9df7ccb4' | '18be867d-5ca6-47ef-a2b2-bdfa8a11f918' | '18be867d-5ca6-47ef-a2b2-bdfa8a11f918' | 2          | ''      | ''            | 'e1cib/data/Catalog.MovementRules?refName=GR' | 'e1cib/data/Catalog.RowIDs?ref=a99a001a7dda711311ed05ca9df7ccb2' | ''         |
		| 'e1cib/data/Document.PurchaseInvoice?ref=a99a001a7dda711311ed05ca9df7ccb4' | 'd286bb53-274f-4a35-963b-5a64351ba998' | 'd286bb53-274f-4a35-963b-5a64351ba998' | 1          | ''      | ''            | ''                                            | 'e1cib/data/Catalog.RowIDs?ref=a99a001a7dda711311ed05ca9df7ccb3' | ''         |

