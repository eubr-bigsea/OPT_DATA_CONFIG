-- DAG definition: it is encoded as an array of stages.
Stages = {{ name="S11", tasks="120", distr={type="empirical", params={samples=solver.fileToArray("/home/work/LogBR/4_2_4G_5/bulma_br/empirical/S11.txt")}}, pre={"S10"}, post={"S12","S13"}},{ name="S10", tasks="240", distr={type="empirical", params={samples=solver.fileToArray("/home/work/LogBR/4_2_4G_5/bulma_br/empirical/S10.txt")}}, pre={"S8","S9"}, post={"S11"}},{ name="S13", tasks="120", distr={type="empirical", params={samples=solver.fileToArray("/home/work/LogBR/4_2_4G_5/bulma_br/empirical/S13.txt")}}, pre={"S11"}, post={"S14"}},{ name="S12", tasks="120", distr={type="empirical", params={samples=solver.fileToArray("/home/work/LogBR/4_2_4G_5/bulma_br/empirical/S12.txt")}}, pre={"S11"}, post={"S14"}},{ name="S15", tasks="120", distr={type="empirical", params={samples=solver.fileToArray("/home/work/LogBR/4_2_4G_5/bulma_br/empirical/S15.txt")}}, pre={"S14"}, post={"S16","S17"}},{ name="S14", tasks="240", distr={type="empirical", params={samples=solver.fileToArray("/home/work/LogBR/4_2_4G_5/bulma_br/empirical/S14.txt")}}, pre={"S12","S13"}, post={"S15"}},{ name="S17", tasks="120", distr={type="empirical", params={samples=solver.fileToArray("/home/work/LogBR/4_2_4G_5/bulma_br/empirical/S17.txt")}}, pre={"S15"}, post={"S18"}},{ name="S16", tasks="120", distr={type="empirical", params={samples=solver.fileToArray("/home/work/LogBR/4_2_4G_5/bulma_br/empirical/S16.txt")}}, pre={"S15"}, post={"S18"}},{ name="S19", tasks="120", distr={type="empirical", params={samples=solver.fileToArray("/home/work/LogBR/4_2_4G_5/bulma_br/empirical/S19.txt")}}, pre={"S18"}, post={}},{ name="S18", tasks="240", distr={type="empirical", params={samples=solver.fileToArray("/home/work/LogBR/4_2_4G_5/bulma_br/empirical/S18.txt")}}, pre={"S16","S17"}, post={"S19"}},{ name="S1", tasks="120", distr={type="empirical", params={samples=solver.fileToArray("/home/work/LogBR/4_2_4G_5/bulma_br/empirical/S1.txt")}}, pre={}, post={"S2"}},{ name="S0", tasks="120", distr={type="empirical", params={samples=solver.fileToArray("/home/work/LogBR/4_2_4G_5/bulma_br/empirical/S0.txt")}}, pre={}, post={"S2"}},{ name="S3", tasks="120", distr={type="empirical", params={samples=solver.fileToArray("/home/work/LogBR/4_2_4G_5/bulma_br/empirical/S3.txt")}}, pre={"S2"}, post={"S5","S4"}},{ name="S2", tasks="240", distr={type="empirical", params={samples=solver.fileToArray("/home/work/LogBR/4_2_4G_5/bulma_br/empirical/S2.txt")}}, pre={"S0","S1"}, post={"S3"}},{ name="S5", tasks="120", distr={type="empirical", params={samples=solver.fileToArray("/home/work/LogBR/4_2_4G_5/bulma_br/empirical/S5.txt")}}, pre={"S3"}, post={"S6"}},{ name="S4", tasks="120", distr={type="empirical", params={samples=solver.fileToArray("/home/work/LogBR/4_2_4G_5/bulma_br/empirical/S4.txt")}}, pre={"S3"}, post={"S6"}},{ name="S7", tasks="120", distr={type="empirical", params={samples=solver.fileToArray("/home/work/LogBR/4_2_4G_5/bulma_br/empirical/S7.txt")}}, pre={"S6"}, post={"S9","S8"}},{ name="S6", tasks="240", distr={type="empirical", params={samples=solver.fileToArray("/home/work/LogBR/4_2_4G_5/bulma_br/empirical/S6.txt")}}, pre={"S4","S5"}, post={"S7"}},{ name="S9", tasks="120", distr={type="empirical", params={samples=solver.fileToArray("/home/work/LogBR/4_2_4G_5/bulma_br/empirical/S9.txt")}}, pre={"S7"}, post={"S10"}},{ name="S8", tasks="120", distr={type="empirical", params={samples=solver.fileToArray("/home/work/LogBR/4_2_4G_5/bulma_br/empirical/S8.txt")}}, pre={"S7"}, post={"S10"}}};

-- Number of computation nodes in the system
Nodes = 8;

-- Number of users accessing the system
Users = 1;

-- Distribution of the think time for the users
UThinkTimeDistr = {type = "exp", params = {rate = 0.001}};

-- Total number of jobs to simulate
maxJobs = 1000;

-- Coefficient for the Confidence Intervals
confIntCoeff = 1.96;
