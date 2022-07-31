PRO retrieve_spitzer_spec_2fits
    ;readcol, '../spitzer-spectra-matched.lis', sampleid, objname, aorkey, format='A, A, A', comment='#'

  fitsfile = 'cassis_yaaar_spcfw_10450944t.fits'
  ;fitsfile = 'cassis_yaaar_sptfc_10450944t.fits'
	print, fitsfile
	
	
	image = mrdfits(fitsfile)
	wave = image[0,*]
	flux = image[1,*]
	fluxer = image[2,*]
	order = image[9,*]
	module = image[8,*]

  scal = 1.3
  ii = where(module eq 1)
  flux[ii] = flux[ii]/scal
  fluxer[ii] = fluxer[ii]/scal

  ct = 1
	if ct gt 0 then begin
	    wave1 = reform(wave)
	    flux1 = reform(flux)
	    fluxer1 = reform(fluxer)
	    order1 = reform(order)
	    module1 = reform(module)
      joinaor = '14193920'
	    fitsfile = 'cassis_yaaar_spcfw_'+joinaor+'t.fits'
	    image = mrdfits(fitsfile)
	    wave2 = reform(image[0,*])
	    flux2 = reform(image[1,*])
	    fluxer2 = reform(image[2,*])
      order2 = reform(image[9,*])
      module2 = reform(image[8,*])

       ;pp = where(order2 eq 1 and module2 eq 0 and wave2 lt 15)
       ;remove, pp, wave2, flux2, fluxer2, order2, module2


	    flux = [flux1, flux2]
	    fluxer = [fluxer1, fluxer2]
	    wave = [wave1, wave2]
	    order = [order1, order2]
	    module = [module1, module2]
	endif
	ii = sort(wave)
	wave = wave[ii]
	flux = flux[ii]
	fluxer = fluxer[ii]
	order = order[ii]
	module = module[ii]
	; make some scaling
	g1 = where(wave ge 13.8 and wave lt 14.0)
	g2 = where(wave ge 14.0 and wave lt 14.2)
	f1 = mean(flux[g1])
	f2 = mean(flux[g2])
	ii = where(wave lt 14.0)
	flux[ii] = flux[ii]*f2/f1

	forprint, text = 'PG1126-041_spitzer_obs.dat', wave, flux, fluxer, module, order, format='F, F, F, I, I', comment='#'
END
