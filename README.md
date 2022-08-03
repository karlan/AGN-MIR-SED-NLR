# AGN-MIR-SED-NLR

Sample and data files used for Lyu & Rieke (2022), ApJL submitted


 AGN_Spitzer/    --- information of the Polomar-Green sample and SDSS-Spitzer AGN sample

     type1_agn_master_sed.dat
     type1_agn_master_sed_irsub.dat
     type1_agn_sdss_spitzer_master.dat
     type1_master_irs_mask.dat
     type1_master_irs_subtag.dat
     type1_master_irs_wise34.dat
     type1_master_opt_line.dat
     type1_o4_data1_plot.dat
     type1_o4_data2_plot.dat
     type1_o4_irs_mask.dat
     type1_o4_lum.dat
     
     irs_spec_archive/       ---  directory for observed mid-IR spectra
         
         [objname]_spitzer_obs.dat     --- spitzer/IRS spectra of each object. Columns are wavelength (microns), flux (Jansky), eflux (Jansky). All in the observed frame
        
     irs_gal_sub_v0/         --- mid-IR continuum with host galaxy removed
         
         [objname]_ob_galsub.dat    ---  mid-IR pectra with host galaxy removed. Columns are lambda (microns), flux_tot (Jansky), eflux_tot (Jansky), flux_AGN (Jansky), flux_SF (Jansky)  


 good_sdss_quasars/    --- information of SDSS quasar sample
 
     good_quasar_sed.dat
     good_quasar_property.dat
     good_quasar_lum.dat
 
 templates/    ---- AGN templates reported in the paper

     templates_bin_oiv.dat   --- median AGN templates binned by L_{OIV}/L_{W2} 
     templates_bin_oiii.dat  --- median AGN templates binned by EW(OIII)/EW(H-beta)

 README.md
