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
package org.kuali.kra.costshare;

/**
 * 
 * This class handles the service calls for getting shared cost share related information. 
 */
public interface CostShareService {
    
    /**
     * 
     * This method checks the parameter service for the cost share label and returns the string.
     * @return
     */
    String getCostShareLabel();
    
    
    /**
     * 
     * This method returns true if the project period label is "Fiscal Year"
     * @return
     */
    boolean validateProjectPeriodAsFiscalYear();
    
    /**
     * 
     * This method returns true if the project period label is "Project Period"
     * @return
     */
    boolean validateProjectPeriodAsProjectPeriod();

}
