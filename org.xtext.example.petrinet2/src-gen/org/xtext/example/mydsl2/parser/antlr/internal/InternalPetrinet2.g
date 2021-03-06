/*
 * generated by Xtext
 */
grammar InternalPetrinet2;

options {
	superClass=AbstractInternalAntlrParser;
	
}

@lexer::header {
package org.xtext.example.mydsl2.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.xtext.example.mydsl2.parser.antlr.internal; 

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import org.xtext.example.mydsl2.services.Petrinet2GrammarAccess;

}

@parser::members {

 	private Petrinet2GrammarAccess grammarAccess;
 	
    public InternalPetrinet2Parser(TokenStream input, Petrinet2GrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }
    
    @Override
    protected String getFirstRuleName() {
    	return "Petrinet";	
   	}
   	
   	@Override
   	protected Petrinet2GrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}
}

@rulecatch { 
    catch (RecognitionException re) { 
        recover(input,re); 
        appendSkippedTokens();
    } 
}




// Entry rule entryRulePetrinet
entryRulePetrinet returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getPetrinetRule()); }
	 iv_rulePetrinet=rulePetrinet 
	 { $current=$iv_rulePetrinet.current; } 
	 EOF 
;

// Rule Petrinet
rulePetrinet returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
    {
        $current = forceCreateModelElement(
            grammarAccess.getPetrinetAccess().getPetrinetAction_0(),
            $current);
    }
)this_LESS_1=RULE_LESS
    { 
    newLeafNode(this_LESS_1, grammarAccess.getPetrinetAccess().getLESSTerminalRuleCall_1()); 
    }
this_QUESTION_2=RULE_QUESTION
    { 
    newLeafNode(this_QUESTION_2, grammarAccess.getPetrinetAccess().getQUESTIONTerminalRuleCall_2()); 
    }
	otherlv_3='xml' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getPetrinetAccess().getXmlKeyword_3());
    }
	otherlv_4='version' 
    {
    	newLeafNode(otherlv_4, grammarAccess.getPetrinetAccess().getVersionKeyword_4());
    }
this_EQUALS_5=RULE_EQUALS
    { 
    newLeafNode(this_EQUALS_5, grammarAccess.getPetrinetAccess().getEQUALSTerminalRuleCall_5()); 
    }
	otherlv_6='"1.0"' 
    {
    	newLeafNode(otherlv_6, grammarAccess.getPetrinetAccess().getQuotationMarkDigitOneFullStopDigitZeroQuotationMarkKeyword_6());
    }
this_QUESTION_7=RULE_QUESTION
    { 
    newLeafNode(this_QUESTION_7, grammarAccess.getPetrinetAccess().getQUESTIONTerminalRuleCall_7()); 
    }
this_GREATER_8=RULE_GREATER
    { 
    newLeafNode(this_GREATER_8, grammarAccess.getPetrinetAccess().getGREATERTerminalRuleCall_8()); 
    }
this_LESS_9=RULE_LESS
    { 
    newLeafNode(this_LESS_9, grammarAccess.getPetrinetAccess().getLESSTerminalRuleCall_9()); 
    }
	otherlv_10='pnml:pnml' 
    {
    	newLeafNode(otherlv_10, grammarAccess.getPetrinetAccess().getPnmlPnmlKeyword_10());
    }
	otherlv_11='xmlns:pnml' 
    {
    	newLeafNode(otherlv_11, grammarAccess.getPetrinetAccess().getXmlnsPnmlKeyword_11());
    }
this_EQUALS_12=RULE_EQUALS
    { 
    newLeafNode(this_EQUALS_12, grammarAccess.getPetrinetAccess().getEQUALSTerminalRuleCall_12()); 
    }
	otherlv_13='"pnml.xsd"' 
    {
    	newLeafNode(otherlv_13, grammarAccess.getPetrinetAccess().getPnmlXsdKeyword_13());
    }
this_GREATER_14=RULE_GREATER
    { 
    newLeafNode(this_GREATER_14, grammarAccess.getPetrinetAccess().getGREATERTerminalRuleCall_14()); 
    }
