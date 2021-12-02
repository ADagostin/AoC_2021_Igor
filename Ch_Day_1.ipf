#pragma TextEncoding = "UTF-8"
#pragma rtGlobals=3		// Use modern global access method and strict wave access.

Function Challenge_1a()
Wave Measurements //Values from the challenge
Variable i
Make/o/n=(numpnts(Measurements)) Output=0 //where the results are gonna be stored
for (i=1;i<numpnts(Measurements);i+=1)	
	if (Measurements[i]>Measurements[i-1])
		Output[i]=1
	endif
endfor
print sum(output)
end

function Challenge_1b(out) // VEry short version
variable out
wave Measurements, Output
Output[out]=Measurements[out]>Measurements[out-1]?1:0
return out==1?1:out*t1(out-1)
end

//*******************************************

Function Challenge_2()
Wave Measurements
Variable i, j
Make/o/n=(numpnts(Measurements)) Output=0
for (i=1;i<numpnts(Measurements);i+=1)
	if (sum(Measurements,i,i+2)>sum(Measurements,i-1,i+1))
		Output[i]=1
	endif
endfor
print sum(output)
end

//*******************************************
