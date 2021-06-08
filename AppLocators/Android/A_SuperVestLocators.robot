*** Variables ***

${e_multiAssetClassHeading} =  Multi-Asset Class Portfolios
${e_multiAssetClassTxt} =  Vests are curated portfolios that are comprised of stocks and/or ETFs. Multi-Asset Class Vests are constructed with different goals or themes in mind. These Vests consist of three core assets (stocks, bonds, and gold) to create a balanced and efficient portfolio for different risk profiles.
${e_compareVests} =  Compare Vests
# Compare Portfolios
${e_comparePortfolios} =  Compare Portfolios
${e_1yearReturns} =  1 Year Returns
${e_5yearReturns} =  5 Year Returns
${e_allTimeReturns} =  All Time Returns
${e_volatility} =  Volatility
${e_incomeYield} =  Income Yield
${e_infoTxt} =  Portfolio performance calculated based on equity prices of the underlying ETFs. It incorporates gains from cash distributions of dividends or bonds and does not include fees associated with the relevant ETFs.
${e_volatilityInfoTxt} =  One year volatility is shown here. Volatility is the historical annualized standard deviation of the portfolio’s returns. It is a measure of risk. Typically, the higher the volatility, the more varied the returns have been in the past, and therefore the riskier the investment is.
${e_incomeYieldInfoTxt} =  Income yield is the percentage of cash distribution you receive when you invest in this portfolio. The income yield varies - some portfolios have larger allocations towards bonds or dividend yielding companies than others. A 1% income yield means that for every $100 invested in the particular portfolio, you will receive $1 annually, distributed either monthly or quarterly, depending on the distribution dates of the underlying stocks or ETFs within the portfolio.
${e_allocations} =  Allocations
${e_allocationsTxt1} =  Vanguard Information Technology ETF
${e_allocationsTxt2.1} =  iShares Core S
${e_allocationsTxt2.2} =  P Small-Cap ETF
${e_allocationsTxt3} =  Vanguard High Dividend Yield ETF
${e_allocationsTxt4} =  iShares 20+ Year Treasury Bond ETF
${e_allocationsTxt5} =  iShares 7-10 Year Treasury Bond ETF
${e_allocationsTxt6} =  iShares Gold Trust ETF
# Graph section
${e_max} =  MAX
${e_5y} =  5Y
${e_1y} =  1Y
${e_3m} =  3M
${e_1m} =  1M
${e_1w} =  1W
${e_minus5%} =  -5%
${e_0%} =  0%
${e_5%} =  5%
${e_10%} =  10%
${e_15%} =  15%
${e_20%} =  20%
${e_jun20} =  Jun '20
${e_sep20} =  Sep '20
${e_dec20} =  Dec '20
${e_mar20} =  Mar '21


# Locators

${vf_A_multiAssetClassInfoIcon} =  xpath=//*[@text='']
${vf_A_multiAssetClassCloseIcon} =  xpath=//*[@text='close']
# Moderate
${vf_A_modMeterImg} =  xpath=((//*[@class='android.view.ViewGroup' and ./parent::*[@class='android.widget.HorizontalScrollView']]/*/*[@class='android.view.ViewGroup' and ./parent::*[@class='android.view.ViewGroup']])[1]/*[@class='android.view.ViewGroup'])[1]
${vf_A_modReturnsTxt} =  xpath=//*[@text='Returns' and (./preceding-sibling::* | ./following-sibling::*)[@text='Moderate']]
${vf_A_modVolatilityTxt} =  xpath=//*[@text='Volatility' and (./preceding-sibling::* | ./following-sibling::*)[@text='Moderate']]
${vf_A_modIncomeYieldTxt} =  xpath=//*[@text='Income Yield' and (./preceding-sibling::* | ./following-sibling::*)[@text='Moderate']]
# Aggressive
${vf_A_aggMeterImg} =  xpath=((//*[@class='android.view.ViewGroup' and ./parent::*[@class='android.widget.HorizontalScrollView']]/*/*[@class='android.view.ViewGroup' and ./parent::*[@class='android.view.ViewGroup']])[2]/*[@class='android.view.ViewGroup'])[1]
${vf_A_aggReturnsTxt} =  xpath=//*[@text='Returns' and (./preceding-sibling::* | ./following-sibling::*)[@text='Aggressive']]
${vf_A_aggVolatilityTxt} =  xpath=//*[@text='Volatility' and (./preceding-sibling::* | ./following-sibling::*)[@text='Aggressive']]
${vf_A_aggIncomeYieldTxt} =  xpath=//*[@text='Income Yield' and (./preceding-sibling::* | ./following-sibling::*)[@text='Aggressive']]
# Conservative
${vf_A_conMeterImg} =  xpath=((//*[@class='android.view.ViewGroup' and ./parent::*[@class='android.widget.HorizontalScrollView']]/*/*[@class='android.view.ViewGroup' and ./parent::*[@class='android.view.ViewGroup']])[2]/*[@class='android.view.ViewGroup'])[1]
${vf_A_conReturnsTxt} =  xpath=//*[@text='Returns' and (./preceding-sibling::* | ./following-sibling::*)[@text='Conservative']]
${vf_A_conVolatilityTxt} =  xpath=//*[@text='Volatility' and (./preceding-sibling::* | ./following-sibling::*)[@text='Conservative']]
${vf_A_conIncomeYieldTxt} =  xpath=//*[@text='Income Yield' and (./preceding-sibling::* | ./following-sibling::*)[@text='Conservative']]

# Compare Portfolios
${vf_A_conMeterImgInCompare} =  xpath=//*[@class='android.view.ViewGroup' and (./preceding-sibling::* | ./following-sibling::*)[@text='Conservative'] and ./parent::*[@class='android.view.ViewGroup' and (./preceding-sibling::* | ./following-sibling::*)[./*[@text='Moderate']]]]
${vf_A_modMeterImgInCompare} =  xpath=//*[@class='android.view.ViewGroup' and ./parent::*[@class='android.view.ViewGroup'] and (./preceding-sibling::* | ./following-sibling::*)[@text='Moderate']]
${vf_A_aggMeterImgInCompare} =  xpath=//*[@class='android.view.ViewGroup' and ./parent::*[@class='android.view.ViewGroup'] and (./preceding-sibling::* | ./following-sibling::*)[@text='Aggressive']]
${vf_A_viewUnderModerate} =  xpath=//*[@text='View' and (./preceding-sibling::* | ./following-sibling::*)[@text='Moderate']]
${vf_A_viewUnderAggressive} =  xpath=//*[@text='View' and (./preceding-sibling::* | ./following-sibling::*)[@text='Aggressive']]
${vf_A_1yearReturnsInfo} =  xpath=//*[@text='info_outline' and (./preceding-sibling::* | ./following-sibling::*)[@text='1 Year Returns']]
${vf_A_5yearReturnsInfo} =  xpath=//*[@text='info_outline' and (./preceding-sibling::* | ./following-sibling::*)[@text='5 Year Returns']]
${vf_A_allTimeReturnsInfo} =  xpath=//*[@text='info_outline' and (./preceding-sibling::* | ./following-sibling::*)[@text='All Time Returns']]
${vf_A_volatilityInfo} =  xpath=//*[@text='info_outline' and (./preceding-sibling::* | ./following-sibling::*)[@text='Volatility']]
${vf_A_incomeYieldInfo} =  xpath=//*[@text='info_outline' and (./preceding-sibling::* | ./following-sibling::*)[@text='Income Yield']]