this_LESS_15=RULE_LESS
    { 
    newLeafNode(this_LESS_15, grammarAccess.getPetrinetAccess().getLESSTerminalRuleCall_15()); 
    }
	otherlv_16='net' 
    {
    	newLeafNode(otherlv_16, grammarAccess.getPetrinetAccess().getNetKeyword_16());
    }
	otherlv_17='type' 
    {
    	newLeafNode(otherlv_17, grammarAccess.getPetrinetAccess().getTypeKeyword_17());
    }
this_EQUALS_18=RULE_EQUALS
    { 
    newLeafNode(this_EQUALS_18, grammarAccess.getPetrinetAccess().getEQUALSTerminalRuleCall_18()); 
    }
	otherlv_19='"ptNet"' 
    {
    	newLeafNode(otherlv_19, grammarAccess.getPetrinetAccess().getPtNetKeyword_19());
    }
this_GREATER_20=RULE_GREATER
    { 
    newLeafNode(this_GREATER_20, grammarAccess.getPetrinetAccess().getGREATERTerminalRuleCall_20()); 
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getPetrinetAccess().getElementsElementParserRuleCall_21_0()); 
	    }
		lv_elements_21_0=ruleElement		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getPetrinetRule());
	        }
       		add(
       			$current, 
       			"elements",
        		lv_elements_21_0, 
        		"org.xtext.example.mydsl2.Petrinet2.Element");
	        afterParserOrEnumRuleCall();
	    }

)
)*this_LESS_22=RULE_LESS
    { 
    newLeafNode(this_LESS_22, grammarAccess.getPetrinetAccess().getLESSTerminalRuleCall_22()); 
    }
this_SLASH_23=RULE_SLASH
    { 
    newLeafNode(this_SLASH_23, grammarAccess.getPetrinetAccess().getSLASHTerminalRuleCall_23()); 
    }
	otherlv_24='net' 
    {
    	newLeafNode(otherlv_24, grammarAccess.getPetrinetAccess().getNetKeyword_24());
    }
this_GREATER_25=RULE_GREATER
    { 
    newLeafNode(this_GREATER_25, grammarAccess.getPetrinetAccess().getGREATERTerminalRuleCall_25()); 
    }
this_LESS_26=RULE_LESS
    { 
    newLeafNode(this_LESS_26, grammarAccess.getPetrinetAccess().getLESSTerminalRuleCall_26()); 
    }
this_SLASH_27=RULE_SLASH
    { 
    newLeafNode(this_SLASH_27, grammarAccess.getPetrinetAccess().getSLASHTerminalRuleCall_27()); 
    }
	otherlv_28='pnml:pnml' 
    {
    	newLeafNode(otherlv_28, grammarAccess.getPetrinetAccess().getPnmlPnmlKeyword_28());
    }
this_GREATER_29=RULE_GREATER
    { 
    newLeafNode(this_GREATER_29, grammarAccess.getPetrinetAccess().getGREATERTerminalRuleCall_29()); 
    }
)
;





// Entry rule entryRuleElement
entryRuleElement returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getElementRule()); }
	 iv_ruleElement=ruleElement 
	 { $current=$iv_ruleElement.current; } 
	 EOF 
;

// Rule Element
ruleElement returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
    { 
        newCompositeNode(grammarAccess.getElementAccess().getNodeParserRuleCall_0()); 
    }
    this_Node_0=ruleNode
    { 
        $current = $this_Node_0.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getElementAccess().getOutputArcParserRuleCall_1()); 
    }
    this_OutputArc_1=ruleOutputArc
    { 
        $current = $this_OutputArc_1.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getElementAccess().getInputArcParserRuleCall_2()); 
    }
    this_InputArc_2=ruleInputArc
    { 
        $current = $this_InputArc_2.current; 
        afterParserOrEnumRuleCall();
    }
)
;





// Entry rule entryRuleNode
entryRuleNode returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getNodeRule()); }
	 iv_ruleNode=ruleNode 
	 { $current=$iv_ruleNode.current; } 
	 EOF 
;

// Rule Node
ruleNode returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
    { 
        newCompositeNode(grammarAccess.getNodeAccess().getTransitionParserRuleCall_0()); 
    }
    this_Transition_0=ruleTransition
    { 
        $current = $this_Transition_0.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getNodeAccess().getPlaceParserRuleCall_1()); 
    }
    this_Place_1=rulePlace
    { 
        $current = $this_Place_1.current; 
        afterParserOrEnumRuleCall();
    }
)
;





