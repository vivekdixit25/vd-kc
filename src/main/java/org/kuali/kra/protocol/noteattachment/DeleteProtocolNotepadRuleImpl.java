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
package org.kuali.kra.protocol.noteattachment;

/**
 * Implementation of {@link DeleteProtocolNotepadRule DeleteProtocolNotepadRule}.
 * @see DeleteProtocolNotepadRule for details
 */
public class DeleteProtocolNotepadRuleImpl implements DeleteProtocolNotepadRule {

    /** {@inheritDoc} */
    public boolean processDeleteProtocolNotepadRules(DeleteProtocolNotepadEvent event) {
        //TODO: Might have to do some more authorizing here...
        return true;
    }
}
