*** Settings ***

Library     AppiumLibrary

***Keywords***

Click On Browse Tab
    Wait For Element Visibility On Android  ${vf_A_browseTab}
    Wait And Click Element On Android  ${vf_A_browseTab}
    Wait For Element Visibility On Android  ${vf_A_searchBar}
    Verify Element Visibility  ${vf_A_searchBar}
    Log to Console  Navigated to Browse Screen

Click On Search And Browse For 
    [Arguments]  ${stockSymbol}  ${stockName}  
    Wait And Click Element On Android  ${vf_A_searchBar}
    Wait For Element Visibility On Android  ${vf_A_searchTextBox}
    Clear Text  ${vf_A_searchTextBox}
    Input Text  ${vf_A_searchTextBox}  ${stockSymbol} 
    Close Android Keyboard
    Click On Element If Visibile  ${e_noThanksTxt}
    FOR  ${i}  IN RANGE  1  5
        ${isElementVisible} =  Run Keyword And Return Status  Verify Page Conatin Text  ${stockName}
        IF  ${isElementVisible}  
            Click Text  ${stockName}
            Exit For Loop If   ${isElementVisible}
        ELSE
            Swipe By Percent  70  40  20  20  5000
        END
    END
    Wait For Page Conatin Element  ${stockSymbol}  
    Verify Page Conatin Text   ${stockSymbol}
    Log To Console  Navigated to - ${stockSymbol}

Verify Content In Stock Details Screen
    [Arguments]  ${stockScreenHeading}  ${stockHeading}  ${stockName}  
    Verify Element Visibility  ${stockScreenHeading}
    Verify Element Visibility  ${stockHeading}
    Verify Page Conatin Text   ${stockName}
    Verify Element Visibility  ${vf_A_stockIcon}
    Log to Console  Verified Stock Name & Icon!
    Verify Element Visibility  ${vf_A_stockGraph}
    Verify Page Conatin Text  ${e_all}
    Verify Page Conatin Text  ${e_1y}
    Verify Page Conatin Text  ${e_6m}
    Verify Page Conatin Text  ${e_3m}
    Verify Page Conatin Text  ${e_1m}
    Verify Page Conatin Text  ${e_1w}
    Verify Page Conatin Text  ${e_1d}
    Click Text  ${e_all}
    Click Text  ${e_1y}
    Click Text  ${e_6m}
    Click Text  ${e_3m}
    Click Text  ${e_1m}
    Click Text  ${e_1w}
    Click Text  ${e_1d}
    Log to Console  Verified Graph & values!
    Verify Page Conatin Text  ${e_overviewField}
    Verify Page Conatin Text  ${e_returns}
    Click Text  ${e_returns}
    Swipe By Percent  30  20  20  20  5000
    Verify Page Conatin Text  ${e_fundamentalData}
    Click Text  ${e_fundamentalData}
    Verify Page Conatin Text  ${e_keyRatios}
    Click Text  ${e_keyRatios}
    Log to Console  Verified Content In Stock Details Screen for - ${stockName}

Navigate Back To Dashboard
    Wait And Click Element On Android  ${vf_A_backArrowStockDetails}
    Verify Dashboard Screen

Browse For 0-10 Stocks And Verify Stock Details Screen
    FOR  ${i}  IN RANGE  1  11
        Click On Browse Tab
        @{stockSymbol} =  Get Json Values  $.StockSymbol.s${i}  Resources/TestData/InstrumentalDetails/StockSymbols.json 
        Log To Console  ${stockSymbol}
        @{stockName} =  Get Json Values  $.StockName.n${i}  Resources/TestData/InstrumentalDetails/StockNames.json 
        Log To Console  ${stockName}
        Click On Search And Browse For  ${stockSymbol}  ${stockName}
        Verify Content In Stock Details Screen  ${vf_A_hiiScreenHeading}  ${vf_A_hiiHeading}  ${e_hiiTxtFull}  
        Navigate Back To Dashboard
    END