// Entry rule entryRuleTransition
entryRuleTransition returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getTransitionRule()); }
	 iv_ruleTransition=ruleTransition 
	 { $current=$iv_ruleTransition.current; } 
	 EOF 
;

// Rule Transition
ruleTransition returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(this_LESS_0=RULE_LESS
    { 
    newLeafNode(this_LESS_0, grammarAccess.getTransitionAccess().getLESSTerminalRuleCall_0()); 
    }
this_TTRANSITION_1=RULE_TTRANSITION
    { 
    newLeafNode(this_TTRANSITION_1, grammarAccess.getTransitionAccess().getTTRANSITIONTerminalRuleCall_1()); 
    }
this_ID_2=RULE_ID
    { 
    newLeafNode(this_ID_2, grammarAccess.getTransitionAccess().getIDTerminalRuleCall_2()); 
    }
this_EQUALS_3=RULE_EQUALS
    { 
    newLeafNode(this_EQUALS_3, grammarAccess.getTransitionAccess().getEQUALSTerminalRuleCall_3()); 
    }
(
(
		lv_name_4_0=RULE_STRING
		{
			newLeafNode(lv_name_4_0, grammarAccess.getTransitionAccess().getNameSTRINGTerminalRuleCall_4_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getTransitionRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_4_0, 
        		"org.eclipse.xtext.common.Terminals.STRING");
	    }

)
)this_GREATER_5=RULE_GREATER
    { 
    newLeafNode(this_GREATER_5, grammarAccess.getTransitionAccess().getGREATERTerminalRuleCall_5()); 
    }
this_LESS_6=RULE_LESS
    { 
    newLeafNode(this_LESS_6, grammarAccess.getTransitionAccess().getLESSTerminalRuleCall_6()); 
    }
this_SLASH_7=RULE_SLASH
    { 
    newLeafNode(this_SLASH_7, grammarAccess.getTransitionAccess().getSLASHTerminalRuleCall_7()); 
    }
this_TTRANSITION_8=RULE_TTRANSITION
    { 
    newLeafNode(this_TTRANSITION_8, grammarAccess.getTransitionAccess().getTTRANSITIONTerminalRuleCall_8()); 
    }
this_GREATER_9=RULE_GREATER
    { 
    newLeafNode(this_GREATER_9, grammarAccess.getTransitionAccess().getGREATERTerminalRuleCall_9()); 
    }
)
;





// Entry rule entryRulePlace
entryRulePlace returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getPlaceRule()); }
	 iv_rulePlace=rulePlace 
	 { $current=$iv_rulePlace.current; } 
	 EOF 
;

// Rule Place
rulePlace returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(this_LESS_0=RULE_LESS
    { 
    newLeafNode(this_LESS_0, grammarAccess.getPlaceAccess().getLESSTerminalRuleCall_0()); 
    }
this_TPLACE_1=RULE_TPLACE
    { 
    newLeafNode(this_TPLACE_1, grammarAccess.getPlaceAccess().getTPLACETerminalRuleCall_1()); 
    }
this_ID_2=RULE_ID
    { 
    newLeafNode(this_ID_2, grammarAccess.getPlaceAccess().getIDTerminalRuleCall_2()); 
    }
this_EQUALS_3=RULE_EQUALS
    { 
    newLeafNode(this_EQUALS_3, grammarAccess.getPlaceAccess().getEQUALSTerminalRuleCall_3()); 
    }
(
(
		lv_name_4_0=RULE_STRING
		{
			newLeafNode(lv_name_4_0, grammarAccess.getPlaceAccess().getNameSTRINGTerminalRuleCall_4_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getPlaceRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_4_0, 
        		"org.eclipse.xtext.common.Terminals.STRING");
	    }

)
)this_GREATER_5=RULE_GREATER
    { 
    newLeafNode(this_GREATER_5, grammarAccess.getPlaceAccess().getGREATERTerminalRuleCall_5()); 
    }
this_LESS_6=RULE_LESS
    { 
    newLeafNode(this_LESS_6, grammarAccess.getPlaceAccess().getLESSTerminalRuleCall_6()); 
    }
this_SLASH_7=RULE_SLASH
    { 
    newLeafNode(this_SLASH_7, grammarAccess.getPlaceAccess().getSLASHTerminalRuleCall_7()); 
    }
this_TPLACE_8=RULE_TPLACE
    { 
    newLeafNode(this_TPLACE_8, grammarAccess.getPlaceAccess().getTPLACETerminalRuleCall_8()); 
    }
this_GREATER_9=RULE_GREATER
    { 
    newLeafNode(this_GREATER_9, grammarAccess.getPlaceAccess().getGREATERTerminalRuleCall_9()); 
    }
)
;





