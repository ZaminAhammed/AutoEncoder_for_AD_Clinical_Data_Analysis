set.seed(123)

n1 <- 908
n2 <- 896
N <- n1+n2

sim_ad_data <- data.frame(
  PatientID = c(1:N),
  Drug = c(rep("Solanezumab",n1),rep("Placebo",n2)),
  ADAS_Cog14 = c(rnorm(n1,6.65,0.355),rnorm(n2,7.44,0.356)),
  ADCS_iADL = c(rnorm(n1,-6.17,0.318), rnorm(n2,-7.17,0.320)),
  ADAS_Cog11 = c(rnorm(n1,5.22,0.284),rnorm(n2,5.90,0.285)),
  MMSE = c(rnorm(n1,-3.17,0.154), rnorm(n2,-3.66,0.156)),
  ADCS_ADL = c(rnorm(n1,-7.42,0.386), rnorm(n2,-8.77,0.387)),
  FAQ = c(rnorm(n1,5.17,0.212),rnorm(n2,5.57,0.213)),
  CDR_SB = c(rnorm(n1,1.91,2.442), rnorm(n2,2.23,2.692)),
  NPI = c(rnorm(n1,2.26,3.11), rnorm(n2,0.382,0.387)),
  RUD_Lite = c(rnorm(n1,0.91,0.132), rnorm(n2,0.86,0.134)),
  QoL_AD = c(rnorm(n1,-0.55,0.158), rnorm(n2,-0.72,0.161)),
  EQ_5D = c(rnorm(n1,-1.1,0.556), rnorm(n2,-2.61,0.562)),
  iADRS = c(rnorm(n1, -12.92,0.533), rnorm(n2,-14.59,0.537)),
  Plasma_A_Beta_1_40 = c(rnorm(n1,172754.36,1613.534), rnorm(n2,262.98,1609.006)),
  Plasma_A_Beta_1_42 = c(rnorm(n1,18485.26,104.913), rnorm(n2,15.75,105.237)),
  vMRI_Right_HP = c(rnorm(n1,-145.7,75.42),rnorm(n2,-154.1,81.06)),
  vMRI_Left_HP = c(rnorm(n1,-142.3,74.27),rnorm(n2,-146.3,78.04)),
  vMRI_Entorhinal = c(rnorm(n1,-169,79.65), rnorm(n2, -176,86.11)),
  vMRI_Whole_Brain = c(rnorm(n1,-22725.6,11920.78), rnorm(n2,-23500.5,12000.09)),
  CSF_free_AB_1_40 = c(rnorm(n1,-714.60,177.828), rnorm(n2,-319.97,182.519)),
  CSF_free_AB_1_42 = c(rnorm(n1,-37.33,7.507), rnorm(n2,-9.27,8.175)),
  CSF_modified_AB_1_40 = c(rnorm(n1,1093.81,624.059), rnorm(n2,-2336.68,637.126)),
  CSF_modified_AB_1_42 = c(rnorm(n1,315.69,42.620), rnorm(n2,-107.91,42.907))
)

write.csv(sim_ad_data, "Simulated_AD_data.csv")