Browse For HII Stock And Verify
    Click On Browse Tab
    Click On Search And Browse For  ${e_hii}  ${e_hiiTxt}
    Verify Content In Stock Details Screen  ${vf_A_hiiScreenHeading}  ${vf_A_hiiHeading}  ${e_hiiTxt}  
    Navigate Back To Dashboard

Browse For HEI Stock And Verify
    Click On Browse Tab
    Click On Search And Browse For  ${e_hei}  ${e_heiTxt}
    Verify Content In Stock Details Screen  ${vf_A_heiScreenHeading}  ${vf_A_heiHeading}  ${e_heiTxtFull}  
    Navigate Back To Dashboard

Browse For J Stock And Verify
    Click On Browse Tab
    Click On Search And Browse For  ${e_j}  ${e_jTxt}
    Verify Content In Stock Details Screen  ${vf_A_jScreenHeading}  ${vf_A_jHeading}  ${e_jTxt}  
    Navigate Back To Dashboard

Browse For XYL Stock And Verify
    Click On Browse Tab
    Click On Search And Browse For  ${e_xyl}  ${e_xylTxt}
    Verify Content In Stock Details Screen  ${vf_A_xylScreenHeading}  ${vf_A_xylHeading}  ${e_xylTxt}  
    Navigate Back To Dashboard

Browse For WAB Stock And Verify
    Click On Browse Tab
    Click On Search And Browse For  ${e_wab}  ${e_wabTxt}
    Verify Content In Stock Details Screen  ${vf_A_wabScreenHeading}  ${vf_A_wabHeading}  ${e_wabTxtFull}  
    Navigate Back To Dashboard

Browse For GD Stock And Verify
    Click On Browse Tab
    Click On Search And Browse For  ${e_gd}  ${e_gdTxt}
    Verify Content In Stock Details Screen  ${vf_A_gdScreenHeading}  ${vf_A_gdHeading}  ${e_gdTxt}  
    Navigate Back To Dashboard

Browse For HEIA Stock And Verify
    Click On Browse Tab
    Click On Search And Browse For  ${e_heia}  ${e_heiaTxt}
    Verify Content In Stock Details Screen  ${vf_A_heiaScreenHeading}  ${vf_A_heiaHeading}  ${e_heiTxtFull}  
    Navigate Back To Dashboard

Browse For DOV Stock And Verify
    Click On Browse Tab
    Click On Search And Browse For  ${e_dov}  ${e_dovTxt}
    Verify Content In Stock Details Screen  ${vf_A_dovScreenHeading}  ${vf_A_dovHeading}  ${e_dovTxt}  
    Navigate Back To Dashboard

Browse For ABB Stock And Verify
    Click On Browse Tab
    Click On Search And Browse For  ${e_abb}  ${e_abbTxt}
    Verify Content In Stock Details Screen  ${vf_A_abbScreenHeading}  ${vf_A_abbHeading}  ${e_abbTxt}  
    Navigate Back To Dashboard

Browse For EMR Stock And Verify
    Click On Browse Tab
    Click On Search And Browse For  ${e_emr}  ${e_emrTxt}
    Verify Content In Stock Details Screen  ${vf_A_emrScreenHeading}  ${vf_A_emrHeading}  ${e_emrTxt}  
    Navigate Back To Dashboard

Browse For IEP Stock And Verify
    Click On Browse Tab
    Click On Search And Browse For  ${e_iep}  ${e_iepTxt}
    Verify Content In Stock Details Screen  ${vf_A_iepScreenHeading}  ${vf_A_iepHeading}  ${e_iepTxtFull}  
    Navigate Back To Dashboard

Browse For IEX Stock And Verify
    Click On Browse Tab
    Click On Search And Browse For  ${e_iex}  ${e_iexTxt}
    Verify Content In Stock Details Screen  ${vf_A_iexScreenHeading}  ${vf_A_iexHeading}  ${e_iexTxt}  
    Navigate Back To Dashboard