// Entry rule entryRuleOutputArc
entryRuleOutputArc returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getOutputArcRule()); }
	 iv_ruleOutputArc=ruleOutputArc 
	 { $current=$iv_ruleOutputArc.current; } 
	 EOF 
;

// Rule OutputArc
ruleOutputArc returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(this_LESS_0=RULE_LESS
    { 
    newLeafNode(this_LESS_0, grammarAccess.getOutputArcAccess().getLESSTerminalRuleCall_0()); 
    }
this_TOUTPUTARC_1=RULE_TOUTPUTARC
    { 
    newLeafNode(this_TOUTPUTARC_1, grammarAccess.getOutputArcAccess().getTOUTPUTARCTerminalRuleCall_1()); 
    }
this_ID_2=RULE_ID
    { 
    newLeafNode(this_ID_2, grammarAccess.getOutputArcAccess().getIDTerminalRuleCall_2()); 
    }
this_EQUALS_3=RULE_EQUALS
    { 
    newLeafNode(this_EQUALS_3, grammarAccess.getOutputArcAccess().getEQUALSTerminalRuleCall_3()); 
    }
(
(
		lv_name_4_0=RULE_STRING
		{
			newLeafNode(lv_name_4_0, grammarAccess.getOutputArcAccess().getNameSTRINGTerminalRuleCall_4_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getOutputArcRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_4_0, 
        		"org.eclipse.xtext.common.Terminals.STRING");
	    }

)
)	otherlv_5='target' 
    {
    	newLeafNode(otherlv_5, grammarAccess.getOutputArcAccess().getTargetKeyword_5());
    }
this_EQUALS_6=RULE_EQUALS
    { 
    newLeafNode(this_EQUALS_6, grammarAccess.getOutputArcAccess().getEQUALSTerminalRuleCall_6()); 
    }
(
(
		{
			if ($current==null) {
	            $current = createModelElement(grammarAccess.getOutputArcRule());
	        }
        }
	otherlv_7=RULE_STRING
	{
		newLeafNode(otherlv_7, grammarAccess.getOutputArcAccess().getToNodeCrossReference_7_0()); 
	}

)
)	otherlv_8='source' 
    {
    	newLeafNode(otherlv_8, grammarAccess.getOutputArcAccess().getSourceKeyword_8());
    }
this_EQUALS_9=RULE_EQUALS
    { 
    newLeafNode(this_EQUALS_9, grammarAccess.getOutputArcAccess().getEQUALSTerminalRuleCall_9()); 
    }
(
(
		{
			if ($current==null) {
	            $current = createModelElement(grammarAccess.getOutputArcRule());
	        }
        }
	otherlv_10=RULE_STRING
	{
		newLeafNode(otherlv_10, grammarAccess.getOutputArcAccess().getFromNodeCrossReference_10_0()); 
	}

)
)this_GREATER_11=RULE_GREATER
    { 
    newLeafNode(this_GREATER_11, grammarAccess.getOutputArcAccess().getGREATERTerminalRuleCall_11()); 
    }
this_LESS_12=RULE_LESS
    { 
    newLeafNode(this_LESS_12, grammarAccess.getOutputArcAccess().getLESSTerminalRuleCall_12()); 
    }
this_SLASH_13=RULE_SLASH
    { 
    newLeafNode(this_SLASH_13, grammarAccess.getOutputArcAccess().getSLASHTerminalRuleCall_13()); 
    }
this_TOUTPUTARC_14=RULE_TOUTPUTARC
    { 
    newLeafNode(this_TOUTPUTARC_14, grammarAccess.getOutputArcAccess().getTOUTPUTARCTerminalRuleCall_14()); 
    }
this_GREATER_15=RULE_GREATER
    { 
    newLeafNode(this_GREATER_15, grammarAccess.getOutputArcAccess().getGREATERTerminalRuleCall_15()); 
    }
)
;





