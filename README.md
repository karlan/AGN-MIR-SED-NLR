# AGN-MIR-SED-NLR

Sample and data files used for Lyu & Rieke (2022), ApJL submitted


 AGN_Spitzer/    --- information of the Polomar-Green sample and SDSS-Spitzer AGN sample

     type1_agn_master_sed.dat     --- SED flux 
     type1_agn_sdss_spitzer_master.dat   --- basic information of the sample
     type1_master_irs_mask.dat   --- quality check of the Spitzer/IRS spectrum and the corresponding host subtraction
     type1_master_irs_wise34.dat  --- synthetic WISE W3, W4 flux from the mid-IR spectrum
     type1_master_opt_line.dat  --- optical emission line properties of the sample

     type1_o4_irs_mask.dat  --- mid-IR spectrum quality check for AGN sample with mid-IR OIV measurements
     type1_o4_irs_wise34.dat  --- synthetic WISE W3, W4 flux from the mid-IR spectrum
     type1_o4_measurement_plot.dat  --- data file for AGN sample with mid-IR OIV measurements
     
     irs_spec_archive/       ---  directory for observed mid-IR spectra
         
         [objname]_spitzer_obs.dat     --- spitzer/IRS spectra of each object. Columns are wavelength (microns), flux (Jansky), eflux (Jansky). All in the observed frame
        
     irs_gal_sub_v0/         --- mid-IR continuum with host galaxy removed
         
         [objname]_ob_galsub.dat    ---  mid-IR spectra with host galaxy removed. Columns are lambda (microns), flux_tot (Jansky), eflux_tot (Jansky), flux_AGN (Jansky), flux_SF (Jansky)  


 good_sdss_quasars/    --- information of SDSS quasar sample
 
     good_quasar_sed.dat        --- SED information of the SDSS quasar sample
                                  columns are:    objname  -- object name
                                                  p    -- index in the parent SDSS DR7 quasar catalog from Shen+11 (http://quasar.astro.illinois.edu/BH_mass/dr7.htm)
                                                  u, g, r, i, z, j, h, k, w1, w2, w3, w4   -- optical to mid-IR flux (unit:mJy) in the observed frame

     good_quasar_property.dat   --- SDSS quasar information, 
                                 columns are:     objname  -- object name
                                                  p  -- index in the parent SDSS DR7 quasar catalog from Shen+11 (http://quasar.astro.illinois.edu/BH_mass/dr7.htm) 
                                                  redshift   -- redshift 
                                                  EW(H-beta) -- H-beta equivalent width (unit: Angstroms)
                                                  EW(OIII)   --  OIII equivalent width (unit: Angstroms)
                                                  L_{AGN, bol} -- AGN bolometric luminosity ( unit: log10(L/(erg/s)) )
                                                  L_{H-beta}  -- H-beta line luminosity ( unit: log10(L/(erg/s)) )
                                                  L_{OIII}   -- OIII line luminosity  ( unit: log10(L/(erg/s)) )
                                                  L_{5-25 microns}   -- total mid-IR luminosity at rest-frame 5--25 micron (unit: log10(L/L_sun)) ;
                                                  L_{excess, 5-25 microns}  -- excess mid-IR luminosity at rest-frame 5--25 micron after subtracing a WDD template (unit: log10(L/L_sun))

     
 
 templates/    ---- AGN templates reported in the paper

     templates_bin_oiv.dat   --- median AGN templates binned by L_{OIV}/L_{W2} 
     templates_bin_oiii.dat  --- median AGN templates binned by EW(OIII)/EW(H-beta)

 README.md