Browse For ZNH Stock And Verify 
    Click On Browse Tab
    Click On Search And Browse For  ${e_znh}  ${e_znhTxt}
    Verify Content In Stock Details Screen  ${vf_A_znhScreenHeading}  ${vf_A_znhHeading}  ${e_znhTxtFull}  
    Navigate Back To Dashboard

Browse For DAL Stock And Verify
    Click On Browse Tab
    Click On Search And Browse For  ${e_dal}  ${e_dalTxt}
    Verify Content In Stock Details Screen  ${vf_A_dalScreenHeading}  ${vf_A_dalHeading}  ${e_dalTxtFull} 
    Navigate Back To Dashboard

Browse For ODFL Stock And Verify
    Click On Browse Tab
    Click On Search And Browse For  ${e_odfl}  ${e_odflTxt}
    Verify Content In Stock Details Screen  ${vf_A_odflScreenHeading}  ${vf_A_odflHeading}  ${e_odflTxtFull} 
    Navigate Back To Dashboard

Browse For CP Stock And Verify
    Click On Browse Tab
    Click On Search And Browse For  ${e_cp}  ${e_cpTxt}
    Verify Content In Stock Details Screen  ${vf_A_cpScreenHeading}  ${vf_A_cpHeading}  ${e_cpTxt} 
    Navigate Back To Dashboard

Browse For TDG Stock And Verify
    Click On Browse Tab
    Click On Search And Browse For  ${e_tdg}  ${e_tdgTxt}
    Verify Content In Stock Details Screen  ${vf_A_tdgScreenHeading}  ${vf_A_tdgHeading}  ${e_tdgTxt} 
    Navigate Back To Dashboard

Browse For HON Stock And Verify
    Click On Browse Tab
    Click On Search And Browse For  ${e_hon}  ${e_honTxt}
    Verify Content In Stock Details Screen  ${vf_A_honScreenHeading}  ${vf_A_honHeading}  ${e_honTxt}  
    Navigate Back To Dashboard

Browse For RTX Stock And Verify
    Click On Browse Tab
    Click On Search And Browse For  ${e_rtx}  ${e_rtxTxt}
    Verify Content In Stock Details Screen  ${vf_A_rtxScreenHeading}  ${vf_A_rtxHeading}  ${e_rtxTxt}  
    Navigate Back To Dashboard

Browse For KSU Stock And Verify
    Click On Browse Tab
    Click On Search And Browse For  ${e_ksu}  ${e_ksuTxt}
    Verify Content In Stock Details Screen  ${vf_A_ksuScreenHeading}  ${vf_A_ksuHeading}  ${e_ksuTxt}  
    Navigate Back To Dashboard

Browse For PH Stock And Verify
    Click On Browse Tab
    Click On Search And Browse For  ${e_ph}  ${e_phTxt}
    Verify Content In Stock Details Screen  ${vf_A_phScreenHeading}  ${vf_A_phHeading}  ${e_phTxt}  
    Navigate Back To Dashboard

Browse For JBHT Stock And Verify
    Click On Browse Tab
    Click On Search And Browse For  ${e_jbht}  ${e_jbhtTxt}
    Verify Content In Stock Details Screen  ${vf_A_jbhtScreenHeading}  ${vf_A_jbhtHeading}  ${e_jbhtTxtFull}  
    Navigate Back To Dashboard

Browse For FTV Stock And Verify
    Click On Browse Tab
    Click On Search And Browse For  ${e_ftv}  ${e_ftvTxt}
    Verify Content In Stock Details Screen  ${vf_A_ftvScreenHeading}  ${vf_A_ftvHeading}  ${e_ftvTxtFull}  
    Navigate Back To Dashboard