// Entry rule entryRuleInputArc
entryRuleInputArc returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getInputArcRule()); }
	 iv_ruleInputArc=ruleInputArc 
	 { $current=$iv_ruleInputArc.current; } 
	 EOF 
;

// Rule InputArc
ruleInputArc returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(this_LESS_0=RULE_LESS
    { 
    newLeafNode(this_LESS_0, grammarAccess.getInputArcAccess().getLESSTerminalRuleCall_0()); 
    }
this_TINPUTARC_1=RULE_TINPUTARC
    { 
    newLeafNode(this_TINPUTARC_1, grammarAccess.getInputArcAccess().getTINPUTARCTerminalRuleCall_1()); 
    }
this_ID_2=RULE_ID
    { 
    newLeafNode(this_ID_2, grammarAccess.getInputArcAccess().getIDTerminalRuleCall_2()); 
    }
this_EQUALS_3=RULE_EQUALS
    { 
    newLeafNode(this_EQUALS_3, grammarAccess.getInputArcAccess().getEQUALSTerminalRuleCall_3()); 
    }
(
(
		lv_name_4_0=RULE_STRING
		{
			newLeafNode(lv_name_4_0, grammarAccess.getInputArcAccess().getNameSTRINGTerminalRuleCall_4_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getInputArcRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_4_0, 
        		"org.eclipse.xtext.common.Terminals.STRING");
	    }

)
)	otherlv_5='target' 
    {
    	newLeafNode(otherlv_5, grammarAccess.getInputArcAccess().getTargetKeyword_5());
    }
this_EQUALS_6=RULE_EQUALS
    { 
    newLeafNode(this_EQUALS_6, grammarAccess.getInputArcAccess().getEQUALSTerminalRuleCall_6()); 
    }
(
(
		{
			if ($current==null) {
	            $current = createModelElement(grammarAccess.getInputArcRule());
	        }
        }
	otherlv_7=RULE_STRING
	{
		newLeafNode(otherlv_7, grammarAccess.getInputArcAccess().getToNodeCrossReference_7_0()); 
	}

)
)	otherlv_8='source' 
    {
    	newLeafNode(otherlv_8, grammarAccess.getInputArcAccess().getSourceKeyword_8());
    }
this_EQUALS_9=RULE_EQUALS
    { 
    newLeafNode(this_EQUALS_9, grammarAccess.getInputArcAccess().getEQUALSTerminalRuleCall_9()); 
    }
(
(
		{
			if ($current==null) {
	            $current = createModelElement(grammarAccess.getInputArcRule());
	        }
        }
	otherlv_10=RULE_STRING
	{
		newLeafNode(otherlv_10, grammarAccess.getInputArcAccess().getFromNodeCrossReference_10_0()); 
	}

)
)this_GREATER_11=RULE_GREATER
    { 
    newLeafNode(this_GREATER_11, grammarAccess.getInputArcAccess().getGREATERTerminalRuleCall_11()); 
    }
this_LESS_12=RULE_LESS
    { 
    newLeafNode(this_LESS_12, grammarAccess.getInputArcAccess().getLESSTerminalRuleCall_12()); 
    }
this_SLASH_13=RULE_SLASH
    { 
    newLeafNode(this_SLASH_13, grammarAccess.getInputArcAccess().getSLASHTerminalRuleCall_13()); 
    }
this_TINPUTARC_14=RULE_TINPUTARC
    { 
    newLeafNode(this_TINPUTARC_14, grammarAccess.getInputArcAccess().getTINPUTARCTerminalRuleCall_14()); 
    }
this_GREATER_15=RULE_GREATER
    { 
    newLeafNode(this_GREATER_15, grammarAccess.getInputArcAccess().getGREATERTerminalRuleCall_15()); 
    }
)
;





RULE_NUMBER : ('0'..'9')* ('.' ('0'..'9')+)?;

RULE_INT : 'this one has been deactivated';

RULE_GREATER : '>';

RULE_LESS : '<';

RULE_SLASH : '/';

RULE_TPLACE : 'place';

RULE_TTRANSITION : 'transition';

RULE_TOUTPUTARC : 'outputarc';

RULE_TINPUTARC : 'inputarc';

RULE_ID : 'id';

RULE_EQUALS : '=';

RULE_QUESTION : '?';

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;


