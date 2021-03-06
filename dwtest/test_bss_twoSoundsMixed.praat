# bss_twoSoundsMixed.praat
# test_bss_example_manual.praat
# djmw 20151030

Erase all

synth = Create SpeechSynthesizer: "English", "default"
s1 = To Sound: "This is some text.", "no"
selectObject: synth
selectObject: "SpeechSynthesizer English_default"
Set speech output settings: 44100, 0.01, 80, 50, 145, "no", "IPA"

s2 =To Sound: "abracadabra, abra", "no"
plusObject: s1
stereo = Combine to stereo
Select inner viewport: 1, 6, 0.1, 1.9
Draw: 0, 0, 0, 0, "no", "Curve"
Draw inner box
mm = Create simple MixingMatrix: "mm", 2, 2, "1.0 2.0 2.0 1.0"
plus stereo
mixed = Mix
Select inner viewport: 1, 6, 2.1, 3.9
Draw: 0, 0, 0, 0, "no", "Curve"
Draw inner box

unmixed = To Sound (bss): 0.1, 1, 20, 0.00021, 100, 0.001, "ffdiag"
Select inner viewport: 1, 6, 4.1, 5.9
Draw: 0, 0, 0, 0, "no", "Curve"
Draw inner box

removeObject: synth, stereo, s1, s2, mixed, mm, unmixed
