-- DAG definition: it is encoded as an array of stages.
Stages = {{ name="S11", tasks="120", distr={type="replay", params={samples=solver.fileToArray("/home/work/LogBR/12_2_4G_5/bulma_br/logs/app-20180312213254-0002_csv/S11.txt")}}, pre={"S10"}, post={"S12","S13"}},{ name="S10", tasks="240", distr={type="replay", params={samples=solver.fileToArray("/home/work/LogBS/12_2_4G_5/bulma_br/logs/app-20180312213254-0002_csv/S10.txt")}}, pre={"S8","S9"}, post={"S11"}},{ name="S13", tasks="120", distr={type="replay", params={samples=solver.fileToArray("/home/work/LogBS/12_2_4G_5/bulma_br/logs/app-20180312213254-0002_csv/S13.txt")}}, pre={"S11"}, post={"S14"}},{ name="S12", tasks="120", distr={type="replay", params={samples=solver.fileToArray("/home/work/LogBS/12_2_4G_5/bulma_br/logs/app-20180312213254-0002_csv/S12.txt")}}, pre={"S11"}, post={"S14"}},{ name="S15", tasks="120", distr={type="replay", params={samples=solver.fileToArray("/home/work/LogBS/12_2_4G_5/bulma_br/logs/app-20180312213254-0002_csv/S15.txt")}}, pre={"S14"}, post={"S16","S17"}},{ name="S14", tasks="240", distr={type="replay", params={samples=solver.fileToArray("/home/work/LogBS/12_2_4G_5/bulma_br/logs/app-20180312213254-0002_csv/S14.txt")}}, pre={"S12","S13"}, post={"S15"}},{ name="S17", tasks="120", distr={type="replay", params={samples=solver.fileToArray("/home/work/LogBS/12_2_4G_5/bulma_br/logs/app-20180312213254-0002_csv/S17.txt")}}, pre={"S15"}, post={"S18"}},{ name="S16", tasks="120", distr={type="replay", params={samples=solver.fileToArray("/home/work/LogBS/12_2_4G_5/bulma_br/logs/app-20180312213254-0002_csv/S16.txt")}}, pre={"S15"}, post={"S18"}},{ name="S19", tasks="120", distr={type="replay", params={samples=solver.fileToArray("/home/work/LogBS/12_2_4G_5/bulma_br/logs/app-20180312213254-0002_csv/S19.txt")}}, pre={"S18"}, post={}},{ name="S18", tasks="240", distr={type="replay", params={samples=solver.fileToArray("/home/work/LogBS/12_2_4G_5/bulma_br/logs/app-20180312213254-0002_csv/S18.txt")}}, pre={"S16","S17"}, post={"S19"}},{ name="S1", tasks="120", distr={type="replay", params={samples=solver.fileToArray("/home/work/LogBS/12_2_4G_5/bulma_br/logs/app-20180312213254-0002_csv/S1.txt")}}, pre={}, post={"S2"}},{ name="S0", tasks="120", distr={type="replay", params={samples=solver.fileToArray("/home/work/LogBS/12_2_4G_5/bulma_br/logs/app-20180312213254-0002_csv/S0.txt")}}, pre={}, post={"S2"}},{ name="S3", tasks="120", distr={type="replay", params={samples=solver.fileToArray("/home/work/LogBS/12_2_4G_5/bulma_br/logs/app-20180312213254-0002_csv/S3.txt")}}, pre={"S2"}, post={"S5","S4"}},{ name="S2", tasks="240", distr={type="replay", params={samples=solver.fileToArray("/home/work/LogBS/12_2_4G_5/bulma_br/logs/app-20180312213254-0002_csv/S2.txt")}}, pre={"S0","S1"}, post={"S3"}},{ name="S5", tasks="120", distr={type="replay", params={samples=solver.fileToArray("/home/work/LogBS/12_2_4G_5/bulma_br/logs/app-20180312213254-0002_csv/S5.txt")}}, pre={"S3"}, post={"S6"}},{ name="S4", tasks="120", distr={type="replay", params={samples=solver.fileToArray("/home/work/LogBS/12_2_4G_5/bulma_br/logs/app-20180312213254-0002_csv/S4.txt")}}, pre={"S3"}, post={"S6"}},{ name="S7", tasks="120", distr={type="replay", params={samples=solver.fileToArray("/home/work/LogBS/12_2_4G_5/bulma_br/logs/app-20180312213254-0002_csv/S7.txt")}}, pre={"S6"}, post={"S9","S8"}},{ name="S6", tasks="240", distr={type="replay", params={samples=solver.fileToArray("/home/work/LogBS/12_2_4G_5/bulma_br/logs/app-20180312213254-0002_csv/S6.txt")}}, pre={"S4","S5"}, post={"S7"}},{ name="S9", tasks="120", distr={type="replay", params={samples=solver.fileToArray("/home/work/LogBS/12_2_4G_5/bulma_br/logs/app-20180312213254-0002_csv/S9.txt")}}, pre={"S7"}, post={"S10"}},{ name="S8", tasks="120", distr={type="replay", params={samples=solver.fileToArray("/home/work/LogBS/12_2_4G_5/bulma_br/logs/app-20180312213254-0002_csv/S8.txt")}}, pre={"S7"}, post={"S10"}}};

-- Number of computation nodes in the system
Nodes = 24;

-- Number of users accessing the system
Users = 1;

-- Distribution of the think time for the users
UThinkTimeDistr = {type = "exp", params = {rate = 0.001}};

-- Total number of jobs to simulate
maxJobs = 1000;

-- Coefficient for the Confidence Intervals
confIntCoeff = 1.96;
