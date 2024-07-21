RECSYS=LM-WSR-UB CHI2 Pop NNCosNgbr-IB PureSVD RM2 UIR KLD PLSA NNCosNgbr-UB WRMF SLIM BPRMF SVD RW HT RM1 Random LM-WSR-IB RSV LDA 
RECSYS_CORPORA=beerAdvocate libraryThing ml-1M
RECSYS_TARGETS=$(foreach X,$(RECSYS_CORPORA),$(foreach Y,$(RECSYS),$X/2018/input.$Y.gz))
IR_TARGETS=robust deep-docs deep-pass core legal web
.PHONY: $(IR_TARGETS) 

all: $(IR_TARGETS) $(RECSYS_TARGETS)

web:
	mkdir -p web/2009; cd web/2009; wget -q --user=${TREC_RESULTS_USER} --password=${TREC_RESULTS_PASSWORD} -i ../../src/web/2009.txt
	mkdir -p web/2010; cd web/2010; wget -q --user=${TREC_RESULTS_USER} --password=${TREC_RESULTS_PASSWORD} -i ../../src/web/2010.txt
	mkdir -p web/2011; cd web/2011; wget -q --user=${TREC_RESULTS_USER} --password=${TREC_RESULTS_PASSWORD} -i ../../src/web/2011.txt
	mkdir -p web/2012; cd web/2012; wget -q --user=${TREC_RESULTS_USER} --password=${TREC_RESULTS_PASSWORD} -i ../../src/web/2012.txt
	mkdir -p web/2013; cd web/2013; wget -q --user=${TREC_RESULTS_USER} --password=${TREC_RESULTS_PASSWORD} -i ../../src/web/2013.txt
	mkdir -p web/2014; cd web/2014; wget -q --user=${TREC_RESULTS_USER} --password=${TREC_RESULTS_PASSWORD} -i ../../src/web/2014.txt

robust:
	mkdir -p robust/2004; cd robust/2004; wget -q --user=${TREC_RESULTS_USER} --password=${TREC_RESULTS_PASSWORD} -i ../../src/robust/2004.txt

core:
	mkdir -p core/2017; cd core/2017; wget -q --user=${TREC_RESULTS_USER} --password=${TREC_RESULTS_PASSWORD} -i ../../src/core/2017.txt
	mkdir -p core/2018; cd core/2018; wget -q --user=${TREC_RESULTS_USER} --password=${TREC_RESULTS_PASSWORD} -i ../../src/core/2018.txt

deep-docs: 
	mkdir -p deep-docs/2019; cd deep-docs/2019; wget -q --user=${TREC_RESULTS_USER} --password=${TREC_RESULTS_PASSWORD} -i ../../src/deep-docs/2019.txt
	mkdir -p deep-docs/2020; cd deep-docs/2020; wget -q --user=${TREC_RESULTS_USER} --password=${TREC_RESULTS_PASSWORD} -i ../../src/deep-docs/2020.txt
	mkdir -p deep-docs/2021; cd deep-docs/2021; wget -q --user=${TREC_RESULTS_USER} --password=${TREC_RESULTS_PASSWORD} -i ../../src/deep-docs/2021.txt
	mkdir -p deep-docs/2022; cd deep-docs/2022; wget -q --user=${TREC_RESULTS_USER} --password=${TREC_RESULTS_PASSWORD} -i ../../src/deep-docs/2022.txt
	mkdir -p deep-docs/2023; cd deep-docs/2023; wget -q --user=${TREC_RESULTS_USER} --password=${TREC_RESULTS_PASSWORD} -i ../../src/deep-docs/2023.txt

deep-pass: 
	mkdir -p deep-pass/2019; cd deep-pass/2019; wget -q --user=${TREC_RESULTS_USER} --password=${TREC_RESULTS_PASSWORD} -i ../../src/deep-pass/2019.txt
	mkdir -p deep-pass/2020; cd deep-pass/2020; wget -q --user=${TREC_RESULTS_USER} --password=${TREC_RESULTS_PASSWORD} -i ../../src/deep-pass/2020.txt
	mkdir -p deep-pass/2021; cd deep-pass/2021; wget -q --user=${TREC_RESULTS_USER} --password=${TREC_RESULTS_PASSWORD} -i ../../src/deep-pass/2021.txt
	mkdir -p deep-pass/2022; cd deep-pass/2022; wget -q --user=${TREC_RESULTS_USER} --password=${TREC_RESULTS_PASSWORD} -i ../../src/deep-pass/2022.txt
	mkdir -p deep-pass/2023; cd deep-pass/2023; wget -q --user=${TREC_RESULTS_USER} --password=${TREC_RESULTS_PASSWORD} -i ../../src/deep-pass/2023.txt
	
legal:
	mkdir -p legal/2006; cd legal/2006; wget -q --user=${TREC_RESULTS_USER} --password=${TREC_RESULTS_PASSWORD} -i ../../src/legal/2006.txt
	mkdir -p legal/2007; 	cd legal/2007; wget -q --user=${TREC_RESULTS_USER} --password=${TREC_RESULTS_PASSWORD} -i ../../src/legal/2007.txt

beerAdvocate/2018/input.%.gz:
	mkdir -p beerAdvocate/2018
	curl -s -L -o $@ https://github.com/dvalcarce/evalMetrics/raw/master/runs/runs-beerAdvocate/run-$*-beerAdvocate-fold1.txt.gz

libraryThing/2018/input.%.gz:
	mkdir -p libraryThing/2018
	curl -s -L -o $@ https://github.com/dvalcarce/evalMetrics/raw/master/runs/runs-libraryThing/run-$*-libraryThing-fold1.txt.gz

ml-1M/2018/input.%.gz:
	mkdir -p ml-1M/2018
	curl -s -L -o $@ https://github.com/dvalcarce/evalMetrics/raw/master/runs/runs-ml-1M/run-$*-ml-1M-fold1.txt.gz


clean: 
	rm -Rf $(IR_TARGETS)
	rm -Rf $(RECSYS_CORPORA)