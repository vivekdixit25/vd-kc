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
package org.kuali.kra.budget.personnel;

import org.kuali.rice.kns.inquiry.KualiInquirableImpl;
import org.kuali.rice.kns.web.ui.Section;
import org.kuali.rice.krad.bo.BusinessObject;

import java.util.List;

public class BudgetPersonnelDetailsInquirable extends KualiInquirableImpl {
   
    @Override
    public List<Section> getSections(BusinessObject bo) {
        List<Section> sections = super.getSections(bo);
        BudgetPersonnelDetails budgetPersonnelDetails = ((BudgetPersonnelDetails) bo);
        budgetPersonnelDetails.refreshReferenceObject("budgetPerson");
        
        for(Section section: sections) {
            section.setSectionTitle(section.getSectionTitle() + " - " + budgetPersonnelDetails.getBudgetPerson().getPersonName() + " ");
        }
        
        return sections;
    }
} 
