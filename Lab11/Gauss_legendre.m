function integral=Gauss_legendre(n)
func=@(x) 1./(1+sin(x).^2);
if n==2
    wp=[1	1.0000000000000000	-0.5773502691896257
2	1.0000000000000000	0.5773502691896257];
elseif n==4
    wp=[1	0.6521451548625461	-0.3399810435848563
2	0.6521451548625461	0.3399810435848563
3	0.3478548451374538	-0.8611363115940526
4	0.3478548451374538	0.8611363115940526];
elseif n==8
    wp=[1	0.3626837833783620	-0.1834346424956498
2	0.3626837833783620	0.1834346424956498
3	0.3137066458778873	-0.5255324099163290
4	0.3137066458778873	0.5255324099163290
5	0.2223810344533745	-0.7966664774136267
6	0.2223810344533745	0.7966664774136267
7	0.1012285362903763	-0.9602898564975363
8	0.1012285362903763	0.9602898564975363];
elseif n==16
    wp=[1	0.1894506104550685	-0.0950125098376374
2	0.1894506104550685	0.0950125098376374
3	0.1826034150449236	-0.2816035507792589
4	0.1826034150449236	0.2816035507792589
5	0.1691565193950025	-0.4580167776572274
6	0.1691565193950025	0.4580167776572274
7	0.1495959888165767	-0.6178762444026438
8	0.1495959888165767	0.6178762444026438
9	0.1246289712555339	-0.7554044083550030
10	0.1246289712555339	0.7554044083550030
11	0.0951585116824928	-0.8656312023878318
12	0.0951585116824928	0.8656312023878318
13	0.0622535239386479	-0.9445750230732326
14	0.0622535239386479	0.9445750230732326
15	0.0271524594117541	-0.9894009349916499
16	0.0271524594117541	0.9894009349916499];
elseif n==32
    wp=[1	0.0965400885147278	-0.0483076656877383
2	0.0965400885147278	0.0483076656877383
3	0.0956387200792749	-0.1444719615827965
4	0.0956387200792749	0.1444719615827965
5	0.0938443990808046	-0.2392873622521371
6	0.0938443990808046	0.2392873622521371
7	0.0911738786957639	-0.3318686022821277
8	0.0911738786957639	0.3318686022821277
9	0.0876520930044038	-0.4213512761306353
10	0.0876520930044038	0.4213512761306353
11	0.0833119242269467	-0.5068999089322294
12	0.0833119242269467	0.5068999089322294
13	0.0781938957870703	-0.5877157572407623
14	0.0781938957870703	0.5877157572407623
15	0.0723457941088485	-0.6630442669302152
16	0.0723457941088485	0.6630442669302152
17	0.0658222227763618	-0.7321821187402897
18	0.0658222227763618	0.7321821187402897
19	0.0586840934785355	-0.7944837959679424
20	0.0586840934785355	0.7944837959679424
21	0.0509980592623762	-0.8493676137325700
22	0.0509980592623762	0.8493676137325700
23	0.0428358980222267	-0.8963211557660521
24	0.0428358980222267	0.8963211557660521
25	0.0342738629130214	-0.9349060759377397
26	0.0342738629130214	0.9349060759377397
27	0.0253920653092621	-0.9647622555875064
28	0.0253920653092621	0.9647622555875064
29	0.0162743947309057	-0.9856115115452684
30	0.0162743947309057	0.9856115115452684
31	0.0070186100094701	-0.9972638618494816
32	0.0070186100094701	0.9972638618494816];
elseif n==64
    wp=[1	0.0486909570091397	-0.0243502926634244
2	0.0486909570091397	0.0243502926634244
3	0.0485754674415034	-0.0729931217877990
4	0.0485754674415034	0.0729931217877990
5	0.0483447622348030	-0.1214628192961206
6	0.0483447622348030	0.1214628192961206
7	0.0479993885964583	-0.1696444204239928
8	0.0479993885964583	0.1696444204239928
9	0.0475401657148303	-0.2174236437400071
10	0.0475401657148303	0.2174236437400071
11	0.0469681828162100	-0.2646871622087674
12	0.0469681828162100	0.2646871622087674
13	0.0462847965813144	-0.3113228719902110
14	0.0462847965813144	0.3113228719902110
15	0.0454916279274181	-0.3572201583376681
16	0.0454916279274181	0.3572201583376681
17	0.0445905581637566	-0.4022701579639916
18	0.0445905581637566	0.4022701579639916
19	0.0435837245293235	-0.4463660172534641
20	0.0435837245293235	0.4463660172534641
21	0.0424735151236536	-0.4894031457070530
22	0.0424735151236536	0.4894031457070530
23	0.0412625632426235	-0.5312794640198946
24	0.0412625632426235	0.5312794640198946
25	0.0399537411327203	-0.5718956462026340
26	0.0399537411327203	0.5718956462026340
27	0.0385501531786156	-0.6111553551723933
28	0.0385501531786156	0.6111553551723933
29	0.0370551285402400	-0.6489654712546573
30	0.0370551285402400	0.6489654712546573
31	0.0354722132568824	-0.6852363130542333
32	0.0354722132568824	0.6852363130542333
33	0.0338051618371416	-0.7198818501716109
34	0.0338051618371416	0.7198818501716109
35	0.0320579283548516	-0.7528199072605319
36	0.0320579283548516	0.7528199072605319
37	0.0302346570724025	-0.7839723589433414
38	0.0302346570724025	0.7839723589433414
39	0.0283396726142595	-0.8132653151227975
40	0.0283396726142595	0.8132653151227975
41	0.0263774697150547	-0.8406292962525803
42	0.0263774697150547	0.8406292962525803
43	0.0243527025687109	-0.8659993981540928
44	0.0243527025687109	0.8659993981540928
45	0.0222701738083833	-0.8893154459951141
46	0.0222701738083833	0.8893154459951141
47	0.0201348231535302	-0.9105221370785028
48	0.0201348231535302	0.9105221370785028
49	0.0179517157756973	-0.9295691721319396
50	0.0179517157756973	0.9295691721319396
51	0.0157260304760247	-0.9464113748584028
52	0.0157260304760247	0.9464113748584028
53	0.0134630478967186	-0.9610087996520538
54	0.0134630478967186	0.9610087996520538
55	0.0111681394601311	-0.9733268277899110
56	0.0111681394601311	0.9733268277899110
57	0.0088467598263639	-0.9833362538846260
58	0.0088467598263639	0.9833362538846260
59	0.0065044579689784	-0.9910133714767443
60	0.0065044579689784	0.9910133714767443
61	0.0041470332605625	-0.9963401167719553
62	0.0041470332605625	0.9963401167719553
63	0.0017832807216964	-0.9993050417357722
64	0.0017832807216964	0.9993050417357722];
end
w=wp(:,2)*(pi)/2;
p=wp(:,3)*pi/2+pi/2;
integral = sum(w.*func(p));
end