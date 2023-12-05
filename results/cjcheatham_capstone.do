// Setting working directory, creating log, and importing data
cd "C:\Users\cjche\OneDrive\Capstone Project"
log using "C:\Users\cjche\OneDrive\Capstone Project\results\cjcheatham_log1.smcl"
import excel "C:\Users\cjche\OneDrive\Capstone Project\data\working data set\cjcheatham_working_data.xlsx", sheet("Data") firstrow

gen n2o_per_cap = n2o/pop
gen so2_per_cap = so2/pop

summarize gdp_per_cap gdp_per_cap_sq nx_gdp lndarea_per_cap
correlate gdp_per_cap gdp_per_cap_sq nx_gdp lndarea_per_cap polity ocean

// CO2 Per Capita
reg co2 gdp_per_cap gdp_per_cap_sq nx_gdp polity lndarea_per_cap ocean
correlate co2 gdp_per_cap gdp_per_cap_sq nx_gdp polity lndarea_per_cap ocean
rvfplot

reg co2_per_cap gdp_per_cap gdp_per_cap_sq nx_gdp polity lndarea_per_cap ocean
correlate co2_per_cap gdp_per_cap gdp_per_cap_sq nx_gdp polity lndarea_per_cap ocean
rvfplot
 
// N2O
reg n2o gdp_per_cap gdp_per_cap_sq nx_gdp lndarea_per_cap polity ocean
correlate n2o gdp_per_cap gdp_per_cap_sq nx_gdp lndarea_per_cap polity ocean
rvfplot

reg n2o_per_cap gdp_per_cap gdp_per_cap_sq nx_gdp lndarea_per_cap polity ocean
correlate n2o_per_cap gdp_per_cap gdp_per_cap_sq nx_gdp lndarea_per_cap polity ocean
rvfplot

// SO2
reg so2 gdp_per_cap gdp_per_cap_sq nx_gdp lndarea_per_cap polity ocean
correlate so2 gdp_per_cap gdp_per_cap_sq nx_gdp lndarea_per_cap polity ocean
rvfplot

reg so2_per_cap gdp_per_cap gdp_per_cap_sq nx_gdp lndarea_per_cap polity ocean
correlate so2_per_cap gdp_per_cap gdp_per_cap_sq nx_gdp lndarea_per_cap polity ocean
rvfplot

// Ending analysis
log close
