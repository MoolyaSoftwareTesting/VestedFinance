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
${e_1%} =  1%
${e_2%} =  2%
${e_3%} =  3%
${e_4%} =  4%
${e_5%} =  5%
${e_10%} =  10%
${e_15%} =  15%
${e_20%} =  20%
${e_comparing} =  Comparing
${e_vest} =  Vest
${e_vbinx} =  VBINX
${e_vestPerformnceChart} =  Vest Performance Chart
${e_vestPerformnceChartTxt1} =  This chart compares the relative performance of this Vest to Vanguard’s 60:40 stock to bond portfolio (ticker: VBINX). It represents hypothetical results that are based on information over a defined period of time. It attempts to follow a standardized and consistent methodology for performance reporting. The relative performance shown here is based on the adjusted equity price (for splits and dividend) of the relevant ETFs or shares, over the specified time period. As such, it incorporates gains from cash distributions from dividends or bonds, but does not include fees associated with the relevant ETFs.
${e_vestPerformnceChartTxt2} =  The inception date represents the date/time that the allocation for this portfolio was originally decided.
${e_vestPerformnceChartTxt3} =  The performance comparison shown here is for the default Vest that we have created. If you sell the individual constituent of this Vest separately (through the sale of individual shares outside the selling of Vest), your Vest allocations will deviate from the default. Therefore, this performance chart may no longer be representative of your Vest holding.
${e_vestPerformnceChartTxt4} =  While we believe the performance data is gathered from reliable sources, the information that generates charts and performance results uses historical data that has not been audited and validated, and may contain errors in pricing or other conditions. Further, Vested relies on third-party content providers for market data and information as the basis for the calculations it generates. However, Vested cannot be held responsible for the accuracy and timeliness of the content provided. You are responsible for validating the information used to aid you in your research of investments and the decisions you make.
${e_vestPerformnceChartTxt5} =  The contents and data made available on performance charts, any stated index values, and other information is intended for illustrative and informational purposes only and is not intended to represent actual results that could be considered a recommendation of an investment or investment strategy a user could rely on to make an investment decision.
${e_vestPerformnceChartTxt6} =  Past performance is not an indication of future results, and the index performance for any portfolio is subject to fluctuation depending on shifting market conditions.']

# Buy/Sell
${e_sellAggressive} =  Sell Multi-Asset Class - Aggressive
${e_currentInvstmt} =  Current Investment
${e_yourPosition} =  Your Position
${e_currentValue} =  Current Value
${e_currentValueTxt} =  This is the current value of your investment in this Vest. This value fluctuates as the value of the Vest goes up or down over time.
${e_totalInvested} =  Total Invested
${e_totalInvestedTxt} =  This is the amount of funds you have invested in this Vest.
${e_totalReturn} =  Total Return
${e_totalReturnTxt1} =  This summarizes the total lifetime return of the shares or funds invested in the Vest. The total return is calculated using the time-weighted average method (in accordance with the GIPS standard ). This means that the returns are based on the underlying returns of the Vest and exclude the effects of cash flow in and out of the Vest.
${e_totalReturnTxt2} =  The securities that make up a Vest may change over time - certain securities may be removed and replaced with new securities added to a Vest, or the weighting of the security represented within the Vest may change. The return tracks these changes. The calculation of the total return involves the adjustment for corporate actions such as cash dividends, splits, spin-offs, etc.
${e_dividendYield} =  Dividend Yield
${e_dividendYieldTxt} =  This is the percentage of cash distribution you receive when you invest in a Vest. Dividend yield varies; some Vests have large allocations towards bonds or REITs. A 1% dividend yield means that for every US$100 invested in the Vest, you will receive US$1 annually. This is distributed either monthly or quarterly, depending on the distribution dates of the underlying securities within the Vest.
${e_incomeYield} =  Income Yield
${e_superVestAllocations} =  Supervest Allocations
${e_superVestAllocationsTxt} =  This is the default allocation of the Vest. Allocation numbers shown here are rounded to two decimal points and therefore may not sum to 100%
${e_usStock} =  US Stocks
${e_gold} =  Gold
${e_bonds} =  Bonds

# About- Description
${e_aboutAggressive} =  About Multi-Asset Class - Aggressive


# Locators

${vf_A_multiAssetClassInfoIcon} =  xpath=//*[@text='']
${vf_A_multiAssetClassCloseIcon} =  xpath=//*[@text='close']
${vf_A_vbinxInfoIcon} =  xpath=(//*[@class='android.view.ViewGroup' and ./parent::*[@class='android.widget.ScrollView']]/*[@text=''])[1]

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

# Buy/Sell
${vf_A_yourPositionInfoIcon} =  xpath=(//*[@class='android.view.ViewGroup' and ./parent::*[@class='android.widget.ScrollView']]/*[@text='info_outline'])[1]
${vf_A_allocationsInfoIcon} =  xpath=//*[@text='info_outline']