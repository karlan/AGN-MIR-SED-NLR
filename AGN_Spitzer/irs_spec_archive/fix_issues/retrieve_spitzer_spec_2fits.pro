PRO retrieve_spitzer_spec_2fits
    ;readcol, '../spitzer-spectra-matched.lis', sampleid, objname, aorkey, format='A, A, A', comment='#'
    readcol, '../spitzer-spectra-new.lis', objname, sampleid, aorkey, format='X, A, A, X, X, A', comment='#'
    nn = n_elements(sampleid)

    ;joinid = [1, 5, 6, 14,15, 17]
    ;joinid = [1, 11, 15, 16, 20, 27, 28, 29]
    ; 2016-08-22 you need to comment out both HDD and WDD quasars
    joinid = [1,5,6,11,19,23,33,37,39,50]
    for i=0, nn-1 do begin
        fitsfile = 'cassis_yaaar_spcfw_'+aorkey[i]+'t.fits'
	print, fitsfile
	getnum, sampleid[i], num
	sample_id = 'pg2mass-'+strcompress(string(long(num[0])),/remove_all)
	
	
	image = mrdfits(fitsfile)
	wave = image[0,*]
	flux = image[1,*]
	fluxer = image[2,*]
	order = image[9,*]
	module = image[8,*]

	join_tag = where(joinid eq i, ct)
	if ct gt 0 then begin
	    wave1 = reform(wave)
	    flux1 = reform(flux)
	    fluxer1 = reform(fluxer)
	    order1 = reform(order)
	    module1 = reform(module)
	    joinaor = ''
	    print, sampleid[i], '   '+aorkey[i]
	    read,joinaor, 'input aorkey to join'
	    fitsfile = 'cassis_yaaar_spcfw_'+joinaor+'t.fits'
	    image = mrdfits(fitsfile)
	    wave2 = reform(image[0,*])
	    flux2 = reform(image[1,*])
	    fluxer2 = reform(image[2,*])
            order2 = reform(image[9,*])
            module2 = reform(image[8,*])



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

	forprint, text = 'norm_qso.'+sample_id+'-spitzer.comp.dat', wave, flux, fluxer, module, order, format='F, F, F, I, I', comment='#'+ objname[i] +'   ' +sampleid[i]
    endfor
END
