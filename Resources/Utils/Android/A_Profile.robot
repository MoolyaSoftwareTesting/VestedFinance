*** Settings ***

Library     AppiumLibrary

***Keywords***
# Profile 
User Clicks Profile Button 
    Wait And Click Element On Android  ${vf_A_profileBtn}
    Verify Page Conatin Text   text
    Verify Page Conatin Text   ${vf_A_history}
    Verify Page Conatin Text   ${vf_A_trnsctns}
    Verify Page Conatin Text   ${vf_A_tradeCnfrmtn}
    Verify Page Conatin Text   ${vf_A_accStmnt}
    Verify Page Conatin Text   ${vf_A_taxDocs}
    Verify Page Conatin Text   ${vf_A_help}
    Verify Page Conatin Text   ${vf_A_faq}
    Verify Page Conatin Text   ${vf_A_emailUs}
    Verify Page Conatin Text   ${vf_A_msgUs}
    Verify Page Conatin Text   ${vf_A_account}
    Verify Page Conatin Text   ${vf_A_mngPln}
    Verify Page Conatin Text   ${vf_A_invstmt}
    Verify Page Conatin Text   ${vf_A_security}
    Swipe  70 70 40 40 5000
    Verify Page Conatin Text   ${vf_A_lougout}


# History

# Help

# Account