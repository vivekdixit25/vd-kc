/*
 * Copyright 2005-2014 The Kuali Foundation
 * 
 * Licensed under the Educational Community License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.opensource.org/licenses/ecl1.php
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.kuali.kra.timeandmoney.transactions;

import org.kuali.kra.timeandmoney.document.TimeAndMoneyDocument;
import org.kuali.rice.krad.rules.rule.BusinessRule;

/**
 * This class is for rule validation when adding new item
 */
public class AddTransactionRuleEvent extends TransactionRuleEvent {

    /**
     * Constructs a AddTransactionRuleEvent.
     * @param errorPathPrefix
     * @param timeAndMoneyDocument
     * @param pendingTransactionItem
     */
    public AddTransactionRuleEvent(String errorPathPrefix, TimeAndMoneyDocument timeAndMoneyDocument, PendingTransaction pendingTransactionItem) {
        super(errorPathPrefix, timeAndMoneyDocument, pendingTransactionItem);
    }

    /**
     * @see org.kuali.kra.award.paymentreports.specialapproval.approvedequipment.AwardApprovedEquipmentRuleEvent#invokeRuleMethod(org.kuali.core.rule.BusinessRule)
     */
    @Override
    public boolean invokeRuleMethod(BusinessRule rule) {
        return ((TransactionRule)rule).processAddPendingTransactionBusinessRules(this);
    }
}