Browse For UNP Stock And Verify
    Click On Browse Tab
    Click On Search And Browse For  ${e_unp}  ${e_unpTxt}
    Verify Content In Stock Details Screen  ${vf_A_unpScreenHeading}  ${vf_A_unpHeading}  ${e_unpTxt}  
    Navigate Back To Dashboard

Browse For BE Stock And Verify
    Click On Browse Tab
    Click On Search And Browse For  ${e_be}  ${e_beTxt}
    Verify Content In Stock Details Screen  ${vf_A_beScreenHeading}  ${vf_A_beHeading}  ${e_beTxtFull}  
    Navigate Back To Dashboard

Browse For PCAR Stock And Verify
    Click On Browse Tab
    Click On Search And Browse For  ${e_pcar}  ${e_pcarTxt}
    Verify Content In Stock Details Screen  ${vf_A_pcarScreenHeading}  ${vf_A_pcarHeading}  ${e_pcarTxt}  
    Navigate Back To Dashboard

Browse For ARNC Stock And Verify
    Click On Browse Tab
    Click On Search And Browse For  ${e_arnc}  ${e_arncTxt}
    Verify Content In Stock Details Screen  ${vf_A_arncScreenHeading}  ${vf_A_arncHeading}  ${e_arncTxtFull}  
    Navigate Back To Dashboard

Browse For ALK Stock And Verify
    Click On Browse Tab
    Click On Search And Browse For  ${e_alk}  ${e_alkTxt}
    Verify Content In Stock Details Screen  ${vf_A_alkScreenHeading}  ${vf_A_alkHeading}  ${e_alkTxt}  
    Navigate Back To Dashboard

Browse For CSX Stock And Verify
    Click On Browse Tab
    Click On Search And Browse For  ${e_csx}  ${e_csxTxt}
    Verify Content In Stock Details Screen  ${vf_A_csxScreenHeading}  ${vf_A_csxHeading}  ${e_csxTxtFull}  
    Navigate Back To Dashboard

Browse For TXT Stock And Verify
    Click On Browse Tab
    Click On Search And Browse For  ${e_txt}  ${e_txtTxt}
    Verify Content In Stock Details Screen  ${vf_A_txtScreenHeading}  ${vf_A_txtHeading}  ${e_txtTxt}  
    Navigate Back To Dashboard

Browse For SWK Stock And Verify
    Click On Browse Tab
    Click On Search And Browse For  ${e_swk}  ${e_swkTxt}
    Verify Content In Stock Details Screen  ${vf_A_swkScreenHeading}  ${vf_A_swkHeading}  ${e_swkTxt}  
    Navigate Back To Dashboard

Browse For NSC Stock And Verify
    Click On Browse Tab
    Click On Search And Browse For  ${e_nsc}  ${e_nscTxt}
    Verify Content In Stock Details Screen  ${vf_A_nscScreenHeading}  ${vf_A_nscHeading}  ${e_nscTxt}  
    Navigate Back To Dashboard

Browse For FBHS Stock And Verify
    Click On Browse Tab
    Click On Search And Browse For  ${e_fbhs}  ${e_fbhsTxt}
    Verify Content In Stock Details Screen  ${vf_A_fbhsScreenHeading}  ${vf_A_fbhsHeading}  ${e_fbhsTxt}  
    Navigate Back To Dashboard

Browse For RYAAY Stock And Verify
    Click On Browse Tab
    Click On Search And Browse For  ${e_ryaay}  ${e_ryaayTxt}
    Verify Content In Stock Details Screen  ${vf_A_ryaayScreenHeading}  ${vf_A_ryaayHeading}  ${e_ryaayTxt}  
    Navigate Back To Dashboard

Browse For LUV Stock And Verify
    Click On Browse Tab
    Click On Search And Browse For  ${e_luv}  ${e_luvTxt}
    Verify Content In Stock Details Screen  ${vf_A_luvScreenHeading}  ${vf_A_luvHeading}  ${e_luvTxt}  
    Navigate Back To Dashboard