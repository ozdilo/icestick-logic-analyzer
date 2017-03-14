// Verilog netlist produced by program LSE :  version Diamond Version 0.0.0
// Netlist written on Wed Aug 24 00:00:57 2016
//
// Verilog Description of module la
//

module la (xtalClock, exClock, \input , ready50, rx, tx, debugleds, 
           testcnt);   // ../src/la.vhd(39[8:10])
    input xtalClock;   // ../src/la.vhd(44[3:12])
    input exClock;   // ../src/la.vhd(45[3:10])
    input [7:0]\input ;   // ../src/la.vhd(46[3:8])
    output ready50;   // ../src/la.vhd(47[3:10])
    input rx;   // ../src/la.vhd(48[3:5])
    output tx;   // ../src/la.vhd(49[3:5])
    output [1:0]debugleds;   // ../src/la.vhd(50[5:14])
    output [7:0]testcnt;   // ../src/la.vhd(51[5:12])
    
    wire xtalClock_c /* synthesis SET_AS_NETWORK=xtalClock_c, is_clock=1 */ ;   // ../src/la.vhd(44[3:12])
    
    wire GND_net, VCC_net, executePrev, input_c_7, input_c_6, input_c_5, 
        input_c_4, input_c_3, input_c_2, input_c_1, input_c_0, ready50_c, 
        tx_c, debugleds_c_1, debugleds_c_0, testcnt_c_7, testcnt_c_6, 
        testcnt_c_5, testcnt_c_4, testcnt_c_3, testcnt_c_2, testcnt_c_1, 
        testcnt_c_0;
    wire [39:0]cmd;   // ../src/la.vhd(138[10:13])
    wire [15:0]fwd;   // ../src/controller.vhd(68[8:11])
    wire [7:0]memoryOut;   // ../src/la.vhd(140[10:19])
    wire [7:0]outputdata;   // ../src/la.vhd(143[10:20])
    
    wire execute, send, busy, trxClock, wrFlags;
    wire [3:0]disabledGroupsReg;   // ../src/eia232.vhd(110[8:25])
    wire [7:0]syncedInput;   // ../src/core.vhd(159[18:29])
    wire [3:0]wrtrigmask;   // ../src/core.vhd(161[8:18])
    wire [3:0]wrtrigval;   // ../src/core.vhd(161[20:29])
    wire [3:0]wrtrigcfg;   // ../src/core.vhd(161[31:40])
    
    wire wrDivider, wrsize, flagDemux, flagFilter, flagInverted, sampleReady, 
        n4886, n4885, n4884, n4883, n4882, n4881, n4880, n4879, 
        n4875, n6, n4869, n4868, n4867, n4866, n4865, n4864, 
        n4863, n4862, n4861, n4860, n4859, n4854, n4853, n4852, 
        n4851, n8228, n4844, n4843, n4842, n8230, n8232, nstate_2__N_139_c_1, 
        n8234, n4248;
    wire [2:0]nstate_2__N_241;
    wire [31:0]dataBuffer;   // ../src/transmitter.vhd(62[9:19])
    wire [2:0]bytes;   // ../src/transmitter.vhd(68[9:14])
    wire [1:0]state_adj_1418;   // ../src/transmitter.vhd(69[9:14])
    
    wire writeByte, byteDone, disabled, n3615, n7868, n1917, n8236, 
        n7867;
    wire [1:0]state_1__N_371;
    
    wire n234, n8238, n8240, n8242, n8244, n8246, reset_N_440, 
        arm_N_438, wrspeed_N_432, wrsize_N_434, n7866, n8336;
    wire [3:0]wrtrigmask_3__N_416;
    wire [3:0]wrtrigval_3__N_423;
    wire [3:0]wrtrigcfg_3__N_427;
    
    wire n8248;
    wire [23:0]divider;   // ../src/sampler.vhd(59[10:17])
    
    wire n7865, n4811, n3753, n7864, n7863, n4810, n8324, n7862, 
        n4082, n8250, ready50_N_581, n4806;
    wire [15:0]bwd;   // ../src/controller.vhd(68[13:16])
    
    wire n4805, n4804, n4803, n8196, n4801, n4800, n4799, n4798, 
        n38, n39, n40, n41, n42, n43, n12, n44, n45;
    wire [7:0]maskRegister;   // ../src/stage.vhd(73[8:20])
    wire [7:0]valueRegister;   // ../src/stage.vhd(73[22:35])
    wire [31:0]configRegister;   // ../src/stage.vhd(74[8:22])
    
    wire n5170, n8226, n8260, n4797, n5147, n8252, n5146, n4793, 
        n5145, n5144, n5143, n8254, n5142, n5141, n5140, n5139, 
        n5138, n9, n5137, n5136, n5135, n5134, n5133, n5132, 
        n5131, n5130, n5129, n5128, n5127, n5126, n5125, n5124, 
        n5123, n5122;
    wire [7:0]maskRegister_adj_1471;   // ../src/stage.vhd(73[8:20])
    wire [7:0]valueRegister_adj_1472;   // ../src/stage.vhd(73[22:35])
    
    wire n5121, n1;
    wire [31:0]configRegister_adj_1473;   // ../src/stage.vhd(74[8:22])
    
    wire n5120, n5119, n5117, n5116, n5115, n5114, n5113, n5112, 
        n5111, n5110, n5108, n5107, n5106, n5105, n5104, n5103, 
        n5102, n5101, n5100, n5099, n5098, n5097, n5096, n5095, 
        n5094, n5093, n5092, n5091, n5090, n4789, n5089, n4788, 
        n5088, n5087, n5086, n6749, n5085, n5084, n5083, n5082, 
        n5081, n5080, n5079, n5078, n5077, n5076, n5075, n5074, 
        n5073, n5071, n5070, n5069, n5068;
    wire [7:0]maskRegister_adj_1519;   // ../src/stage.vhd(73[8:20])
    wire [7:0]valueRegister_adj_1520;   // ../src/stage.vhd(73[22:35])
    
    wire n5066, n5065;
    wire [31:0]configRegister_adj_1521;   // ../src/stage.vhd(74[8:22])
    
    wire n5064, n5063, n5062, n5061, n5060, n5059, n5058, n5057, 
        n5056, n5055, n5054, n5053, n5052, n5051, n5050, n5049, 
        n5048, n4787, n5047, n5046, n1336, n5045, n5044, n8256, 
        n5043, n5042, n5041, n5040, n5039, n5038, n5037, n5036, 
        n5035, n5034, n5033, n5032, n5031, n5030, n5028, n5027, 
        n5026, n5025, n5024, n5023, n5022, n5021, n5020, n5019, 
        n5018, n5017, n5016, n5015, n5014, n5013, n5012, n5011, 
        n5010, n5009, n5008, n5007, n5006, n5005;
    wire [7:0]maskRegister_adj_1567;   // ../src/stage.vhd(73[8:20])
    wire [7:0]valueRegister_adj_1568;   // ../src/stage.vhd(73[22:35])
    wire [31:0]configRegister_adj_1569;   // ../src/stage.vhd(74[8:22])
    
    wire n5004, n5003, n5002, n5001, n5000, n4997, n1320, n8204, 
        n5698, n8262, n8264, n8266, n8268, n8270, n8272, n8274, 
        n4780, n8276, n8278, n4005, n4775, n4937, n4936, n4935, 
        n4934, n4933, n4932, n4931, n4930, n4929, n4928, n4927, 
        n4926, n4925, n8212, n4924, n4923, n4922, n4921, n4920, 
        n4919, n4918, n4917, n4916, n4915, n4914, n4913, n4912, 
        n4911, n4910, n4909, n4908, n4907, n4905, n4904, n4903, 
        n4902, n4901, n4900, n3493, n4899, n4898, n4897, n4896, 
        n4895, n4894, n4893, n4892, n4890, n4889, n4888, n4887;
    
    VCC i2 (.Y(VCC_net));
    SB_LUT4 i3638_3_lut (.I0(configRegister[0]), .I1(cmd[8]), .I2(wrtrigcfg[0]), 
            .I3(GND_net), .O(n4797));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3638_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3858_3_lut (.I0(configRegister[12]), .I1(cmd[20]), .I2(wrtrigcfg[0]), 
            .I3(GND_net), .O(n5017));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3858_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3639_3_lut (.I0(maskRegister_adj_1471[0]), .I1(cmd[8]), .I2(wrtrigmask[1]), 
            .I3(GND_net), .O(n4798));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3639_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3640_3_lut (.I0(valueRegister_adj_1472[0]), .I1(cmd[8]), .I2(wrtrigval[1]), 
            .I3(GND_net), .O(n4799));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3640_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3859_3_lut (.I0(configRegister[13]), .I1(cmd[21]), .I2(wrtrigcfg[0]), 
            .I3(GND_net), .O(n5018));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3859_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3641_3_lut (.I0(configRegister_adj_1473[0]), .I1(cmd[8]), .I2(wrtrigcfg[1]), 
            .I3(GND_net), .O(n4800));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3641_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3860_3_lut (.I0(configRegister[14]), .I1(cmd[22]), .I2(wrtrigcfg[0]), 
            .I3(GND_net), .O(n5019));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3860_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3861_3_lut (.I0(configRegister[15]), .I1(cmd[23]), .I2(wrtrigcfg[0]), 
            .I3(GND_net), .O(n5020));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3861_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3725_3_lut (.I0(fwd[7]), .I1(cmd[31]), .I2(wrsize), .I3(GND_net), 
            .O(n4884));   // ../src/controller.vhd(161[3] 168[10])
    defparam i3725_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3642_3_lut (.I0(disabledGroupsReg[0]), .I1(cmd[10]), .I2(wrFlags), 
            .I3(GND_net), .O(n4801));   // ../src/eia232.vhd(138[3] 142[10])
    defparam i3642_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3862_3_lut (.I0(configRegister[16]), .I1(cmd[24]), .I2(wrtrigcfg[0]), 
            .I3(GND_net), .O(n5021));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3862_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3644_3_lut (.I0(maskRegister_adj_1519[0]), .I1(cmd[8]), .I2(wrtrigmask[2]), 
            .I3(GND_net), .O(n4803));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3644_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3863_3_lut (.I0(configRegister[17]), .I1(cmd[25]), .I2(wrtrigcfg[0]), 
            .I3(GND_net), .O(n5022));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3863_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3864_3_lut (.I0(configRegister[20]), .I1(cmd[28]), .I2(wrtrigcfg[0]), 
            .I3(GND_net), .O(n5023));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3864_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut (.I0(cmd[19]), .I1(cmd[20]), .I2(n3753), .I3(n1), 
            .O(n8236));   // ../src/receiver.vhd(77[3] 86[10])
    defparam i12_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i3865_3_lut (.I0(configRegister[21]), .I1(cmd[29]), .I2(wrtrigcfg[0]), 
            .I3(GND_net), .O(n5024));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3865_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3866_3_lut (.I0(configRegister[22]), .I1(cmd[30]), .I2(wrtrigcfg[0]), 
            .I3(GND_net), .O(n5025));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3866_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3867_3_lut (.I0(configRegister[23]), .I1(cmd[31]), .I2(wrtrigcfg[0]), 
            .I3(GND_net), .O(n5026));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3867_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3868_3_lut (.I0(configRegister[24]), .I1(cmd[32]), .I2(wrtrigcfg[0]), 
            .I3(GND_net), .O(n5027));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3868_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3869_3_lut (.I0(configRegister[26]), .I1(cmd[34]), .I2(wrtrigcfg[0]), 
            .I3(GND_net), .O(n5028));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3869_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3871_3_lut (.I0(maskRegister_adj_1471[1]), .I1(cmd[9]), .I2(wrtrigmask[1]), 
            .I3(GND_net), .O(n5030));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3871_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3872_3_lut (.I0(maskRegister_adj_1471[2]), .I1(cmd[10]), .I2(wrtrigmask[1]), 
            .I3(GND_net), .O(n5031));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3872_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3873_3_lut (.I0(maskRegister_adj_1471[3]), .I1(cmd[11]), .I2(wrtrigmask[1]), 
            .I3(GND_net), .O(n5032));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3873_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3874_3_lut (.I0(maskRegister_adj_1471[4]), .I1(cmd[12]), .I2(wrtrigmask[1]), 
            .I3(GND_net), .O(n5033));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3874_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3645_3_lut (.I0(valueRegister_adj_1520[0]), .I1(cmd[8]), .I2(wrtrigval[2]), 
            .I3(GND_net), .O(n4804));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3645_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3875_3_lut (.I0(maskRegister_adj_1471[5]), .I1(cmd[13]), .I2(wrtrigmask[1]), 
            .I3(GND_net), .O(n5034));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3875_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3728_3_lut (.I0(fwd[10]), .I1(cmd[34]), .I2(wrsize), .I3(GND_net), 
            .O(n4887));   // ../src/controller.vhd(161[3] 168[10])
    defparam i3728_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3876_3_lut (.I0(maskRegister_adj_1471[6]), .I1(cmd[14]), .I2(wrtrigmask[1]), 
            .I3(GND_net), .O(n5035));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3876_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3729_3_lut (.I0(fwd[11]), .I1(cmd[35]), .I2(wrsize), .I3(GND_net), 
            .O(n4888));   // ../src/controller.vhd(161[3] 168[10])
    defparam i3729_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3877_3_lut (.I0(maskRegister_adj_1471[7]), .I1(cmd[15]), .I2(wrtrigmask[1]), 
            .I3(GND_net), .O(n5036));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3877_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3878_3_lut (.I0(valueRegister_adj_1472[1]), .I1(cmd[9]), .I2(wrtrigval[1]), 
            .I3(GND_net), .O(n5037));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3878_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3879_3_lut (.I0(valueRegister_adj_1472[2]), .I1(cmd[10]), .I2(wrtrigval[1]), 
            .I3(GND_net), .O(n5038));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3879_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3880_3_lut (.I0(valueRegister_adj_1472[3]), .I1(cmd[11]), .I2(wrtrigval[1]), 
            .I3(GND_net), .O(n5039));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3880_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3646_3_lut (.I0(configRegister_adj_1521[0]), .I1(cmd[8]), .I2(wrtrigcfg[2]), 
            .I3(GND_net), .O(n4805));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3646_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3647_3_lut (.I0(maskRegister_adj_1567[0]), .I1(cmd[8]), .I2(wrtrigmask[3]), 
            .I3(GND_net), .O(n4806));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3647_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3881_3_lut (.I0(valueRegister_adj_1472[4]), .I1(cmd[12]), .I2(wrtrigval[1]), 
            .I3(GND_net), .O(n5040));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3881_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3730_3_lut (.I0(fwd[12]), .I1(cmd[36]), .I2(wrsize), .I3(GND_net), 
            .O(n4889));   // ../src/controller.vhd(161[3] 168[10])
    defparam i3730_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_123 (.I0(cmd[18]), .I1(cmd[19]), .I2(n3753), 
            .I3(n1), .O(n8238));   // ../src/receiver.vhd(77[3] 86[10])
    defparam i12_4_lut_adj_123.LUT_INIT = 16'hca0a;
    SB_LUT4 i3651_3_lut (.I0(valueRegister_adj_1568[0]), .I1(cmd[8]), .I2(wrtrigval[3]), 
            .I3(GND_net), .O(n4810));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3651_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3731_3_lut (.I0(fwd[13]), .I1(cmd[37]), .I2(wrsize), .I3(GND_net), 
            .O(n4890));   // ../src/controller.vhd(161[3] 168[10])
    defparam i3731_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3882_3_lut (.I0(valueRegister_adj_1472[5]), .I1(cmd[13]), .I2(wrtrigval[1]), 
            .I3(GND_net), .O(n5041));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3882_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3883_3_lut (.I0(valueRegister_adj_1472[6]), .I1(cmd[14]), .I2(wrtrigval[1]), 
            .I3(GND_net), .O(n5042));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3883_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3652_3_lut (.I0(configRegister_adj_1569[0]), .I1(cmd[8]), .I2(wrtrigcfg[3]), 
            .I3(GND_net), .O(n4811));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3652_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3884_3_lut (.I0(valueRegister_adj_1472[7]), .I1(cmd[15]), .I2(wrtrigval[1]), 
            .I3(GND_net), .O(n5043));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3884_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3885_3_lut (.I0(configRegister_adj_1473[1]), .I1(cmd[9]), .I2(wrtrigcfg[1]), 
            .I3(GND_net), .O(n5044));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3885_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3716_3_lut (.I0(fwd[1]), .I1(cmd[25]), .I2(wrsize), .I3(GND_net), 
            .O(n4875));   // ../src/controller.vhd(161[3] 168[10])
    defparam i3716_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3886_3_lut (.I0(configRegister_adj_1473[2]), .I1(cmd[10]), 
            .I2(wrtrigcfg[1]), .I3(GND_net), .O(n5045));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3886_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3733_3_lut (.I0(fwd[15]), .I1(cmd[39]), .I2(wrsize), .I3(GND_net), 
            .O(n4892));   // ../src/controller.vhd(161[3] 168[10])
    defparam i3733_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3887_3_lut (.I0(configRegister_adj_1473[3]), .I1(cmd[11]), 
            .I2(wrtrigcfg[1]), .I3(GND_net), .O(n5046));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3887_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3888_3_lut (.I0(configRegister_adj_1473[4]), .I1(cmd[12]), 
            .I2(wrtrigcfg[1]), .I3(GND_net), .O(n5047));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3888_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3889_3_lut (.I0(configRegister_adj_1473[5]), .I1(cmd[13]), 
            .I2(wrtrigcfg[1]), .I3(GND_net), .O(n5048));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3889_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3734_3_lut (.I0(bwd[1]), .I1(cmd[9]), .I2(wrsize), .I3(GND_net), 
            .O(n4893));   // ../src/controller.vhd(161[3] 168[10])
    defparam i3734_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3735_3_lut (.I0(bwd[2]), .I1(cmd[10]), .I2(wrsize), .I3(GND_net), 
            .O(n4894));   // ../src/controller.vhd(161[3] 168[10])
    defparam i3735_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3890_3_lut (.I0(configRegister_adj_1473[6]), .I1(cmd[14]), 
            .I2(wrtrigcfg[1]), .I3(GND_net), .O(n5049));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3890_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3736_3_lut (.I0(bwd[3]), .I1(cmd[11]), .I2(wrsize), .I3(GND_net), 
            .O(n4895));   // ../src/controller.vhd(161[3] 168[10])
    defparam i3736_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3737_3_lut (.I0(bwd[4]), .I1(cmd[12]), .I2(wrsize), .I3(GND_net), 
            .O(n4896));   // ../src/controller.vhd(161[3] 168[10])
    defparam i3737_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3891_3_lut (.I0(configRegister_adj_1473[7]), .I1(cmd[15]), 
            .I2(wrtrigcfg[1]), .I3(GND_net), .O(n5050));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3891_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3738_3_lut (.I0(bwd[5]), .I1(cmd[13]), .I2(wrsize), .I3(GND_net), 
            .O(n4897));   // ../src/controller.vhd(161[3] 168[10])
    defparam i3738_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3892_3_lut (.I0(configRegister_adj_1473[8]), .I1(cmd[16]), 
            .I2(wrtrigcfg[1]), .I3(GND_net), .O(n5051));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3892_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3893_3_lut (.I0(configRegister_adj_1473[9]), .I1(cmd[17]), 
            .I2(wrtrigcfg[1]), .I3(GND_net), .O(n5052));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3893_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3894_3_lut (.I0(configRegister_adj_1473[10]), .I1(cmd[18]), 
            .I2(wrtrigcfg[1]), .I3(GND_net), .O(n5053));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3894_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3739_3_lut (.I0(bwd[6]), .I1(cmd[14]), .I2(wrsize), .I3(GND_net), 
            .O(n4898));   // ../src/controller.vhd(161[3] 168[10])
    defparam i3739_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_124 (.I0(cmd[26]), .I1(cmd[27]), .I2(n3753), 
            .I3(n1), .O(n8204));   // ../src/receiver.vhd(77[3] 86[10])
    defparam i12_4_lut_adj_124.LUT_INIT = 16'hca0a;
    SB_LUT4 i3740_3_lut (.I0(bwd[7]), .I1(cmd[15]), .I2(wrsize), .I3(GND_net), 
            .O(n4899));   // ../src/controller.vhd(161[3] 168[10])
    defparam i3740_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3741_3_lut (.I0(bwd[8]), .I1(cmd[16]), .I2(wrsize), .I3(GND_net), 
            .O(n4900));   // ../src/controller.vhd(161[3] 168[10])
    defparam i3741_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3895_3_lut (.I0(configRegister_adj_1473[11]), .I1(cmd[19]), 
            .I2(wrtrigcfg[1]), .I3(GND_net), .O(n5054));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3895_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3896_3_lut (.I0(configRegister_adj_1473[12]), .I1(cmd[20]), 
            .I2(wrtrigcfg[1]), .I3(GND_net), .O(n5055));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3896_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3897_3_lut (.I0(configRegister_adj_1473[13]), .I1(cmd[21]), 
            .I2(wrtrigcfg[1]), .I3(GND_net), .O(n5056));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3897_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3898_3_lut (.I0(configRegister_adj_1473[14]), .I1(cmd[22]), 
            .I2(wrtrigcfg[1]), .I3(GND_net), .O(n5057));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3898_3_lut.LUT_INIT = 16'hcaca;
    SB_IO testcnt_pad_7 (.PACKAGE_PIN(testcnt[7]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(testcnt_c_7));   // /home/omer/lscc/iCEcube2.2016.02/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam testcnt_pad_7.PIN_TYPE = 6'b011001;
    defparam testcnt_pad_7.PULLUP = 1'b0;
    defparam testcnt_pad_7.NEG_TRIGGER = 1'b0;
    defparam testcnt_pad_7.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 i3742_3_lut (.I0(bwd[9]), .I1(cmd[17]), .I2(wrsize), .I3(GND_net), 
            .O(n4901));   // ../src/controller.vhd(161[3] 168[10])
    defparam i3742_3_lut.LUT_INIT = 16'hcaca;
    SB_IO debugleds_pad_0 (.PACKAGE_PIN(debugleds[0]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(debugleds_c_0));   // /home/omer/lscc/iCEcube2.2016.02/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam debugleds_pad_0.PIN_TYPE = 6'b011001;
    defparam debugleds_pad_0.PULLUP = 1'b0;
    defparam debugleds_pad_0.NEG_TRIGGER = 1'b0;
    defparam debugleds_pad_0.IO_STANDARD = "SB_LVCMOS";
    SB_IO debugleds_pad_1 (.PACKAGE_PIN(debugleds[1]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(debugleds_c_1));   // /home/omer/lscc/iCEcube2.2016.02/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam debugleds_pad_1.PIN_TYPE = 6'b011001;
    defparam debugleds_pad_1.PULLUP = 1'b0;
    defparam debugleds_pad_1.NEG_TRIGGER = 1'b0;
    defparam debugleds_pad_1.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 i3743_3_lut (.I0(bwd[10]), .I1(cmd[18]), .I2(wrsize), .I3(GND_net), 
            .O(n4902));   // ../src/controller.vhd(161[3] 168[10])
    defparam i3743_3_lut.LUT_INIT = 16'hcaca;
    SB_IO testcnt_pad_5 (.PACKAGE_PIN(testcnt[5]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(testcnt_c_5));   // /home/omer/lscc/iCEcube2.2016.02/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam testcnt_pad_5.PIN_TYPE = 6'b011001;
    defparam testcnt_pad_5.PULLUP = 1'b0;
    defparam testcnt_pad_5.NEG_TRIGGER = 1'b0;
    defparam testcnt_pad_5.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 i3899_3_lut (.I0(configRegister_adj_1473[15]), .I1(cmd[23]), 
            .I2(wrtrigcfg[1]), .I3(GND_net), .O(n5058));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3899_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3744_3_lut (.I0(bwd[11]), .I1(cmd[19]), .I2(wrsize), .I3(GND_net), 
            .O(n4903));   // ../src/controller.vhd(161[3] 168[10])
    defparam i3744_3_lut.LUT_INIT = 16'hcaca;
    SB_IO tx_pad (.PACKAGE_PIN(tx), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(tx_c));   // /home/omer/lscc/iCEcube2.2016.02/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam tx_pad.PIN_TYPE = 6'b011001;
    defparam tx_pad.PULLUP = 1'b0;
    defparam tx_pad.NEG_TRIGGER = 1'b0;
    defparam tx_pad.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 i3745_3_lut (.I0(bwd[12]), .I1(cmd[20]), .I2(wrsize), .I3(GND_net), 
            .O(n4904));   // ../src/controller.vhd(161[3] 168[10])
    defparam i3745_3_lut.LUT_INIT = 16'hcaca;
    SB_IO ready50_pad (.PACKAGE_PIN(ready50), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(ready50_c)) /* synthesis IO_FF_OUT=TRUE */ ;   // /home/omer/lscc/iCEcube2.2016.02/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam ready50_pad.PIN_TYPE = 6'b011001;
    defparam ready50_pad.PULLUP = 1'b0;
    defparam ready50_pad.NEG_TRIGGER = 1'b0;
    defparam ready50_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO nstate_2__N_139_pad_1 (.PACKAGE_PIN(rx), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(nstate_2__N_139_c_1));   // /home/omer/lscc/iCEcube2.2016.02/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam nstate_2__N_139_pad_1.PIN_TYPE = 6'b000001;
    defparam nstate_2__N_139_pad_1.PULLUP = 1'b0;
    defparam nstate_2__N_139_pad_1.NEG_TRIGGER = 1'b0;
    defparam nstate_2__N_139_pad_1.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 i936_3_lut (.I0(n3493), .I1(writeByte), .I2(n9), .I3(GND_net), 
            .O(n4082));
    defparam i936_3_lut.LUT_INIT = 16'hcece;
    SB_LUT4 i3900_3_lut (.I0(configRegister_adj_1473[16]), .I1(cmd[24]), 
            .I2(wrtrigcfg[1]), .I3(GND_net), .O(n5059));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3900_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3901_3_lut (.I0(configRegister_adj_1473[17]), .I1(cmd[25]), 
            .I2(wrtrigcfg[1]), .I3(GND_net), .O(n5060));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3901_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3902_3_lut (.I0(configRegister_adj_1473[20]), .I1(cmd[28]), 
            .I2(wrtrigcfg[1]), .I3(GND_net), .O(n5061));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3902_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3903_3_lut (.I0(configRegister_adj_1473[21]), .I1(cmd[29]), 
            .I2(wrtrigcfg[1]), .I3(GND_net), .O(n5062));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3903_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3746_3_lut (.I0(bwd[13]), .I1(cmd[21]), .I2(wrsize), .I3(GND_net), 
            .O(n4905));   // ../src/controller.vhd(161[3] 168[10])
    defparam i3746_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3904_3_lut (.I0(configRegister_adj_1473[22]), .I1(cmd[30]), 
            .I2(wrtrigcfg[1]), .I3(GND_net), .O(n5063));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3904_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3905_3_lut (.I0(configRegister_adj_1473[23]), .I1(cmd[31]), 
            .I2(wrtrigcfg[1]), .I3(GND_net), .O(n5064));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3905_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3906_3_lut (.I0(configRegister_adj_1473[24]), .I1(cmd[32]), 
            .I2(wrtrigcfg[1]), .I3(GND_net), .O(n5065));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3906_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3907_3_lut (.I0(configRegister_adj_1473[26]), .I1(cmd[34]), 
            .I2(wrtrigcfg[1]), .I3(GND_net), .O(n5066));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3907_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3909_3_lut (.I0(disabledGroupsReg[1]), .I1(cmd[11]), .I2(wrFlags), 
            .I3(GND_net), .O(n5068));   // ../src/eia232.vhd(138[3] 142[10])
    defparam i3909_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3910_3_lut (.I0(disabledGroupsReg[2]), .I1(cmd[12]), .I2(wrFlags), 
            .I3(GND_net), .O(n5069));   // ../src/eia232.vhd(138[3] 142[10])
    defparam i3910_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3911_3_lut (.I0(disabledGroupsReg[3]), .I1(cmd[13]), .I2(wrFlags), 
            .I3(GND_net), .O(n5070));   // ../src/eia232.vhd(138[3] 142[10])
    defparam i3911_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3912_3_lut (.I0(maskRegister_adj_1519[1]), .I1(cmd[9]), .I2(wrtrigmask[2]), 
            .I3(GND_net), .O(n5071));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3912_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_125 (.I0(cmd[17]), .I1(cmd[18]), .I2(n3753), 
            .I3(n1), .O(n8240));   // ../src/receiver.vhd(77[3] 86[10])
    defparam i12_4_lut_adj_125.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_126 (.I0(cmd[12]), .I1(cmd[13]), .I2(n3753), 
            .I3(n1), .O(n8250));   // ../src/receiver.vhd(77[3] 86[10])
    defparam i12_4_lut_adj_126.LUT_INIT = 16'hca0a;
    SB_LUT4 i3621_3_lut (.I0(fwd[0]), .I1(cmd[24]), .I2(wrsize), .I3(GND_net), 
            .O(n4780));   // ../src/controller.vhd(161[3] 168[10])
    defparam i3621_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3914_3_lut (.I0(maskRegister_adj_1519[2]), .I1(cmd[10]), .I2(wrtrigmask[2]), 
            .I3(GND_net), .O(n5073));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3914_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3915_3_lut (.I0(maskRegister_adj_1519[3]), .I1(cmd[11]), .I2(wrtrigmask[2]), 
            .I3(GND_net), .O(n5074));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3915_3_lut.LUT_INIT = 16'hcaca;
    SB_IO testcnt_pad_6 (.PACKAGE_PIN(testcnt[6]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(testcnt_c_6));   // /home/omer/lscc/iCEcube2.2016.02/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam testcnt_pad_6.PIN_TYPE = 6'b011001;
    defparam testcnt_pad_6.PULLUP = 1'b0;
    defparam testcnt_pad_6.NEG_TRIGGER = 1'b0;
    defparam testcnt_pad_6.IO_STANDARD = "SB_LVCMOS";
    SB_IO input_pad_0 (.PACKAGE_PIN(\input [0]), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(input_c_0));   // /home/omer/lscc/iCEcube2.2016.02/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam input_pad_0.PIN_TYPE = 6'b000001;
    defparam input_pad_0.PULLUP = 1'b0;
    defparam input_pad_0.NEG_TRIGGER = 1'b0;
    defparam input_pad_0.IO_STANDARD = "SB_LVCMOS";
    SB_IO input_pad_1 (.PACKAGE_PIN(\input [1]), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(input_c_1));   // /home/omer/lscc/iCEcube2.2016.02/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam input_pad_1.PIN_TYPE = 6'b000001;
    defparam input_pad_1.PULLUP = 1'b0;
    defparam input_pad_1.NEG_TRIGGER = 1'b0;
    defparam input_pad_1.IO_STANDARD = "SB_LVCMOS";
    SB_IO input_pad_2 (.PACKAGE_PIN(\input [2]), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(input_c_2));   // /home/omer/lscc/iCEcube2.2016.02/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam input_pad_2.PIN_TYPE = 6'b000001;
    defparam input_pad_2.PULLUP = 1'b0;
    defparam input_pad_2.NEG_TRIGGER = 1'b0;
    defparam input_pad_2.IO_STANDARD = "SB_LVCMOS";
    SB_IO input_pad_3 (.PACKAGE_PIN(\input [3]), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(input_c_3));   // /home/omer/lscc/iCEcube2.2016.02/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam input_pad_3.PIN_TYPE = 6'b000001;
    defparam input_pad_3.PULLUP = 1'b0;
    defparam input_pad_3.NEG_TRIGGER = 1'b0;
    defparam input_pad_3.IO_STANDARD = "SB_LVCMOS";
    SB_IO input_pad_4 (.PACKAGE_PIN(\input [4]), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(input_c_4));   // /home/omer/lscc/iCEcube2.2016.02/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam input_pad_4.PIN_TYPE = 6'b000001;
    defparam input_pad_4.PULLUP = 1'b0;
    defparam input_pad_4.NEG_TRIGGER = 1'b0;
    defparam input_pad_4.IO_STANDARD = "SB_LVCMOS";
    SB_IO input_pad_5 (.PACKAGE_PIN(\input [5]), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(input_c_5));   // /home/omer/lscc/iCEcube2.2016.02/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam input_pad_5.PIN_TYPE = 6'b000001;
    defparam input_pad_5.PULLUP = 1'b0;
    defparam input_pad_5.NEG_TRIGGER = 1'b0;
    defparam input_pad_5.IO_STANDARD = "SB_LVCMOS";
    SB_IO input_pad_6 (.PACKAGE_PIN(\input [6]), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(input_c_6));   // /home/omer/lscc/iCEcube2.2016.02/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam input_pad_6.PIN_TYPE = 6'b000001;
    defparam input_pad_6.PULLUP = 1'b0;
    defparam input_pad_6.NEG_TRIGGER = 1'b0;
    defparam input_pad_6.IO_STANDARD = "SB_LVCMOS";
    SB_IO input_pad_7 (.PACKAGE_PIN(\input [7]), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(input_c_7));   // /home/omer/lscc/iCEcube2.2016.02/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam input_pad_7.PIN_TYPE = 6'b000001;
    defparam input_pad_7.PULLUP = 1'b0;
    defparam input_pad_7.NEG_TRIGGER = 1'b0;
    defparam input_pad_7.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 i3916_3_lut (.I0(maskRegister_adj_1519[4]), .I1(cmd[12]), .I2(wrtrigmask[2]), 
            .I3(GND_net), .O(n5075));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3916_3_lut.LUT_INIT = 16'hcaca;
    SB_GB_IO xtalClock_pad (.PACKAGE_PIN(xtalClock), .OUTPUT_ENABLE(VCC_net), 
            .GLOBAL_BUFFER_OUTPUT(xtalClock_c));   // ../src/la.vhd(44[3:12])
    defparam xtalClock_pad.PIN_TYPE = 6'b000001;
    defparam xtalClock_pad.PULLUP = 1'b0;
    defparam xtalClock_pad.NEG_TRIGGER = 1'b0;
    defparam xtalClock_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO testcnt_pad_0 (.PACKAGE_PIN(testcnt[0]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(testcnt_c_0));   // /home/omer/lscc/iCEcube2.2016.02/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam testcnt_pad_0.PIN_TYPE = 6'b011001;
    defparam testcnt_pad_0.PULLUP = 1'b0;
    defparam testcnt_pad_0.NEG_TRIGGER = 1'b0;
    defparam testcnt_pad_0.IO_STANDARD = "SB_LVCMOS";
    SB_IO testcnt_pad_1 (.PACKAGE_PIN(testcnt[1]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(testcnt_c_1));   // /home/omer/lscc/iCEcube2.2016.02/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam testcnt_pad_1.PIN_TYPE = 6'b011001;
    defparam testcnt_pad_1.PULLUP = 1'b0;
    defparam testcnt_pad_1.NEG_TRIGGER = 1'b0;
    defparam testcnt_pad_1.IO_STANDARD = "SB_LVCMOS";
    SB_IO testcnt_pad_2 (.PACKAGE_PIN(testcnt[2]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(testcnt_c_2));   // /home/omer/lscc/iCEcube2.2016.02/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam testcnt_pad_2.PIN_TYPE = 6'b011001;
    defparam testcnt_pad_2.PULLUP = 1'b0;
    defparam testcnt_pad_2.NEG_TRIGGER = 1'b0;
    defparam testcnt_pad_2.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 i3917_3_lut (.I0(maskRegister_adj_1519[5]), .I1(cmd[13]), .I2(wrtrigmask[2]), 
            .I3(GND_net), .O(n5076));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3917_3_lut.LUT_INIT = 16'hcaca;
    SB_IO testcnt_pad_3 (.PACKAGE_PIN(testcnt[3]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(testcnt_c_3));   // /home/omer/lscc/iCEcube2.2016.02/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam testcnt_pad_3.PIN_TYPE = 6'b011001;
    defparam testcnt_pad_3.PULLUP = 1'b0;
    defparam testcnt_pad_3.NEG_TRIGGER = 1'b0;
    defparam testcnt_pad_3.IO_STANDARD = "SB_LVCMOS";
    SB_IO testcnt_pad_4 (.PACKAGE_PIN(testcnt[4]), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(testcnt_c_4));   // /home/omer/lscc/iCEcube2.2016.02/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam testcnt_pad_4.PIN_TYPE = 6'b011001;
    defparam testcnt_pad_4.PULLUP = 1'b0;
    defparam testcnt_pad_4.NEG_TRIGGER = 1'b0;
    defparam testcnt_pad_4.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 i3748_3_lut (.I0(bwd[15]), .I1(cmd[23]), .I2(wrsize), .I3(GND_net), 
            .O(n4907));   // ../src/controller.vhd(161[3] 168[10])
    defparam i3748_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3749_3_lut (.I0(divider[1]), .I1(cmd[9]), .I2(wrDivider), 
            .I3(GND_net), .O(n4908));   // ../src/sampler.vhd(67[3] 95[10])
    defparam i3749_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3918_3_lut (.I0(maskRegister_adj_1519[6]), .I1(cmd[14]), .I2(wrtrigmask[2]), 
            .I3(GND_net), .O(n5077));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3918_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3750_3_lut (.I0(divider[2]), .I1(cmd[10]), .I2(wrDivider), 
            .I3(GND_net), .O(n4909));   // ../src/sampler.vhd(67[3] 95[10])
    defparam i3750_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3751_3_lut (.I0(divider[3]), .I1(cmd[11]), .I2(wrDivider), 
            .I3(GND_net), .O(n4910));   // ../src/sampler.vhd(67[3] 95[10])
    defparam i3751_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3919_3_lut (.I0(maskRegister_adj_1519[7]), .I1(cmd[15]), .I2(wrtrigmask[2]), 
            .I3(GND_net), .O(n5078));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3919_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3752_3_lut (.I0(divider[4]), .I1(cmd[12]), .I2(wrDivider), 
            .I3(GND_net), .O(n4911));   // ../src/sampler.vhd(67[3] 95[10])
    defparam i3752_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3753_3_lut (.I0(divider[5]), .I1(cmd[13]), .I2(wrDivider), 
            .I3(GND_net), .O(n4912));   // ../src/sampler.vhd(67[3] 95[10])
    defparam i3753_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3754_3_lut (.I0(divider[6]), .I1(cmd[14]), .I2(wrDivider), 
            .I3(GND_net), .O(n4913));   // ../src/sampler.vhd(67[3] 95[10])
    defparam i3754_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3920_3_lut (.I0(valueRegister_adj_1520[1]), .I1(cmd[9]), .I2(wrtrigval[2]), 
            .I3(GND_net), .O(n5079));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3920_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3755_3_lut (.I0(divider[7]), .I1(cmd[15]), .I2(wrDivider), 
            .I3(GND_net), .O(n4914));   // ../src/sampler.vhd(67[3] 95[10])
    defparam i3755_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3756_3_lut (.I0(divider[8]), .I1(cmd[16]), .I2(wrDivider), 
            .I3(GND_net), .O(n4915));   // ../src/sampler.vhd(67[3] 95[10])
    defparam i3756_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3757_3_lut (.I0(divider[9]), .I1(cmd[17]), .I2(wrDivider), 
            .I3(GND_net), .O(n4916));   // ../src/sampler.vhd(67[3] 95[10])
    defparam i3757_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3758_3_lut (.I0(divider[10]), .I1(cmd[18]), .I2(wrDivider), 
            .I3(GND_net), .O(n4917));   // ../src/sampler.vhd(67[3] 95[10])
    defparam i3758_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3921_3_lut (.I0(valueRegister_adj_1520[2]), .I1(cmd[10]), .I2(wrtrigval[2]), 
            .I3(GND_net), .O(n5080));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3921_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3759_3_lut (.I0(divider[11]), .I1(cmd[19]), .I2(wrDivider), 
            .I3(GND_net), .O(n4918));   // ../src/sampler.vhd(67[3] 95[10])
    defparam i3759_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3760_3_lut (.I0(divider[12]), .I1(cmd[20]), .I2(wrDivider), 
            .I3(GND_net), .O(n4919));   // ../src/sampler.vhd(67[3] 95[10])
    defparam i3760_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3922_3_lut (.I0(valueRegister_adj_1520[3]), .I1(cmd[11]), .I2(wrtrigval[2]), 
            .I3(GND_net), .O(n5081));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3922_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF testcnt_i_917__i1 (.Q(testcnt_c_0), .C(xtalClock_c), .D(n45));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/numeric_std.vhd(1241[12:13])
    SB_LUT4 i3923_3_lut (.I0(valueRegister_adj_1520[4]), .I1(cmd[12]), .I2(wrtrigval[2]), 
            .I3(GND_net), .O(n5082));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3923_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3761_3_lut (.I0(divider[13]), .I1(cmd[21]), .I2(wrDivider), 
            .I3(GND_net), .O(n4920));   // ../src/sampler.vhd(67[3] 95[10])
    defparam i3761_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3924_3_lut (.I0(valueRegister_adj_1520[5]), .I1(cmd[13]), .I2(wrtrigval[2]), 
            .I3(GND_net), .O(n5083));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3924_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3762_3_lut (.I0(divider[14]), .I1(cmd[22]), .I2(wrDivider), 
            .I3(GND_net), .O(n4921));   // ../src/sampler.vhd(67[3] 95[10])
    defparam i3762_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3925_3_lut (.I0(valueRegister_adj_1520[6]), .I1(cmd[14]), .I2(wrtrigval[2]), 
            .I3(GND_net), .O(n5084));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3925_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3926_3_lut (.I0(valueRegister_adj_1520[7]), .I1(cmd[15]), .I2(wrtrigval[2]), 
            .I3(GND_net), .O(n5085));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3926_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3927_3_lut (.I0(configRegister_adj_1521[1]), .I1(cmd[9]), .I2(wrtrigcfg[2]), 
            .I3(GND_net), .O(n5086));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3927_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3928_3_lut (.I0(configRegister_adj_1521[2]), .I1(cmd[10]), 
            .I2(wrtrigcfg[2]), .I3(GND_net), .O(n5087));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3928_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3929_3_lut (.I0(configRegister_adj_1521[3]), .I1(cmd[11]), 
            .I2(wrtrigcfg[2]), .I3(GND_net), .O(n5088));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3929_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3930_3_lut (.I0(configRegister_adj_1521[4]), .I1(cmd[12]), 
            .I2(wrtrigcfg[2]), .I3(GND_net), .O(n5089));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3930_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3931_3_lut (.I0(configRegister_adj_1521[5]), .I1(cmd[13]), 
            .I2(wrtrigcfg[2]), .I3(GND_net), .O(n5090));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3931_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3932_3_lut (.I0(configRegister_adj_1521[6]), .I1(cmd[14]), 
            .I2(wrtrigcfg[2]), .I3(GND_net), .O(n5091));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3932_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3933_3_lut (.I0(configRegister_adj_1521[7]), .I1(cmd[15]), 
            .I2(wrtrigcfg[2]), .I3(GND_net), .O(n5092));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3933_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3934_3_lut (.I0(configRegister_adj_1521[8]), .I1(cmd[16]), 
            .I2(wrtrigcfg[2]), .I3(GND_net), .O(n5093));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3934_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3935_3_lut (.I0(configRegister_adj_1521[9]), .I1(cmd[17]), 
            .I2(wrtrigcfg[2]), .I3(GND_net), .O(n5094));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3935_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3936_3_lut (.I0(configRegister_adj_1521[10]), .I1(cmd[18]), 
            .I2(wrtrigcfg[2]), .I3(GND_net), .O(n5095));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3936_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3937_3_lut (.I0(configRegister_adj_1521[11]), .I1(cmd[19]), 
            .I2(wrtrigcfg[2]), .I3(GND_net), .O(n5096));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3937_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3938_3_lut (.I0(configRegister_adj_1521[12]), .I1(cmd[20]), 
            .I2(wrtrigcfg[2]), .I3(GND_net), .O(n5097));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3938_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3939_3_lut (.I0(configRegister_adj_1521[13]), .I1(cmd[21]), 
            .I2(wrtrigcfg[2]), .I3(GND_net), .O(n5098));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3939_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3940_3_lut (.I0(configRegister_adj_1521[14]), .I1(cmd[22]), 
            .I2(wrtrigcfg[2]), .I3(GND_net), .O(n5099));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3940_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3941_3_lut (.I0(configRegister_adj_1521[15]), .I1(cmd[23]), 
            .I2(wrtrigcfg[2]), .I3(GND_net), .O(n5100));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3941_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3942_3_lut (.I0(configRegister_adj_1521[16]), .I1(cmd[24]), 
            .I2(wrtrigcfg[2]), .I3(GND_net), .O(n5101));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3942_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3943_3_lut (.I0(configRegister_adj_1521[17]), .I1(cmd[25]), 
            .I2(wrtrigcfg[2]), .I3(GND_net), .O(n5102));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3943_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3944_3_lut (.I0(configRegister_adj_1521[20]), .I1(cmd[28]), 
            .I2(wrtrigcfg[2]), .I3(GND_net), .O(n5103));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3944_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3945_3_lut (.I0(configRegister_adj_1521[21]), .I1(cmd[29]), 
            .I2(wrtrigcfg[2]), .I3(GND_net), .O(n5104));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3945_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3946_3_lut (.I0(configRegister_adj_1521[22]), .I1(cmd[30]), 
            .I2(wrtrigcfg[2]), .I3(GND_net), .O(n5105));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3946_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3947_3_lut (.I0(configRegister_adj_1521[23]), .I1(cmd[31]), 
            .I2(wrtrigcfg[2]), .I3(GND_net), .O(n5106));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3947_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3948_3_lut (.I0(configRegister_adj_1521[24]), .I1(cmd[32]), 
            .I2(wrtrigcfg[2]), .I3(GND_net), .O(n5107));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3948_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3949_3_lut (.I0(configRegister_adj_1521[26]), .I1(cmd[34]), 
            .I2(wrtrigcfg[2]), .I3(GND_net), .O(n5108));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3949_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3763_3_lut (.I0(divider[15]), .I1(cmd[23]), .I2(wrDivider), 
            .I3(GND_net), .O(n4922));   // ../src/sampler.vhd(67[3] 95[10])
    defparam i3763_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3951_3_lut (.I0(maskRegister_adj_1567[1]), .I1(cmd[9]), .I2(wrtrigmask[3]), 
            .I3(GND_net), .O(n5110));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3951_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3952_3_lut (.I0(maskRegister_adj_1567[2]), .I1(cmd[10]), .I2(wrtrigmask[3]), 
            .I3(GND_net), .O(n5111));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3952_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3764_3_lut (.I0(divider[16]), .I1(cmd[24]), .I2(wrDivider), 
            .I3(GND_net), .O(n4923));   // ../src/sampler.vhd(67[3] 95[10])
    defparam i3764_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3953_3_lut (.I0(maskRegister_adj_1567[3]), .I1(cmd[11]), .I2(wrtrigmask[3]), 
            .I3(GND_net), .O(n5112));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3953_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3954_3_lut (.I0(maskRegister_adj_1567[4]), .I1(cmd[12]), .I2(wrtrigmask[3]), 
            .I3(GND_net), .O(n5113));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3954_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3710_3_lut_4_lut (.I0(memoryOut[7]), .I1(syncedInput[7]), .I2(wrDivider), 
            .I3(ready50_N_581), .O(n4869));   // ../src/sampler.vhd(67[3] 95[10])
    defparam i3710_3_lut_4_lut.LUT_INIT = 16'hacaa;
    SB_LUT4 i3955_3_lut (.I0(maskRegister_adj_1567[5]), .I1(cmd[13]), .I2(wrtrigmask[3]), 
            .I3(GND_net), .O(n5114));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3955_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3709_3_lut_4_lut (.I0(memoryOut[6]), .I1(syncedInput[6]), .I2(wrDivider), 
            .I3(ready50_N_581), .O(n4868));   // ../src/sampler.vhd(67[3] 95[10])
    defparam i3709_3_lut_4_lut.LUT_INIT = 16'hacaa;
    SB_LUT4 i3956_3_lut (.I0(maskRegister_adj_1567[6]), .I1(cmd[14]), .I2(wrtrigmask[3]), 
            .I3(GND_net), .O(n5115));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3956_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3957_3_lut (.I0(maskRegister_adj_1567[7]), .I1(cmd[15]), .I2(wrtrigmask[3]), 
            .I3(GND_net), .O(n5116));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3957_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3708_3_lut_4_lut (.I0(memoryOut[5]), .I1(syncedInput[5]), .I2(wrDivider), 
            .I3(ready50_N_581), .O(n4867));   // ../src/sampler.vhd(67[3] 95[10])
    defparam i3708_3_lut_4_lut.LUT_INIT = 16'hacaa;
    SB_LUT4 i3683_3_lut (.I0(flagInverted), .I1(cmd[15]), .I2(wrFlags), 
            .I3(GND_net), .O(n4842));   // ../src/flags.vhd(52[3] 57[10])
    defparam i3683_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_127 (.I0(cmd[21]), .I1(cmd[22]), .I2(n3753), 
            .I3(n1), .O(n8232));   // ../src/receiver.vhd(77[3] 86[10])
    defparam i12_4_lut_adj_127.LUT_INIT = 16'hca0a;
    SB_LUT4 i3958_3_lut (.I0(valueRegister_adj_1568[1]), .I1(cmd[9]), .I2(wrtrigval[3]), 
            .I3(GND_net), .O(n5117));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3958_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_128 (.I0(cmd[11]), .I1(cmd[12]), .I2(n3753), 
            .I3(n1), .O(n8252));   // ../src/receiver.vhd(77[3] 86[10])
    defparam i12_4_lut_adj_128.LUT_INIT = 16'hca0a;
    SB_LUT4 i3684_3_lut (.I0(flagDemux), .I1(cmd[8]), .I2(wrFlags), .I3(GND_net), 
            .O(n4843));   // ../src/flags.vhd(52[3] 57[10])
    defparam i3684_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3960_3_lut (.I0(valueRegister_adj_1568[2]), .I1(cmd[10]), .I2(wrtrigval[3]), 
            .I3(GND_net), .O(n5119));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3960_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3685_3_lut (.I0(flagFilter), .I1(cmd[9]), .I2(wrFlags), .I3(GND_net), 
            .O(n4844));   // ../src/flags.vhd(52[3] 57[10])
    defparam i3685_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_129 (.I0(cmd[20]), .I1(cmd[21]), .I2(n3753), 
            .I3(n1), .O(n8234));   // ../src/receiver.vhd(77[3] 86[10])
    defparam i12_4_lut_adj_129.LUT_INIT = 16'hca0a;
    SB_LUT4 i3961_3_lut (.I0(valueRegister_adj_1568[3]), .I1(cmd[11]), .I2(wrtrigval[3]), 
            .I3(GND_net), .O(n5120));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3961_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3962_3_lut (.I0(valueRegister_adj_1568[4]), .I1(cmd[12]), .I2(wrtrigval[3]), 
            .I3(GND_net), .O(n5121));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3962_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3707_3_lut_4_lut (.I0(memoryOut[4]), .I1(syncedInput[4]), .I2(wrDivider), 
            .I3(ready50_N_581), .O(n4866));   // ../src/sampler.vhd(67[3] 95[10])
    defparam i3707_3_lut_4_lut.LUT_INIT = 16'hacaa;
    SB_LUT4 i1_4_lut (.I0(bytes[2]), .I1(n4248), .I2(bytes[0]), .I3(bytes[1]), 
            .O(n1320));   // ../src/transmitter.vhd(68[9:14])
    defparam i1_4_lut.LUT_INIT = 16'hc880;
    SB_LUT4 i1_4_lut_adj_130 (.I0(bytes[0]), .I1(n4248), .I2(bytes[1]), 
            .I3(bytes[2]), .O(n1336));   // ../src/transmitter.vhd(68[9:14])
    defparam i1_4_lut_adj_130.LUT_INIT = 16'hc8c0;
    SB_LUT4 i3765_3_lut (.I0(divider[17]), .I1(cmd[25]), .I2(wrDivider), 
            .I3(GND_net), .O(n4924));   // ../src/sampler.vhd(67[3] 95[10])
    defparam i3765_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3963_3_lut (.I0(valueRegister_adj_1568[5]), .I1(cmd[13]), .I2(wrtrigval[3]), 
            .I3(GND_net), .O(n5122));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3963_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3964_3_lut (.I0(valueRegister_adj_1568[6]), .I1(cmd[14]), .I2(wrtrigval[3]), 
            .I3(GND_net), .O(n5123));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3964_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3965_3_lut (.I0(valueRegister_adj_1568[7]), .I1(cmd[15]), .I2(wrtrigval[3]), 
            .I3(GND_net), .O(n5124));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3965_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3766_3_lut (.I0(divider[18]), .I1(cmd[26]), .I2(wrDivider), 
            .I3(GND_net), .O(n4925));   // ../src/sampler.vhd(67[3] 95[10])
    defparam i3766_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3966_3_lut (.I0(configRegister_adj_1569[1]), .I1(cmd[9]), .I2(wrtrigcfg[3]), 
            .I3(GND_net), .O(n5125));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3966_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3706_3_lut_4_lut (.I0(memoryOut[3]), .I1(syncedInput[3]), .I2(wrDivider), 
            .I3(ready50_N_581), .O(n4865));   // ../src/sampler.vhd(67[3] 95[10])
    defparam i3706_3_lut_4_lut.LUT_INIT = 16'hacaa;
    SB_LUT4 i3967_3_lut (.I0(configRegister_adj_1569[2]), .I1(cmd[10]), 
            .I2(wrtrigcfg[3]), .I3(GND_net), .O(n5126));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3967_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3705_3_lut_4_lut (.I0(memoryOut[2]), .I1(syncedInput[2]), .I2(wrDivider), 
            .I3(ready50_N_581), .O(n4864));   // ../src/sampler.vhd(67[3] 95[10])
    defparam i3705_3_lut_4_lut.LUT_INIT = 16'hacaa;
    SB_LUT4 i3968_3_lut (.I0(configRegister_adj_1569[3]), .I1(cmd[11]), 
            .I2(wrtrigcfg[3]), .I3(GND_net), .O(n5127));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3968_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3969_3_lut (.I0(configRegister_adj_1569[4]), .I1(cmd[12]), 
            .I2(wrtrigcfg[3]), .I3(GND_net), .O(n5128));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3969_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3970_3_lut (.I0(configRegister_adj_1569[5]), .I1(cmd[13]), 
            .I2(wrtrigcfg[3]), .I3(GND_net), .O(n5129));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3970_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 testcnt_i_917_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(testcnt_c_7), 
            .I3(n7868), .O(n38)) /* synthesis syn_instantiated=1 */ ;
    defparam testcnt_i_917_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 testcnt_i_917_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(testcnt_c_6), 
            .I3(n7867), .O(n39)) /* synthesis syn_instantiated=1 */ ;
    defparam testcnt_i_917_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i3767_3_lut (.I0(divider[19]), .I1(cmd[27]), .I2(wrDivider), 
            .I3(GND_net), .O(n4926));   // ../src/sampler.vhd(67[3] 95[10])
    defparam i3767_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3971_3_lut (.I0(configRegister_adj_1569[6]), .I1(cmd[14]), 
            .I2(wrtrigcfg[3]), .I3(GND_net), .O(n5130));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3971_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3972_3_lut (.I0(configRegister_adj_1569[7]), .I1(cmd[15]), 
            .I2(wrtrigcfg[3]), .I3(GND_net), .O(n5131));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3972_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3973_3_lut (.I0(configRegister_adj_1569[8]), .I1(cmd[16]), 
            .I2(wrtrigcfg[3]), .I3(GND_net), .O(n5132));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3973_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3768_3_lut (.I0(divider[20]), .I1(cmd[28]), .I2(wrDivider), 
            .I3(GND_net), .O(n4927));   // ../src/sampler.vhd(67[3] 95[10])
    defparam i3768_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3974_3_lut (.I0(configRegister_adj_1569[9]), .I1(cmd[17]), 
            .I2(wrtrigcfg[3]), .I3(GND_net), .O(n5133));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3974_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3704_3_lut_4_lut (.I0(memoryOut[1]), .I1(syncedInput[1]), .I2(wrDivider), 
            .I3(ready50_N_581), .O(n4863));   // ../src/sampler.vhd(67[3] 95[10])
    defparam i3704_3_lut_4_lut.LUT_INIT = 16'hacaa;
    SB_LUT4 i12_4_lut_adj_131 (.I0(cmd[24]), .I1(cmd[25]), .I2(n3753), 
            .I3(n1), .O(n8226));   // ../src/receiver.vhd(77[3] 86[10])
    defparam i12_4_lut_adj_131.LUT_INIT = 16'hca0a;
    SB_LUT4 i3703_3_lut_4_lut (.I0(dataBuffer[30]), .I1(send), .I2(state_adj_1418[1]), 
            .I3(n4005), .O(n4862));   // ../src/transmitter.vhd(103[3] 180[10])
    defparam i3703_3_lut_4_lut.LUT_INIT = 16'h03aa;
    SB_LUT4 i3975_3_lut (.I0(configRegister_adj_1569[10]), .I1(cmd[18]), 
            .I2(wrtrigcfg[3]), .I3(GND_net), .O(n5134));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3975_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3976_3_lut (.I0(configRegister_adj_1569[11]), .I1(cmd[19]), 
            .I2(wrtrigcfg[3]), .I3(GND_net), .O(n5135));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3976_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_132 (.I0(cmd[23]), .I1(cmd[24]), .I2(n3753), 
            .I3(n1), .O(n8228));   // ../src/receiver.vhd(77[3] 86[10])
    defparam i12_4_lut_adj_132.LUT_INIT = 16'hca0a;
    SB_LUT4 i3977_3_lut (.I0(configRegister_adj_1569[12]), .I1(cmd[20]), 
            .I2(wrtrigcfg[3]), .I3(GND_net), .O(n5136));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3977_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3702_3_lut_4_lut (.I0(dataBuffer[28]), .I1(send), .I2(state_adj_1418[1]), 
            .I3(n4005), .O(n4861));   // ../src/transmitter.vhd(103[3] 180[10])
    defparam i3702_3_lut_4_lut.LUT_INIT = 16'h03aa;
    SB_LUT4 i3978_3_lut (.I0(configRegister_adj_1569[13]), .I1(cmd[21]), 
            .I2(wrtrigcfg[3]), .I3(GND_net), .O(n5137));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3978_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3979_3_lut (.I0(configRegister_adj_1569[14]), .I1(cmd[22]), 
            .I2(wrtrigcfg[3]), .I3(GND_net), .O(n5138));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3979_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3980_3_lut (.I0(configRegister_adj_1569[15]), .I1(cmd[23]), 
            .I2(wrtrigcfg[3]), .I3(GND_net), .O(n5139));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3980_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3981_3_lut (.I0(configRegister_adj_1569[16]), .I1(cmd[24]), 
            .I2(wrtrigcfg[3]), .I3(GND_net), .O(n5140));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3981_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3982_3_lut (.I0(configRegister_adj_1569[17]), .I1(cmd[25]), 
            .I2(wrtrigcfg[3]), .I3(GND_net), .O(n5141));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3982_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3701_3_lut_4_lut (.I0(dataBuffer[25]), .I1(send), .I2(state_adj_1418[1]), 
            .I3(n4005), .O(n4860));   // ../src/transmitter.vhd(103[3] 180[10])
    defparam i3701_3_lut_4_lut.LUT_INIT = 16'h03aa;
    SB_LUT4 i3983_3_lut (.I0(configRegister_adj_1569[20]), .I1(cmd[28]), 
            .I2(wrtrigcfg[3]), .I3(GND_net), .O(n5142));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3983_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3769_3_lut (.I0(divider[21]), .I1(cmd[29]), .I2(wrDivider), 
            .I3(GND_net), .O(n4928));   // ../src/sampler.vhd(67[3] 95[10])
    defparam i3769_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3984_3_lut (.I0(configRegister_adj_1569[21]), .I1(cmd[29]), 
            .I2(wrtrigcfg[3]), .I3(GND_net), .O(n5143));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3984_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3985_3_lut (.I0(configRegister_adj_1569[22]), .I1(cmd[30]), 
            .I2(wrtrigcfg[3]), .I3(GND_net), .O(n5144));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3985_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3986_3_lut (.I0(configRegister_adj_1569[23]), .I1(cmd[31]), 
            .I2(wrtrigcfg[3]), .I3(GND_net), .O(n5145));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3986_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3987_3_lut (.I0(configRegister_adj_1569[24]), .I1(cmd[32]), 
            .I2(wrtrigcfg[3]), .I3(GND_net), .O(n5146));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3987_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3988_3_lut (.I0(configRegister_adj_1569[26]), .I1(cmd[34]), 
            .I2(wrtrigcfg[3]), .I3(GND_net), .O(n5147));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3988_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_133 (.I0(cmd[10]), .I1(cmd[11]), .I2(n3753), 
            .I3(n1), .O(n8254));   // ../src/receiver.vhd(77[3] 86[10])
    defparam i12_4_lut_adj_133.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_134 (.I0(cmd[9]), .I1(cmd[10]), .I2(n3753), 
            .I3(n1), .O(n8256));   // ../src/receiver.vhd(77[3] 86[10])
    defparam i12_4_lut_adj_134.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_135 (.I0(cmd[22]), .I1(cmd[23]), .I2(n3753), 
            .I3(n1), .O(n8230));   // ../src/receiver.vhd(77[3] 86[10])
    defparam i12_4_lut_adj_135.LUT_INIT = 16'hca0a;
    SB_LUT4 i14_4_lut (.I0(byteDone), .I1(disabled), .I2(writeByte), .I3(n6749), 
            .O(n6));   // ../src/transmitter.vhd(79[3] 96[10])
    defparam i14_4_lut.LUT_INIT = 16'hcacf;
    SB_LUT4 i3770_3_lut (.I0(divider[22]), .I1(cmd[30]), .I2(wrDivider), 
            .I3(GND_net), .O(n4929));   // ../src/sampler.vhd(67[3] 95[10])
    defparam i3770_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3771_3_lut (.I0(divider[23]), .I1(cmd[31]), .I2(wrDivider), 
            .I3(GND_net), .O(n4930));   // ../src/sampler.vhd(67[3] 95[10])
    defparam i3771_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_136 (.I0(cmd[36]), .I1(cmd[37]), .I2(n3753), 
            .I3(n1), .O(n8260));   // ../src/receiver.vhd(77[3] 86[10])
    defparam i12_4_lut_adj_136.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_137 (.I0(cmd[35]), .I1(cmd[36]), .I2(n3753), 
            .I3(n1), .O(n8262));   // ../src/receiver.vhd(77[3] 86[10])
    defparam i12_4_lut_adj_137.LUT_INIT = 16'hca0a;
    SB_LUT4 i3772_3_lut (.I0(maskRegister[1]), .I1(cmd[9]), .I2(wrtrigmask[0]), 
            .I3(GND_net), .O(n4931));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3772_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_138 (.I0(cmd[34]), .I1(cmd[35]), .I2(n3753), 
            .I3(n1), .O(n8264));   // ../src/receiver.vhd(77[3] 86[10])
    defparam i12_4_lut_adj_138.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_139 (.I0(cmd[33]), .I1(cmd[34]), .I2(n3753), 
            .I3(n1), .O(n8266));   // ../src/receiver.vhd(77[3] 86[10])
    defparam i12_4_lut_adj_139.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_140 (.I0(cmd[32]), .I1(cmd[33]), .I2(n3753), 
            .I3(n1), .O(n8268));   // ../src/receiver.vhd(77[3] 86[10])
    defparam i12_4_lut_adj_140.LUT_INIT = 16'hca0a;
    SB_CARRY testcnt_i_917_add_4_8 (.CI(n7867), .I0(GND_net), .I1(testcnt_c_6), 
            .CO(n7868));
    SB_LUT4 i3700_3_lut_4_lut (.I0(dataBuffer[24]), .I1(send), .I2(state_adj_1418[1]), 
            .I3(n4005), .O(n4859));   // ../src/transmitter.vhd(103[3] 180[10])
    defparam i3700_3_lut_4_lut.LUT_INIT = 16'h03aa;
    SB_LUT4 i12_4_lut_adj_141 (.I0(cmd[31]), .I1(cmd[32]), .I2(n3753), 
            .I3(n1), .O(n8270));   // ../src/receiver.vhd(77[3] 86[10])
    defparam i12_4_lut_adj_141.LUT_INIT = 16'hca0a;
    SB_LUT4 testcnt_i_917_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(testcnt_c_5), 
            .I3(n7866), .O(n40)) /* synthesis syn_instantiated=1 */ ;
    defparam testcnt_i_917_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_142 (.I0(cmd[30]), .I1(cmd[31]), .I2(n3753), 
            .I3(n1), .O(n8272));   // ../src/receiver.vhd(77[3] 86[10])
    defparam i12_4_lut_adj_142.LUT_INIT = 16'hca0a;
    SB_DFF testcnt_i_917__i2 (.Q(testcnt_c_1), .C(xtalClock_c), .D(n44));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/numeric_std.vhd(1241[12:13])
    SB_LUT4 i12_4_lut_adj_143 (.I0(cmd[29]), .I1(cmd[30]), .I2(n3753), 
            .I3(n1), .O(n8274));   // ../src/receiver.vhd(77[3] 86[10])
    defparam i12_4_lut_adj_143.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_144 (.I0(cmd[28]), .I1(cmd[29]), .I2(n3753), 
            .I3(n1), .O(n8276));   // ../src/receiver.vhd(77[3] 86[10])
    defparam i12_4_lut_adj_144.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_145 (.I0(cmd[27]), .I1(cmd[28]), .I2(n3753), 
            .I3(n1), .O(n8278));   // ../src/receiver.vhd(77[3] 86[10])
    defparam i12_4_lut_adj_145.LUT_INIT = 16'hca0a;
    SB_LUT4 i3773_3_lut (.I0(maskRegister[2]), .I1(cmd[10]), .I2(wrtrigmask[0]), 
            .I3(GND_net), .O(n4932));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3773_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3774_3_lut (.I0(maskRegister[3]), .I1(cmd[11]), .I2(wrtrigmask[0]), 
            .I3(GND_net), .O(n4933));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3774_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY testcnt_i_917_add_4_7 (.CI(n7866), .I0(GND_net), .I1(testcnt_c_5), 
            .CO(n7867));
    SB_LUT4 testcnt_i_917_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(testcnt_c_4), 
            .I3(n7865), .O(n41)) /* synthesis syn_instantiated=1 */ ;
    defparam testcnt_i_917_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY testcnt_i_917_add_4_6 (.CI(n7865), .I0(GND_net), .I1(testcnt_c_4), 
            .CO(n7866));
    SB_LUT4 testcnt_i_917_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(testcnt_c_3), 
            .I3(n7864), .O(n42)) /* synthesis syn_instantiated=1 */ ;
    defparam testcnt_i_917_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY testcnt_i_917_add_4_5 (.CI(n7864), .I0(GND_net), .I1(testcnt_c_3), 
            .CO(n7865));
    SB_LUT4 testcnt_i_917_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(testcnt_c_2), 
            .I3(n7863), .O(n43)) /* synthesis syn_instantiated=1 */ ;
    defparam testcnt_i_917_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY testcnt_i_917_add_4_4 (.CI(n7863), .I0(GND_net), .I1(testcnt_c_2), 
            .CO(n7864));
    SB_LUT4 testcnt_i_917_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(testcnt_c_1), 
            .I3(n7862), .O(n44)) /* synthesis syn_instantiated=1 */ ;
    defparam testcnt_i_917_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY testcnt_i_917_add_4_3 (.CI(n7862), .I0(GND_net), .I1(testcnt_c_1), 
            .CO(n7863));
    SB_LUT4 testcnt_i_917_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(testcnt_c_0), 
            .I3(VCC_net), .O(n45)) /* synthesis syn_instantiated=1 */ ;
    defparam testcnt_i_917_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY testcnt_i_917_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(testcnt_c_0), 
            .CO(n7862));
    SB_LUT4 i12_4_lut_adj_146 (.I0(cmd[25]), .I1(cmd[26]), .I2(n3753), 
            .I3(n1), .O(n8212));   // ../src/receiver.vhd(77[3] 86[10])
    defparam i12_4_lut_adj_146.LUT_INIT = 16'hca0a;
    SB_LUT4 i3695_3_lut_4_lut (.I0(dataBuffer[22]), .I1(send), .I2(state_adj_1418[1]), 
            .I3(n4005), .O(n4854));   // ../src/transmitter.vhd(103[3] 180[10])
    defparam i3695_3_lut_4_lut.LUT_INIT = 16'h03aa;
    SB_LUT4 i3694_3_lut_4_lut (.I0(dataBuffer[19]), .I1(send), .I2(state_adj_1418[1]), 
            .I3(n4005), .O(n4853));   // ../src/transmitter.vhd(103[3] 180[10])
    defparam i3694_3_lut_4_lut.LUT_INIT = 16'h03aa;
    SB_LUT4 i3775_3_lut (.I0(maskRegister[4]), .I1(cmd[12]), .I2(wrtrigmask[0]), 
            .I3(GND_net), .O(n4934));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3775_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i7565_3_lut (.I0(bytes[1]), .I1(bytes[2]), .I2(bytes[0]), 
            .I3(GND_net), .O(state_1__N_371[1]));   // ../src/transmitter.vhd(103[3] 180[10])
    defparam i7565_3_lut.LUT_INIT = 16'hfbfb;
    SB_LUT4 i20_4_lut (.I0(n234), .I1(state_1__N_371[1]), .I2(state_adj_1418[1]), 
            .I3(state_adj_1418[0]), .O(n8336));   // ../src/transmitter.vhd(103[3] 180[10])
    defparam i20_4_lut.LUT_INIT = 16'h0c50;
    SB_LUT4 i3693_3_lut_4_lut (.I0(dataBuffer[18]), .I1(send), .I2(state_adj_1418[1]), 
            .I3(n4005), .O(n4852));   // ../src/transmitter.vhd(103[3] 180[10])
    defparam i3693_3_lut_4_lut.LUT_INIT = 16'h03aa;
    SB_LUT4 i3692_3_lut_4_lut (.I0(dataBuffer[14]), .I1(send), .I2(state_adj_1418[1]), 
            .I3(n4005), .O(n4851));   // ../src/transmitter.vhd(103[3] 180[10])
    defparam i3692_3_lut_4_lut.LUT_INIT = 16'h03aa;
    SB_DFF testcnt_i_917__i3 (.Q(testcnt_c_2), .C(xtalClock_c), .D(n43));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/numeric_std.vhd(1241[12:13])
    SB_LUT4 i3720_3_lut (.I0(fwd[2]), .I1(cmd[26]), .I2(wrsize), .I3(GND_net), 
            .O(n4879));   // ../src/controller.vhd(161[3] 168[10])
    defparam i3720_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF testcnt_i_917__i4 (.Q(testcnt_c_3), .C(xtalClock_c), .D(n42));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/numeric_std.vhd(1241[12:13])
    SB_DFF testcnt_i_917__i5 (.Q(testcnt_c_4), .C(xtalClock_c), .D(n41));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/numeric_std.vhd(1241[12:13])
    SB_DFF testcnt_i_917__i6 (.Q(testcnt_c_5), .C(xtalClock_c), .D(n40));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/numeric_std.vhd(1241[12:13])
    SB_DFF testcnt_i_917__i7 (.Q(testcnt_c_6), .C(xtalClock_c), .D(n39));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/numeric_std.vhd(1241[12:13])
    SB_DFF testcnt_i_917__i8 (.Q(testcnt_c_7), .C(xtalClock_c), .D(n38));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/numeric_std.vhd(1241[12:13])
    SB_LUT4 i3776_3_lut (.I0(maskRegister[5]), .I1(cmd[13]), .I2(wrtrigmask[0]), 
            .I3(GND_net), .O(n4935));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3776_3_lut.LUT_INIT = 16'hcaca;
    \GENERIC_FIFO(8,1024)  GENERIC_FIFO_1 (.GND_net(GND_net), .memoryOut({memoryOut}), 
            .outputdata({outputdata}), .xtalClock_c(xtalClock_c), .VCC_net(VCC_net), 
            .send(send), .sampleReady(sampleReady), .debugleds_c_1(debugleds_c_1));   // ../src/la.vhd(250[19:43])
    SB_LUT4 i3721_3_lut (.I0(fwd[3]), .I1(cmd[27]), .I2(wrsize), .I3(GND_net), 
            .O(n4880));   // ../src/controller.vhd(161[3] 168[10])
    defparam i3721_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3722_3_lut (.I0(fwd[4]), .I1(cmd[28]), .I2(wrsize), .I3(GND_net), 
            .O(n4881));   // ../src/controller.vhd(161[3] 168[10])
    defparam i3722_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3777_3_lut (.I0(maskRegister[6]), .I1(cmd[14]), .I2(wrtrigmask[0]), 
            .I3(GND_net), .O(n4936));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3777_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3723_3_lut (.I0(fwd[5]), .I1(cmd[29]), .I2(wrsize), .I3(GND_net), 
            .O(n4882));   // ../src/controller.vhd(161[3] 168[10])
    defparam i3723_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3778_3_lut (.I0(maskRegister[7]), .I1(cmd[15]), .I2(wrtrigmask[0]), 
            .I3(GND_net), .O(n4937));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3778_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_147 (.I0(cmd[16]), .I1(cmd[17]), .I2(n3753), 
            .I3(n1), .O(n8242));   // ../src/receiver.vhd(77[3] 86[10])
    defparam i12_4_lut_adj_147.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_148 (.I0(cmd[15]), .I1(cmd[16]), .I2(n3753), 
            .I3(n1), .O(n8244));   // ../src/receiver.vhd(77[3] 86[10])
    defparam i12_4_lut_adj_148.LUT_INIT = 16'hca0a;
    SB_LUT4 i3616_3_lut_4_lut (.I0(memoryOut[0]), .I1(syncedInput[0]), .I2(wrDivider), 
            .I3(ready50_N_581), .O(n4775));   // ../src/sampler.vhd(67[3] 95[10])
    defparam i3616_3_lut_4_lut.LUT_INIT = 16'hacaa;
    GND i1 (.Y(GND_net));
    SB_LUT4 i3838_3_lut (.I0(valueRegister[1]), .I1(cmd[9]), .I2(wrtrigval[0]), 
            .I3(GND_net), .O(n4997));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3838_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_149 (.I0(cmd[14]), .I1(cmd[15]), .I2(n3753), 
            .I3(n1), .O(n8246));   // ../src/receiver.vhd(77[3] 86[10])
    defparam i12_4_lut_adj_149.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_3_lut_4_lut (.I0(state_adj_1418[1]), .I1(writeByte), .I2(state_1__N_371[1]), 
            .I3(state_adj_1418[0]), .O(n8324));   // ../src/transmitter.vhd(103[3] 180[10])
    defparam i1_3_lut_4_lut.LUT_INIT = 16'h5444;
    SB_LUT4 i12_4_lut_adj_150 (.I0(cmd[13]), .I1(cmd[14]), .I2(n3753), 
            .I3(n1), .O(n8248));   // ../src/receiver.vhd(77[3] 86[10])
    defparam i12_4_lut_adj_150.LUT_INIT = 16'hca0a;
    SB_LUT4 i3628_3_lut (.I0(bwd[0]), .I1(cmd[8]), .I2(wrsize), .I3(GND_net), 
            .O(n4787));   // ../src/controller.vhd(161[3] 168[10])
    defparam i3628_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3841_3_lut (.I0(valueRegister[2]), .I1(cmd[10]), .I2(wrtrigval[0]), 
            .I3(GND_net), .O(n5000));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3841_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3842_3_lut (.I0(valueRegister[3]), .I1(cmd[11]), .I2(wrtrigval[0]), 
            .I3(GND_net), .O(n5001));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3842_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3629_3_lut (.I0(divider[0]), .I1(cmd[8]), .I2(wrDivider), 
            .I3(GND_net), .O(n4788));   // ../src/sampler.vhd(67[3] 95[10])
    defparam i3629_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3630_3_lut (.I0(maskRegister[0]), .I1(cmd[8]), .I2(wrtrigmask[0]), 
            .I3(GND_net), .O(n4789));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3630_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3843_3_lut (.I0(valueRegister[4]), .I1(cmd[12]), .I2(wrtrigval[0]), 
            .I3(GND_net), .O(n5002));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3843_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3844_3_lut (.I0(valueRegister[5]), .I1(cmd[13]), .I2(wrtrigval[0]), 
            .I3(GND_net), .O(n5003));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3844_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3845_3_lut (.I0(valueRegister[6]), .I1(cmd[14]), .I2(wrtrigval[0]), 
            .I3(GND_net), .O(n5004));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3845_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3846_3_lut (.I0(valueRegister[7]), .I1(cmd[15]), .I2(wrtrigval[0]), 
            .I3(GND_net), .O(n5005));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3846_3_lut.LUT_INIT = 16'hcaca;
    \eia232(12000000,4,115200,32)  Inst_eia232 (.xtalClock_c(xtalClock_c), 
            .n1917(n1917), .n4801(n4801), .disabledGroupsReg({disabledGroupsReg}), 
            .n5070(n5070), .n5069(n5069), .n5068(n5068), .executePrev(executePrev), 
            .writeByte(writeByte), .n9(n9), .GND_net(GND_net), .n3615(n3615), 
            .state({state_adj_1418}), .busy(busy), .outputdata({outputdata}), 
            .send(send), .\state_1__N_371[1] (state_1__N_371[1]), .\dataBuffer[25] (dataBuffer[25]), 
            .n1320(n1320), .\dataBuffer[14] (dataBuffer[14]), .\dataBuffer[22] (dataBuffer[22]), 
            .\dataBuffer[30] (dataBuffer[30]), .n3493(n3493), .n4082(n4082), 
            .n4862(n4862), .n4861(n4861), .\dataBuffer[28] (dataBuffer[28]), 
            .n4005(n4005), .n4860(n4860), .n4859(n4859), .\dataBuffer[24] (dataBuffer[24]), 
            .n4854(n4854), .n4853(n4853), .\dataBuffer[19] (dataBuffer[19]), 
            .bytes({bytes}), .n4852(n4852), .\dataBuffer[18] (dataBuffer[18]), 
            .n4851(n4851), .disabled(disabled), .n4248(n4248), .n1336(n1336), 
            .n6749(n6749), .VCC_net(VCC_net), .n8336(n8336), .n6(n6), 
            .byteDone(byteDone), .n234(n234), .n8324(n8324), .tx_c(tx_c), 
            .\nstate_2__N_241[0] (nstate_2__N_241[0]), .n12(n12), .arm_N_438(arm_N_438), 
            .nstate_2__N_139_c_1(nstate_2__N_139_c_1), .n8240(n8240), .\cmd[17] (cmd[17]), 
            .n8238(n8238), .\cmd[18] (cmd[18]), .n8236(n8236), .\cmd[19] (cmd[19]), 
            .n8234(n8234), .\cmd[20] (cmd[20]), .n8232(n8232), .\cmd[21] (cmd[21]), 
            .\cmd[6] (cmd[6]), .wrspeed_N_432(wrspeed_N_432), .n5698(n5698), 
            .n8204(n8204), .\cmd[26] (cmd[26]), .n1(n1), .n3753(n3753), 
            .n8212(n8212), .\cmd[25] (cmd[25]), .n8230(n8230), .\cmd[22] (cmd[22]), 
            .wrtrigmask_3__N_416({wrtrigmask_3__N_416}), .n8228(n8228), 
            .\cmd[23] (cmd[23]), .n8226(n8226), .\cmd[24] (cmd[24]), .\cmd[39] (cmd[39]), 
            .wrsize_N_434(wrsize_N_434), .wrtrigval_3__N_423({wrtrigval_3__N_423}), 
            .\cmd[8] (cmd[8]), .execute(execute), .n8278(n8278), .\cmd[27] (cmd[27]), 
            .n8276(n8276), .\cmd[28] (cmd[28]), .n8274(n8274), .\cmd[29] (cmd[29]), 
            .n8272(n8272), .\cmd[30] (cmd[30]), .n8270(n8270), .\cmd[31] (cmd[31]), 
            .n8268(n8268), .\cmd[32] (cmd[32]), .n8266(n8266), .\cmd[33] (cmd[33]), 
            .n8264(n8264), .\cmd[34] (cmd[34]), .n8262(n8262), .\cmd[35] (cmd[35]), 
            .n8260(n8260), .\cmd[36] (cmd[36]), .n5170(n5170), .\cmd[37] (cmd[37]), 
            .n8196(n8196), .\cmd[38] (cmd[38]), .n8256(n8256), .\cmd[9] (cmd[9]), 
            .n8254(n8254), .\cmd[10] (cmd[10]), .n8252(n8252), .\cmd[11] (cmd[11]), 
            .n8250(n8250), .\cmd[12] (cmd[12]), .n8248(n8248), .\cmd[13] (cmd[13]), 
            .n8246(n8246), .\cmd[14] (cmd[14]), .n8244(n8244), .\cmd[15] (cmd[15]), 
            .n8242(n8242), .\cmd[16] (cmd[16]), .reset_N_440(reset_N_440), 
            .wrtrigcfg_3__N_427({wrtrigcfg_3__N_427}), .trxClock(trxClock));   // ../src/la.vhd(186[15:21])
    SB_LUT4 i3847_3_lut (.I0(configRegister[1]), .I1(cmd[9]), .I2(wrtrigcfg[0]), 
            .I3(GND_net), .O(n5006));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3847_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3848_3_lut (.I0(configRegister[2]), .I1(cmd[10]), .I2(wrtrigcfg[0]), 
            .I3(GND_net), .O(n5007));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3848_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3634_3_lut (.I0(valueRegister[0]), .I1(cmd[8]), .I2(wrtrigval[0]), 
            .I3(GND_net), .O(n4793));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3634_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3849_3_lut (.I0(configRegister[3]), .I1(cmd[11]), .I2(wrtrigcfg[0]), 
            .I3(GND_net), .O(n5008));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3849_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3850_3_lut (.I0(configRegister[4]), .I1(cmd[12]), .I2(wrtrigcfg[0]), 
            .I3(GND_net), .O(n5009));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3850_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3851_3_lut (.I0(configRegister[5]), .I1(cmd[13]), .I2(wrtrigcfg[0]), 
            .I3(GND_net), .O(n5010));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3851_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3852_3_lut (.I0(configRegister[6]), .I1(cmd[14]), .I2(wrtrigcfg[0]), 
            .I3(GND_net), .O(n5011));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3852_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3853_3_lut (.I0(configRegister[7]), .I1(cmd[15]), .I2(wrtrigcfg[0]), 
            .I3(GND_net), .O(n5012));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3853_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3724_3_lut (.I0(fwd[6]), .I1(cmd[30]), .I2(wrsize), .I3(GND_net), 
            .O(n4883));   // ../src/controller.vhd(161[3] 168[10])
    defparam i3724_3_lut.LUT_INIT = 16'hcaca;
    \core(8)  Inst_core (.xtalClock_c(xtalClock_c), .GND_net(GND_net), .\configRegister[8] (configRegister_adj_1569[8]), 
            .\configRegister[7] (configRegister_adj_1569[7]), .\cmd[35] (cmd[35]), 
            .wrtrigcfg({wrtrigcfg}), .\configRegister[6] (configRegister_adj_1569[6]), 
            .sampleReady(sampleReady), .\configRegister[5] (configRegister_adj_1569[5]), 
            .\configRegister[4] (configRegister_adj_1569[4]), .\configRegister[3] (configRegister_adj_1569[3]), 
            .\configRegister[16] (configRegister_adj_1569[16]), .\configRegister[17] (configRegister_adj_1569[17]), 
            .\configRegister[2] (configRegister_adj_1569[2]), .\configRegister[1] (configRegister_adj_1569[1]), 
            .VCC_net(VCC_net), .\configRegister[0] (configRegister_adj_1569[0]), 
            .\configRegister[22] (configRegister_adj_1569[22]), .\configRegister[23] (configRegister_adj_1569[23]), 
            .n4811(n4811), .n4810(n4810), .valueRegister({valueRegister_adj_1568}), 
            .n4806(n4806), .maskRegister({maskRegister_adj_1567}), .\configRegister[20] (configRegister_adj_1569[20]), 
            .memoryOut({memoryOut}), .\configRegister[21] (configRegister_adj_1569[21]), 
            .n5147(n5147), .\configRegister[26] (configRegister_adj_1569[26]), 
            .n5146(n5146), .\configRegister[24] (configRegister_adj_1569[24]), 
            .n5145(n5145), .n5144(n5144), .n5143(n5143), .n5142(n5142), 
            .n5141(n5141), .n5140(n5140), .n5139(n5139), .\configRegister[15] (configRegister_adj_1569[15]), 
            .n5138(n5138), .\configRegister[14] (configRegister_adj_1569[14]), 
            .n5137(n5137), .\configRegister[13] (configRegister_adj_1569[13]), 
            .n5136(n5136), .\configRegister[12] (configRegister_adj_1569[12]), 
            .n5135(n5135), .\configRegister[11] (configRegister_adj_1569[11]), 
            .n5134(n5134), .\configRegister[10] (configRegister_adj_1569[10]), 
            .n5133(n5133), .\configRegister[9] (configRegister_adj_1569[9]), 
            .n5132(n5132), .n5131(n5131), .n5130(n5130), .n5129(n5129), 
            .n5128(n5128), .n5127(n5127), .n5126(n5126), .n5125(n5125), 
            .n5124(n5124), .n5123(n5123), .n5122(n5122), .n5121(n5121), 
            .n5120(n5120), .n5119(n5119), .n5117(n5117), .n5116(n5116), 
            .n5115(n5115), .n5114(n5114), .n5113(n5113), .n5112(n5112), 
            .n5111(n5111), .n5110(n5110), .flagDemux(flagDemux), .\configRegister[24]_adj_136 (configRegister_adj_1521[24]), 
            .\configRegister[15]_adj_137 (configRegister_adj_1521[15]), .\configRegister[14]_adj_138 (configRegister_adj_1521[14]), 
            .\configRegister[13]_adj_139 (configRegister_adj_1521[13]), .\configRegister[12]_adj_140 (configRegister_adj_1521[12]), 
            .\configRegister[11]_adj_141 (configRegister_adj_1521[11]), .\configRegister[10]_adj_142 (configRegister_adj_1521[10]), 
            .n4805(n4805), .\configRegister[0]_adj_143 (configRegister_adj_1521[0]), 
            .n4804(n4804), .valueRegister_adj_256({valueRegister_adj_1520}), 
            .n4803(n4803), .maskRegister_adj_257({maskRegister_adj_1519}), 
            .\configRegister[9]_adj_160 (configRegister_adj_1521[9]), .\configRegister[26]_adj_161 (configRegister_adj_1521[26]), 
            .\configRegister[20]_adj_162 (configRegister_adj_1521[20]), .\configRegister[21]_adj_163 (configRegister_adj_1521[21]), 
            .\configRegister[8]_adj_164 (configRegister_adj_1521[8]), .\configRegister[7]_adj_165 (configRegister_adj_1521[7]), 
            .\configRegister[6]_adj_166 (configRegister_adj_1521[6]), .n5108(n5108), 
            .n5107(n5107), .n5106(n5106), .\configRegister[23]_adj_167 (configRegister_adj_1521[23]), 
            .n5105(n5105), .\configRegister[22]_adj_168 (configRegister_adj_1521[22]), 
            .n5104(n5104), .n5103(n5103), .n5102(n5102), .\configRegister[17]_adj_169 (configRegister_adj_1521[17]), 
            .n5101(n5101), .\configRegister[16]_adj_170 (configRegister_adj_1521[16]), 
            .n5100(n5100), .n5099(n5099), .n5098(n5098), .n5097(n5097), 
            .n5096(n5096), .n5095(n5095), .n5094(n5094), .n5093(n5093), 
            .n5092(n5092), .n5091(n5091), .n5090(n5090), .\configRegister[5]_adj_171 (configRegister_adj_1521[5]), 
            .n5089(n5089), .\configRegister[4]_adj_172 (configRegister_adj_1521[4]), 
            .n5088(n5088), .\configRegister[3]_adj_173 (configRegister_adj_1521[3]), 
            .n5087(n5087), .\configRegister[2]_adj_174 (configRegister_adj_1521[2]), 
            .n5086(n5086), .\configRegister[1]_adj_175 (configRegister_adj_1521[1]), 
            .n5085(n5085), .n5084(n5084), .n5083(n5083), .n5082(n5082), 
            .n5081(n5081), .n5080(n5080), .n5079(n5079), .n5078(n5078), 
            .n5077(n5077), .n5076(n5076), .n5075(n5075), .n5074(n5074), 
            .n5073(n5073), .n5071(n5071), .\configRegister[24]_adj_176 (configRegister_adj_1473[24]), 
            .maskRegister_adj_258({maskRegister_adj_1471}), .n4800(n4800), 
            .\configRegister[0]_adj_185 (configRegister_adj_1473[0]), .n4799(n4799), 
            .valueRegister_adj_259({valueRegister_adj_1472}), .n4798(n4798), 
            .\configRegister[26]_adj_194 (configRegister_adj_1473[26]), .\configRegister[20]_adj_195 (configRegister_adj_1473[20]), 
            .\configRegister[21]_adj_196 (configRegister_adj_1473[21]), .n5066(n5066), 
            .n5065(n5065), .n5064(n5064), .\configRegister[23]_adj_197 (configRegister_adj_1473[23]), 
            .n5063(n5063), .\configRegister[22]_adj_198 (configRegister_adj_1473[22]), 
            .n5062(n5062), .n5061(n5061), .n5060(n5060), .\configRegister[17]_adj_199 (configRegister_adj_1473[17]), 
            .n5059(n5059), .\configRegister[16]_adj_200 (configRegister_adj_1473[16]), 
            .n5058(n5058), .\configRegister[15]_adj_201 (configRegister_adj_1473[15]), 
            .n5057(n5057), .\configRegister[14]_adj_202 (configRegister_adj_1473[14]), 
            .n5056(n5056), .\configRegister[13]_adj_203 (configRegister_adj_1473[13]), 
            .n5055(n5055), .\configRegister[12]_adj_204 (configRegister_adj_1473[12]), 
            .n5054(n5054), .\configRegister[11]_adj_205 (configRegister_adj_1473[11]), 
            .n5053(n5053), .\configRegister[10]_adj_206 (configRegister_adj_1473[10]), 
            .n5052(n5052), .\configRegister[9]_adj_207 (configRegister_adj_1473[9]), 
            .n5051(n5051), .\configRegister[8]_adj_208 (configRegister_adj_1473[8]), 
            .n5050(n5050), .\configRegister[7]_adj_209 (configRegister_adj_1473[7]), 
            .n5049(n5049), .\configRegister[6]_adj_210 (configRegister_adj_1473[6]), 
            .n5048(n5048), .\configRegister[5]_adj_211 (configRegister_adj_1473[5]), 
            .n5047(n5047), .\configRegister[4]_adj_212 (configRegister_adj_1473[4]), 
            .n5046(n5046), .\configRegister[3]_adj_213 (configRegister_adj_1473[3]), 
            .n5045(n5045), .\configRegister[2]_adj_214 (configRegister_adj_1473[2]), 
            .n5044(n5044), .\configRegister[1]_adj_215 (configRegister_adj_1473[1]), 
            .n5043(n5043), .n5042(n5042), .n5041(n5041), .n5040(n5040), 
            .n5039(n5039), .n5038(n5038), .n5037(n5037), .n5036(n5036), 
            .n5035(n5035), .n5034(n5034), .n5033(n5033), .n5032(n5032), 
            .n5031(n5031), .n5030(n5030), .\configRegister[11]_adj_216 (configRegister[11]), 
            .\configRegister[10]_adj_217 (configRegister[10]), .\configRegister[9]_adj_218 (configRegister[9]), 
            .\configRegister[22]_adj_219 (configRegister[22]), .\configRegister[23]_adj_220 (configRegister[23]), 
            .\configRegister[8]_adj_221 (configRegister[8]), .\configRegister[7]_adj_222 (configRegister[7]), 
            .\configRegister[6]_adj_223 (configRegister[6]), .\configRegister[5]_adj_224 (configRegister[5]), 
            .\configRegister[4]_adj_225 (configRegister[4]), .\configRegister[3]_adj_226 (configRegister[3]), 
            .\configRegister[2]_adj_227 (configRegister[2]), .\configRegister[16]_adj_228 (configRegister[16]), 
            .\configRegister[17]_adj_229 (configRegister[17]), .\configRegister[24]_adj_230 (configRegister[24]), 
            .\configRegister[1]_adj_231 (configRegister[1]), .\configRegister[0]_adj_232 (configRegister[0]), 
            .maskRegister_adj_260({maskRegister}), .valueRegister_adj_261({valueRegister}), 
            .\configRegister[26]_adj_249 (configRegister[26]), .n4797(n4797), 
            .n4793(n4793), .\configRegister[20]_adj_250 (configRegister[20]), 
            .\configRegister[21]_adj_251 (configRegister[21]), .n4789(n4789), 
            .n5028(n5028), .n5027(n5027), .n5026(n5026), .n5025(n5025), 
            .n5024(n5024), .n5023(n5023), .n5022(n5022), .n5021(n5021), 
            .n5020(n5020), .\configRegister[15]_adj_252 (configRegister[15]), 
            .n5019(n5019), .\configRegister[14]_adj_253 (configRegister[14]), 
            .n5018(n5018), .\configRegister[13]_adj_254 (configRegister[13]), 
            .n5017(n5017), .\configRegister[12]_adj_255 (configRegister[12]), 
            .n5016(n5016), .n5015(n5015), .n5014(n5014), .n5013(n5013), 
            .n5012(n5012), .n5011(n5011), .n5010(n5010), .n5009(n5009), 
            .n5008(n5008), .n5007(n5007), .n5006(n5006), .n5005(n5005), 
            .n5004(n5004), .n5003(n5003), .n5002(n5002), .n5001(n5001), 
            .n5000(n5000), .n4997(n4997), .n4937(n4937), .n4936(n4936), 
            .n4935(n4935), .n4934(n4934), .n4933(n4933), .n4932(n4932), 
            .n4931(n4931), .input_c_0(input_c_0), .syncedInput({syncedInput}), 
            .flagFilter(flagFilter), .flagInverted(flagInverted), .input_c_1(input_c_1), 
            .input_c_2(input_c_2), .input_c_3(input_c_3), .input_c_4(input_c_4), 
            .input_c_5(input_c_5), .input_c_6(input_c_6), .input_c_7(input_c_7), 
            .ready50_N_581(ready50_N_581), .wrDivider(wrDivider), .divider({divider}), 
            .n4869(n4869), .n4868(n4868), .n4867(n4867), .n4866(n4866), 
            .n4865(n4865), .n4864(n4864), .n4863(n4863), .n4788(n4788), 
            .n4930(n4930), .n4929(n4929), .n4928(n4928), .n4927(n4927), 
            .n4926(n4926), .n4925(n4925), .n4924(n4924), .n4923(n4923), 
            .n4922(n4922), .n4921(n4921), .n4920(n4920), .n4919(n4919), 
            .n4918(n4918), .n4917(n4917), .n4916(n4916), .n4915(n4915), 
            .n4914(n4914), .n4913(n4913), .n4912(n4912), .n4911(n4911), 
            .n4910(n4910), .n4909(n4909), .n4908(n4908), .n4775(n4775), 
            .ready50_c(ready50_c), .n4844(n4844), .n4843(n4843), .n4842(n4842), 
            .reset_N_440(reset_N_440), .n1917(n1917), .wrtrigval_3__N_423({wrtrigval_3__N_423}), 
            .wrtrigval({wrtrigval}), .execute(execute), .executePrev(executePrev), 
            .wrtrigcfg_3__N_427({wrtrigcfg_3__N_427}), .wrtrigmask_3__N_416({wrtrigmask_3__N_416}), 
            .wrtrigmask({wrtrigmask}), .arm_N_438(arm_N_438), .wrFlags(wrFlags), 
            .wrsize_N_434(wrsize_N_434), .wrsize(wrsize), .wrspeed_N_432(wrspeed_N_432), 
            .n5698(n5698), .\cmd[6] (cmd[6]), .\nstate_2__N_241[0] (nstate_2__N_241[0]), 
            .n12(n12), .n4884(n4884), .\fwd[7] (fwd[7]), .n4883(n4883), 
            .\fwd[6] (fwd[6]), .n4882(n4882), .\fwd[5] (fwd[5]), .n4881(n4881), 
            .\fwd[4] (fwd[4]), .n4880(n4880), .\fwd[3] (fwd[3]), .n4879(n4879), 
            .\fwd[2] (fwd[2]), .n4875(n4875), .\fwd[1] (fwd[1]), .\cmd[38] (cmd[38]), 
            .send(send), .debugleds_c_1(debugleds_c_1), .\cmd[22] (cmd[22]), 
            .\fwd[0] (fwd[0]), .\fwd[10] (fwd[10]), .\fwd[13] (fwd[13]), 
            .\fwd[9] (fwd[9]), .\fwd[12] (fwd[12]), .\fwd[8] (fwd[8]), 
            .\cmd[39] (cmd[39]), .n3753(n3753), .n1(n1), .n8196(n8196), 
            .\cmd[37] (cmd[37]), .n5170(n5170), .\fwd[11] (fwd[11]), .\fwd[15] (fwd[15]), 
            .n4787(n4787), .\bwd[0] (bwd[0]), .busy(busy), .\bwd[1] (bwd[1]), 
            .\bwd[7] (bwd[7]), .\bwd[9] (bwd[9]), .\bwd[15] (bwd[15]), 
            .\bwd[6] (bwd[6]), .\bwd[5] (bwd[5]), .\bwd[3] (bwd[3]), .\bwd[4] (bwd[4]), 
            .\bwd[10] (bwd[10]), .\bwd[12] (bwd[12]), .\bwd[8] (bwd[8]), 
            .\bwd[11] (bwd[11]), .\bwd[2] (bwd[2]), .\bwd[13] (bwd[13]), 
            .n4907(n4907), .n4780(n4780), .n4905(n4905), .n4904(n4904), 
            .n4903(n4903), .n4902(n4902), .n4901(n4901), .n4900(n4900), 
            .n4899(n4899), .n4898(n4898), .n4897(n4897), .n4896(n4896), 
            .n4895(n4895), .n4894(n4894), .n4893(n4893), .n4892(n4892), 
            .n4890(n4890), .n4889(n4889), .n4888(n4888), .n4887(n4887), 
            .n4886(n4886), .n4885(n4885), .debugleds_c_0(debugleds_c_0));   // ../src/la.vhd(209[13:17])
    SB_LUT4 i3726_3_lut (.I0(fwd[8]), .I1(cmd[32]), .I2(wrsize), .I3(GND_net), 
            .O(n4885));   // ../src/controller.vhd(161[3] 168[10])
    defparam i3726_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3854_3_lut (.I0(configRegister[8]), .I1(cmd[16]), .I2(wrtrigcfg[0]), 
            .I3(GND_net), .O(n5013));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3854_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3855_3_lut (.I0(configRegister[9]), .I1(cmd[17]), .I2(wrtrigcfg[0]), 
            .I3(GND_net), .O(n5014));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3855_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3727_3_lut (.I0(fwd[9]), .I1(cmd[33]), .I2(wrsize), .I3(GND_net), 
            .O(n4886));   // ../src/controller.vhd(161[3] 168[10])
    defparam i3727_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_3_lut (.I0(trxClock), .I1(writeByte), .I2(n9), .I3(GND_net), 
            .O(n3615));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'hefef;
    SB_LUT4 i3856_3_lut (.I0(configRegister[10]), .I1(cmd[18]), .I2(wrtrigcfg[0]), 
            .I3(GND_net), .O(n5015));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3856_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3857_3_lut (.I0(configRegister[11]), .I1(cmd[19]), .I2(wrtrigcfg[0]), 
            .I3(GND_net), .O(n5016));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3857_3_lut.LUT_INIT = 16'hcaca;
    
endmodule
//
// Verilog Description of module \GENERIC_FIFO(8,1024) 
//

module \GENERIC_FIFO(8,1024)  (GND_net, memoryOut, outputdata, xtalClock_c, 
            VCC_net, send, sampleReady, debugleds_c_1);
    input GND_net;
    input [7:0]memoryOut;
    output [7:0]outputdata;
    input xtalClock_c;
    input VCC_net;
    input send;
    input sampleReady;
    input debugleds_c_1;
    
    wire xtalClock_c /* synthesis SET_AS_NETWORK=xtalClock_c, is_clock=1 */ ;   // ../src/la.vhd(44[3:12])
    wire [9:0]read_pointer;   // ../src/generic_fifo.vhd(56[12:24])
    wire [9:0]n1426;
    
    wire n7813, n7814;
    wire [9:0]write_pointer;   // ../src/generic_fifo.vhd(56[26:39])
    wire [9:0]n68;
    
    wire fifo_memory_N_983;
    wire [9:0]n45;
    
    wire n7837, n7838;
    wire [9:0]n14;
    
    wire n7811, n4721, n7836, n7809, n16;
    wire [13:0]level_9__N_876;
    wire [9:0]n1;
    
    wire n7835, n7834, n7812, n1392, level_9__N_900;
    wire [10:0]level_9__N_925;
    
    wire n7833, n8821, n141, n18, n20_adj_1274, n7832, n7831, 
        n7810, n7830, n7829, n8628, n8638, n8634, n8677, n8632, 
        n8630, n1396, n16_adj_1276, n18_adj_1277, n7828, n17_adj_1278, 
        n8654, n8650, n8681, n8820, n8819, n8818, n8817, n8816, 
        n8815, n8814, n8813, n8779, n7827, n7826, n7825, n7824, 
        n7823, n7822, n7821, n7820, n7819;
    wire [9:0]n1370;
    
    wire n7946;
    wire [9:0]n1381;
    
    wire n7818, n7945, n7944, n7817, n7943, n7816, n7942, n7941, 
        n7940, n7939, n7938, n2, n7937, n142, n7936, n7935, 
        n7934, n7933, n7932, n7931, n7930, n7929, n7815, n7844, 
        n7843, n7842, n7841, n7840, n7839, n16_adj_1279, n17_adj_1280;
    
    SB_LUT4 inv_692_i4_1_lut (.I0(read_pointer[3]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n1426[3]));   // ../src/generic_fifo.vhd(35[9] 44[16])
    defparam inv_692_i4_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY add_912_1372_add_1_add_2_7 (.CI(n7813), .I0(n1426[5]), .I1(GND_net), 
            .CO(n7814));
    SB_RAM1024x4 fifo_memory0 (.RDATA({outputdata[7:4]}), .RCLK(xtalClock_c), 
            .RCLKE(VCC_net), .RE(VCC_net), .RADDR({n68}), .WCLK(xtalClock_c), 
            .WCLKE(VCC_net), .WE(fifo_memory_N_983), .WADDR({write_pointer}), 
            .WDATA({memoryOut[7:4]}));
    defparam fifo_memory0.INIT_0 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam fifo_memory0.INIT_1 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam fifo_memory0.INIT_2 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam fifo_memory0.INIT_3 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam fifo_memory0.INIT_4 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam fifo_memory0.INIT_5 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam fifo_memory0.INIT_6 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam fifo_memory0.INIT_7 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam fifo_memory0.INIT_8 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam fifo_memory0.INIT_9 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam fifo_memory0.INIT_A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam fifo_memory0.INIT_B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam fifo_memory0.INIT_C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam fifo_memory0.INIT_D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam fifo_memory0.INIT_E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam fifo_memory0.INIT_F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    SB_LUT4 write_pointer_919_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(write_pointer[2]), 
            .I3(n7837), .O(n45[2])) /* synthesis syn_instantiated=1 */ ;
    defparam write_pointer_919_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY write_pointer_919_add_4_4 (.CI(n7837), .I0(GND_net), .I1(write_pointer[2]), 
            .CO(n7838));
    SB_LUT4 add_912_1372_add_1_add_2_5_lut (.I0(GND_net), .I1(n1426[3]), 
            .I2(GND_net), .I3(n7811), .O(n14[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_912_1372_add_1_add_2_5_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR write_pointer_919__i0 (.Q(write_pointer[0]), .C(xtalClock_c), 
            .E(fifo_memory_N_983), .D(n45[0]), .R(n4721));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/numeric_std.vhd(1241[12:13])
    SB_LUT4 write_pointer_919_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(write_pointer[1]), 
            .I3(n7836), .O(n45[1])) /* synthesis syn_instantiated=1 */ ;
    defparam write_pointer_919_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_912_1372_add_1_add_2_3_lut (.I0(GND_net), .I1(n1426[1]), 
            .I2(GND_net), .I3(n7809), .O(n14[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_912_1372_add_1_add_2_3_lut.LUT_INIT = 16'hC33C;
    SB_RAM1024x4 fifo_memory1 (.RDATA({outputdata[3:0]}), .RCLK(xtalClock_c), 
            .RCLKE(VCC_net), .RE(VCC_net), .RADDR({n68}), .WCLK(xtalClock_c), 
            .WCLKE(VCC_net), .WE(fifo_memory_N_983), .WADDR({write_pointer}), 
            .WDATA({memoryOut[3:0]}));
    defparam fifo_memory1.INIT_0 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam fifo_memory1.INIT_1 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam fifo_memory1.INIT_2 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam fifo_memory1.INIT_3 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam fifo_memory1.INIT_4 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam fifo_memory1.INIT_5 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam fifo_memory1.INIT_6 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam fifo_memory1.INIT_7 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam fifo_memory1.INIT_8 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam fifo_memory1.INIT_9 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam fifo_memory1.INIT_A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam fifo_memory1.INIT_B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam fifo_memory1.INIT_C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam fifo_memory1.INIT_D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam fifo_memory1.INIT_E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam fifo_memory1.INIT_F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    SB_LUT4 i5_2_lut (.I0(write_pointer[1]), .I1(write_pointer[0]), .I2(GND_net), 
            .I3(GND_net), .O(n16));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i5_2_lut.LUT_INIT = 16'h8888;
    SB_CARRY write_pointer_919_add_4_3 (.CI(n7836), .I0(GND_net), .I1(write_pointer[1]), 
            .CO(n7837));
    SB_LUT4 write_pointer_919_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(write_pointer[0]), 
            .I3(VCC_net), .O(n45[0])) /* synthesis syn_instantiated=1 */ ;
    defparam write_pointer_919_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY write_pointer_919_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(write_pointer[0]), 
            .CO(n7836));
    SB_LUT4 add_6561_11_lut (.I0(GND_net), .I1(n1[9]), .I2(n14[9]), .I3(n7835), 
            .O(level_9__N_876[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_6561_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_6561_10_lut (.I0(GND_net), .I1(n1[8]), .I2(n14[8]), .I3(n7834), 
            .O(level_9__N_876[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_6561_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_912_1372_add_1_add_2_6_lut (.I0(GND_net), .I1(n1426[4]), 
            .I2(GND_net), .I3(n7812), .O(n14[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_912_1372_add_1_add_2_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_6561_10 (.CI(n7834), .I0(n1[8]), .I1(n14[8]), .CO(n7835));
    SB_DFF read_pointer_921__i0 (.Q(read_pointer[0]), .C(xtalClock_c), .D(n68[0]));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/numeric_std.vhd(1241[12:13])
    SB_CARRY add_912_1372_add_1_add_2_6 (.CI(n7812), .I0(n1426[4]), .I1(GND_net), 
            .CO(n7813));
    SB_LUT4 i680_1_lut (.I0(n1392), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(level_9__N_900));   // ../src/generic_fifo.vhd(35[12:40])
    defparam i680_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 inv_6_i1_1_lut (.I0(read_pointer[0]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(level_9__N_925[0]));   // ../src/generic_fifo.vhd(41[19:24])
    defparam inv_6_i1_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY add_912_1372_add_1_add_2_5 (.CI(n7811), .I0(n1426[3]), .I1(GND_net), 
            .CO(n7812));
    SB_LUT4 add_6561_9_lut (.I0(GND_net), .I1(n1[7]), .I2(n14[7]), .I3(n7833), 
            .O(level_9__N_876[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_6561_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_6561_9 (.CI(n7833), .I0(n1[7]), .I1(n14[7]), .CO(n7834));
    SB_LUT4 read_pointer_921_mux_7_i10_3_lut (.I0(read_pointer[9]), .I1(n8821), 
            .I2(n141), .I3(GND_net), .O(n68[9]));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam read_pointer_921_mux_7_i10_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9_4_lut (.I0(write_pointer[6]), .I1(n18), .I2(write_pointer[3]), 
            .I3(fifo_memory_N_983), .O(n20_adj_1274));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i9_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 add_6561_8_lut (.I0(GND_net), .I1(n1[6]), .I2(n14[6]), .I3(n7832), 
            .O(level_9__N_876[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_6561_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_6561_8 (.CI(n7832), .I0(n1[6]), .I1(n14[6]), .CO(n7833));
    SB_LUT4 add_6561_7_lut (.I0(GND_net), .I1(n1[5]), .I2(n14[5]), .I3(n7831), 
            .O(level_9__N_876[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_6561_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_912_1372_add_1_add_2_3 (.CI(n7809), .I0(n1426[1]), .I1(GND_net), 
            .CO(n7810));
    SB_LUT4 inv_692_i2_1_lut (.I0(read_pointer[1]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n1426[1]));   // ../src/generic_fifo.vhd(35[9] 44[16])
    defparam inv_692_i2_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i10_4_lut (.I0(write_pointer[2]), .I1(n20_adj_1274), .I2(n16), 
            .I3(write_pointer[5]), .O(n4721));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i10_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 add_912_1372_add_1_add_2_4_lut (.I0(GND_net), .I1(n1426[2]), 
            .I2(GND_net), .I3(n7810), .O(n14[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_912_1372_add_1_add_2_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_6561_7 (.CI(n7831), .I0(n1[5]), .I1(n14[5]), .CO(n7832));
    SB_LUT4 add_6561_6_lut (.I0(GND_net), .I1(n1[4]), .I2(n14[4]), .I3(n7830), 
            .O(level_9__N_876[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_6561_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_912_1372_add_1_add_2_4 (.CI(n7810), .I0(n1426[2]), .I1(GND_net), 
            .CO(n7811));
    SB_CARRY add_6561_6 (.CI(n7830), .I0(n1[4]), .I1(n14[4]), .CO(n7831));
    SB_LUT4 inv_692_i3_1_lut (.I0(read_pointer[2]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n1426[2]));   // ../src/generic_fifo.vhd(35[9] 44[16])
    defparam inv_692_i3_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 add_912_1372_add_1_add_2_2_lut (.I0(GND_net), .I1(level_9__N_925[0]), 
            .I2(level_9__N_900), .I3(GND_net), .O(n14[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_912_1372_add_1_add_2_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_912_1372_add_1_add_2_2 (.CI(GND_net), .I0(level_9__N_925[0]), 
            .I1(level_9__N_900), .CO(n7809));
    SB_LUT4 add_6561_5_lut (.I0(GND_net), .I1(n1[3]), .I2(n14[3]), .I3(n7829), 
            .O(level_9__N_876[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_6561_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i7308_3_lut (.I0(n8628), .I1(n8638), .I2(n8634), .I3(GND_net), 
            .O(n8677));
    defparam i7308_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_4_lut (.I0(n1392), .I1(n8632), .I2(n8677), .I3(n8630), 
            .O(n1396));
    defparam i1_4_lut.LUT_INIT = 16'h0002;
    SB_LUT4 i6_4_lut (.I0(level_9__N_876[6]), .I1(level_9__N_876[2]), .I2(level_9__N_876[0]), 
            .I3(level_9__N_876[8]), .O(n16_adj_1276));   // ../src/generic_fifo.vhd(35[9] 44[16])
    defparam i6_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i8_3_lut (.I0(level_9__N_876[9]), .I1(n16_adj_1276), .I2(level_9__N_876[5]), 
            .I3(GND_net), .O(n18_adj_1277));   // ../src/generic_fifo.vhd(35[9] 44[16])
    defparam i8_3_lut.LUT_INIT = 16'hfefe;
    SB_CARRY add_6561_5 (.CI(n7829), .I0(n1[3]), .I1(n14[3]), .CO(n7830));
    SB_LUT4 add_6561_4_lut (.I0(GND_net), .I1(n1[2]), .I2(n14[2]), .I3(n7828), 
            .O(level_9__N_876[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_6561_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i7_4_lut (.I0(level_9__N_876[4]), .I1(level_9__N_876[3]), .I2(level_9__N_876[7]), 
            .I3(level_9__N_876[1]), .O(n17_adj_1278));   // ../src/generic_fifo.vhd(35[9] 44[16])
    defparam i7_4_lut.LUT_INIT = 16'hfffe;
    SB_DFF read_pointer_921__i1 (.Q(read_pointer[1]), .C(xtalClock_c), .D(n68[1]));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/numeric_std.vhd(1241[12:13])
    SB_LUT4 i1_4_lut_adj_119 (.I0(send), .I1(n1396), .I2(n17_adj_1278), 
            .I3(n18_adj_1277), .O(n141));   // ../src/generic_fifo.vhd(97[20:54])
    defparam i1_4_lut_adj_119.LUT_INIT = 16'h2220;
    SB_DFF read_pointer_921__i2 (.Q(read_pointer[2]), .C(xtalClock_c), .D(n68[2]));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/numeric_std.vhd(1241[12:13])
    SB_LUT4 i7286_4_lut (.I0(level_9__N_876[6]), .I1(level_9__N_876[2]), 
            .I2(level_9__N_876[0]), .I3(level_9__N_876[8]), .O(n8654));
    defparam i7286_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i7282_4_lut (.I0(level_9__N_876[4]), .I1(level_9__N_876[3]), 
            .I2(level_9__N_876[7]), .I3(level_9__N_876[1]), .O(n8650));
    defparam i7282_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i7312_4_lut (.I0(n8650), .I1(level_9__N_876[9]), .I2(n8654), 
            .I3(level_9__N_876[5]), .O(n8681));
    defparam i7312_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 read_pointer_921_mux_7_i9_3_lut (.I0(read_pointer[8]), .I1(n8820), 
            .I2(n141), .I3(GND_net), .O(n68[8]));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam read_pointer_921_mux_7_i9_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 read_pointer_921_mux_7_i8_3_lut (.I0(read_pointer[7]), .I1(n8819), 
            .I2(n141), .I3(GND_net), .O(n68[7]));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam read_pointer_921_mux_7_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 read_pointer_921_mux_7_i7_3_lut (.I0(read_pointer[6]), .I1(n8818), 
            .I2(n141), .I3(GND_net), .O(n68[6]));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam read_pointer_921_mux_7_i7_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 read_pointer_921_mux_7_i6_3_lut (.I0(read_pointer[5]), .I1(n8817), 
            .I2(n141), .I3(GND_net), .O(n68[5]));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam read_pointer_921_mux_7_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 read_pointer_921_mux_7_i5_3_lut (.I0(read_pointer[4]), .I1(n8816), 
            .I2(n141), .I3(GND_net), .O(n68[4]));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam read_pointer_921_mux_7_i5_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 read_pointer_921_mux_7_i4_3_lut (.I0(read_pointer[3]), .I1(n8815), 
            .I2(n141), .I3(GND_net), .O(n68[3]));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam read_pointer_921_mux_7_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF read_pointer_921__i3 (.Q(read_pointer[3]), .C(xtalClock_c), .D(n68[3]));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/numeric_std.vhd(1241[12:13])
    SB_DFF read_pointer_921__i4 (.Q(read_pointer[4]), .C(xtalClock_c), .D(n68[4]));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/numeric_std.vhd(1241[12:13])
    SB_DFF read_pointer_921__i5 (.Q(read_pointer[5]), .C(xtalClock_c), .D(n68[5]));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/numeric_std.vhd(1241[12:13])
    SB_DFF read_pointer_921__i6 (.Q(read_pointer[6]), .C(xtalClock_c), .D(n68[6]));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/numeric_std.vhd(1241[12:13])
    SB_DFF read_pointer_921__i7 (.Q(read_pointer[7]), .C(xtalClock_c), .D(n68[7]));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/numeric_std.vhd(1241[12:13])
    SB_DFF read_pointer_921__i8 (.Q(read_pointer[8]), .C(xtalClock_c), .D(n68[8]));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/numeric_std.vhd(1241[12:13])
    SB_DFF read_pointer_921__i9 (.Q(read_pointer[9]), .C(xtalClock_c), .D(n68[9]));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/numeric_std.vhd(1241[12:13])
    SB_LUT4 read_pointer_921_mux_7_i3_3_lut (.I0(read_pointer[2]), .I1(n8814), 
            .I2(n141), .I3(GND_net), .O(n68[2]));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam read_pointer_921_mux_7_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 read_pointer_921_mux_7_i2_3_lut (.I0(read_pointer[1]), .I1(n8813), 
            .I2(n141), .I3(GND_net), .O(n68[1]));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam read_pointer_921_mux_7_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 read_pointer_921_mux_7_i1_3_lut (.I0(read_pointer[0]), .I1(n8779), 
            .I2(n141), .I3(GND_net), .O(n68[0]));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam read_pointer_921_mux_7_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_6561_4 (.CI(n7828), .I0(n1[2]), .I1(n14[2]), .CO(n7829));
    SB_LUT4 add_6561_3_lut (.I0(GND_net), .I1(n1[1]), .I2(n14[1]), .I3(n7827), 
            .O(level_9__N_876[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_6561_3_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR write_pointer_919__i9 (.Q(write_pointer[9]), .C(xtalClock_c), 
            .E(fifo_memory_N_983), .D(n45[9]), .R(n4721));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/numeric_std.vhd(1241[12:13])
    SB_DFFESR write_pointer_919__i8 (.Q(write_pointer[8]), .C(xtalClock_c), 
            .E(fifo_memory_N_983), .D(n45[8]), .R(n4721));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/numeric_std.vhd(1241[12:13])
    SB_DFFESR write_pointer_919__i7 (.Q(write_pointer[7]), .C(xtalClock_c), 
            .E(fifo_memory_N_983), .D(n45[7]), .R(n4721));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/numeric_std.vhd(1241[12:13])
    SB_DFFESR write_pointer_919__i6 (.Q(write_pointer[6]), .C(xtalClock_c), 
            .E(fifo_memory_N_983), .D(n45[6]), .R(n4721));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/numeric_std.vhd(1241[12:13])
    SB_DFFESR write_pointer_919__i5 (.Q(write_pointer[5]), .C(xtalClock_c), 
            .E(fifo_memory_N_983), .D(n45[5]), .R(n4721));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/numeric_std.vhd(1241[12:13])
    SB_DFFESR write_pointer_919__i4 (.Q(write_pointer[4]), .C(xtalClock_c), 
            .E(fifo_memory_N_983), .D(n45[4]), .R(n4721));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/numeric_std.vhd(1241[12:13])
    SB_DFFESR write_pointer_919__i3 (.Q(write_pointer[3]), .C(xtalClock_c), 
            .E(fifo_memory_N_983), .D(n45[3]), .R(n4721));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/numeric_std.vhd(1241[12:13])
    SB_DFFESR write_pointer_919__i2 (.Q(write_pointer[2]), .C(xtalClock_c), 
            .E(fifo_memory_N_983), .D(n45[2]), .R(n4721));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/numeric_std.vhd(1241[12:13])
    SB_DFFESR write_pointer_919__i1 (.Q(write_pointer[1]), .C(xtalClock_c), 
            .E(fifo_memory_N_983), .D(n45[1]), .R(n4721));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/numeric_std.vhd(1241[12:13])
    SB_CARRY add_6561_3 (.CI(n7827), .I0(n1[1]), .I1(n14[1]), .CO(n7828));
    SB_LUT4 add_6561_2_lut (.I0(GND_net), .I1(n1[0]), .I2(n14[0]), .I3(GND_net), 
            .O(level_9__N_876[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_6561_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_6561_2 (.CI(GND_net), .I0(n1[0]), .I1(n14[0]), .CO(n7827));
    SB_LUT4 add_912_1372_add_1_add_1_11_lut (.I0(GND_net), .I1(GND_net), 
            .I2(write_pointer[9]), .I3(n7826), .O(n1[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_912_1372_add_1_add_1_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_912_1372_add_1_add_1_10_lut (.I0(GND_net), .I1(GND_net), 
            .I2(write_pointer[8]), .I3(n7825), .O(n1[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_912_1372_add_1_add_1_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_912_1372_add_1_add_1_10 (.CI(n7825), .I0(GND_net), .I1(write_pointer[8]), 
            .CO(n7826));
    SB_LUT4 inv_692_i5_1_lut (.I0(read_pointer[4]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n1426[4]));   // ../src/generic_fifo.vhd(35[9] 44[16])
    defparam inv_692_i5_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 inv_692_i6_1_lut (.I0(read_pointer[5]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n1426[5]));   // ../src/generic_fifo.vhd(35[9] 44[16])
    defparam inv_692_i6_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 add_912_1372_add_1_add_1_9_lut (.I0(GND_net), .I1(GND_net), 
            .I2(write_pointer[7]), .I3(n7824), .O(n1[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_912_1372_add_1_add_1_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_912_1372_add_1_add_1_9 (.CI(n7824), .I0(GND_net), .I1(write_pointer[7]), 
            .CO(n7825));
    SB_LUT4 add_912_1372_add_1_add_1_8_lut (.I0(GND_net), .I1(GND_net), 
            .I2(write_pointer[6]), .I3(n7823), .O(n1[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_912_1372_add_1_add_1_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_912_1372_add_1_add_1_8 (.CI(n7823), .I0(GND_net), .I1(write_pointer[6]), 
            .CO(n7824));
    SB_LUT4 add_912_1372_add_1_add_1_7_lut (.I0(GND_net), .I1(GND_net), 
            .I2(write_pointer[5]), .I3(n7822), .O(n1[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_912_1372_add_1_add_1_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_912_1372_add_1_add_1_7 (.CI(n7822), .I0(GND_net), .I1(write_pointer[5]), 
            .CO(n7823));
    SB_LUT4 add_912_1372_add_1_add_1_6_lut (.I0(GND_net), .I1(GND_net), 
            .I2(write_pointer[4]), .I3(n7821), .O(n1[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_912_1372_add_1_add_1_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_912_1372_add_1_add_1_6 (.CI(n7821), .I0(GND_net), .I1(write_pointer[4]), 
            .CO(n7822));
    SB_LUT4 add_912_1372_add_1_add_1_5_lut (.I0(GND_net), .I1(GND_net), 
            .I2(write_pointer[3]), .I3(n7820), .O(n1[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_912_1372_add_1_add_1_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_912_1372_add_1_add_1_5 (.CI(n7820), .I0(GND_net), .I1(write_pointer[3]), 
            .CO(n7821));
    SB_LUT4 add_912_1372_add_1_add_1_4_lut (.I0(GND_net), .I1(GND_net), 
            .I2(write_pointer[2]), .I3(n7819), .O(n1[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_912_1372_add_1_add_1_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_912_1372_add_1_add_1_4 (.CI(n7819), .I0(GND_net), .I1(write_pointer[2]), 
            .CO(n7820));
    SB_LUT4 add_676_11_lut (.I0(n1381[8]), .I1(read_pointer[9]), .I2(n1370[9]), 
            .I3(n7946), .O(n8638)) /* synthesis syn_instantiated=1 */ ;
    defparam add_676_11_lut.LUT_INIT = 16'hebbe;
    SB_CARRY add_676_11 (.CI(n7946), .I0(read_pointer[9]), .I1(n1370[9]), 
            .CO(n1392));
    SB_LUT4 add_912_1372_add_1_add_1_3_lut (.I0(GND_net), .I1(GND_net), 
            .I2(write_pointer[1]), .I3(n7818), .O(n1[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_912_1372_add_1_add_1_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_912_1372_add_1_add_1_3 (.CI(n7818), .I0(GND_net), .I1(write_pointer[1]), 
            .CO(n7819));
    SB_LUT4 add_676_10_lut (.I0(GND_net), .I1(read_pointer[8]), .I2(n1370[8]), 
            .I3(n7945), .O(n1381[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_676_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_912_1372_add_1_add_1_2_lut (.I0(GND_net), .I1(n1392), .I2(write_pointer[0]), 
            .I3(GND_net), .O(n1[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_912_1372_add_1_add_1_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_676_10 (.CI(n7945), .I0(read_pointer[8]), .I1(n1370[8]), 
            .CO(n7946));
    SB_LUT4 add_676_9_lut (.I0(n1381[3]), .I1(read_pointer[7]), .I2(n1370[7]), 
            .I3(n7944), .O(n8630)) /* synthesis syn_instantiated=1 */ ;
    defparam add_676_9_lut.LUT_INIT = 16'hebbe;
    SB_CARRY add_912_1372_add_1_add_1_2 (.CI(GND_net), .I0(n1392), .I1(write_pointer[0]), 
            .CO(n7818));
    SB_LUT4 add_912_1372_add_1_add_2_11_lut (.I0(GND_net), .I1(n1426[9]), 
            .I2(GND_net), .I3(n7817), .O(n14[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_912_1372_add_1_add_2_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_676_9 (.CI(n7944), .I0(read_pointer[7]), .I1(n1370[7]), 
            .CO(n7945));
    SB_LUT4 add_676_8_lut (.I0(n1381[5]), .I1(read_pointer[6]), .I2(n1370[6]), 
            .I3(n7943), .O(n8632)) /* synthesis syn_instantiated=1 */ ;
    defparam add_676_8_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 add_912_1372_add_1_add_2_10_lut (.I0(GND_net), .I1(n1426[8]), 
            .I2(GND_net), .I3(n7816), .O(n14[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_912_1372_add_1_add_2_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_676_8 (.CI(n7943), .I0(read_pointer[6]), .I1(n1370[6]), 
            .CO(n7944));
    SB_LUT4 add_676_7_lut (.I0(GND_net), .I1(read_pointer[5]), .I2(n1370[5]), 
            .I3(n7942), .O(n1381[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_676_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_676_7 (.CI(n7942), .I0(read_pointer[5]), .I1(n1370[5]), 
            .CO(n7943));
    SB_LUT4 add_676_6_lut (.I0(n1381[1]), .I1(read_pointer[4]), .I2(n1370[4]), 
            .I3(n7941), .O(n8628)) /* synthesis syn_instantiated=1 */ ;
    defparam add_676_6_lut.LUT_INIT = 16'hebbe;
    SB_CARRY add_676_6 (.CI(n7941), .I0(read_pointer[4]), .I1(n1370[4]), 
            .CO(n7942));
    SB_LUT4 add_676_5_lut (.I0(GND_net), .I1(read_pointer[3]), .I2(n1370[3]), 
            .I3(n7940), .O(n1381[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_676_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_676_5 (.CI(n7940), .I0(read_pointer[3]), .I1(n1370[3]), 
            .CO(n7941));
    SB_LUT4 add_676_4_lut (.I0(n1381[0]), .I1(read_pointer[2]), .I2(n1370[2]), 
            .I3(n7939), .O(n8634)) /* synthesis syn_instantiated=1 */ ;
    defparam add_676_4_lut.LUT_INIT = 16'hebbe;
    SB_CARRY add_676_4 (.CI(n7939), .I0(read_pointer[2]), .I1(n1370[2]), 
            .CO(n7940));
    SB_LUT4 add_676_3_lut (.I0(GND_net), .I1(read_pointer[1]), .I2(n1370[1]), 
            .I3(n7938), .O(n1381[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_676_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_676_3 (.CI(n7938), .I0(read_pointer[1]), .I1(n1370[1]), 
            .CO(n7939));
    SB_LUT4 add_676_2_lut (.I0(GND_net), .I1(read_pointer[0]), .I2(n2), 
            .I3(VCC_net), .O(n1381[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_676_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_676_2 (.CI(VCC_net), .I0(read_pointer[0]), .I1(n2), .CO(n7938));
    SB_LUT4 read_pointer_921_add_4_11_lut (.I0(n142), .I1(GND_net), .I2(read_pointer[9]), 
            .I3(n7937), .O(n8821)) /* synthesis syn_instantiated=1 */ ;
    defparam read_pointer_921_add_4_11_lut.LUT_INIT = 16'h8228;
    SB_LUT4 read_pointer_921_add_4_10_lut (.I0(n142), .I1(GND_net), .I2(read_pointer[8]), 
            .I3(n7936), .O(n8820)) /* synthesis syn_instantiated=1 */ ;
    defparam read_pointer_921_add_4_10_lut.LUT_INIT = 16'h8228;
    SB_CARRY read_pointer_921_add_4_10 (.CI(n7936), .I0(GND_net), .I1(read_pointer[8]), 
            .CO(n7937));
    SB_LUT4 read_pointer_921_add_4_9_lut (.I0(n142), .I1(GND_net), .I2(read_pointer[7]), 
            .I3(n7935), .O(n8819)) /* synthesis syn_instantiated=1 */ ;
    defparam read_pointer_921_add_4_9_lut.LUT_INIT = 16'h8228;
    SB_CARRY read_pointer_921_add_4_9 (.CI(n7935), .I0(GND_net), .I1(read_pointer[7]), 
            .CO(n7936));
    SB_LUT4 read_pointer_921_add_4_8_lut (.I0(n142), .I1(GND_net), .I2(read_pointer[6]), 
            .I3(n7934), .O(n8818)) /* synthesis syn_instantiated=1 */ ;
    defparam read_pointer_921_add_4_8_lut.LUT_INIT = 16'h8228;
    SB_CARRY read_pointer_921_add_4_8 (.CI(n7934), .I0(GND_net), .I1(read_pointer[6]), 
            .CO(n7935));
    SB_CARRY add_912_1372_add_1_add_2_10 (.CI(n7816), .I0(n1426[8]), .I1(GND_net), 
            .CO(n7817));
    SB_LUT4 read_pointer_921_add_4_7_lut (.I0(n142), .I1(GND_net), .I2(read_pointer[5]), 
            .I3(n7933), .O(n8817)) /* synthesis syn_instantiated=1 */ ;
    defparam read_pointer_921_add_4_7_lut.LUT_INIT = 16'h8228;
    SB_CARRY read_pointer_921_add_4_7 (.CI(n7933), .I0(GND_net), .I1(read_pointer[5]), 
            .CO(n7934));
    SB_LUT4 read_pointer_921_add_4_6_lut (.I0(n142), .I1(GND_net), .I2(read_pointer[4]), 
            .I3(n7932), .O(n8816)) /* synthesis syn_instantiated=1 */ ;
    defparam read_pointer_921_add_4_6_lut.LUT_INIT = 16'h8228;
    SB_CARRY read_pointer_921_add_4_6 (.CI(n7932), .I0(GND_net), .I1(read_pointer[4]), 
            .CO(n7933));
    SB_LUT4 read_pointer_921_add_4_5_lut (.I0(n142), .I1(GND_net), .I2(read_pointer[3]), 
            .I3(n7931), .O(n8815)) /* synthesis syn_instantiated=1 */ ;
    defparam read_pointer_921_add_4_5_lut.LUT_INIT = 16'h8228;
    SB_CARRY read_pointer_921_add_4_5 (.CI(n7931), .I0(GND_net), .I1(read_pointer[3]), 
            .CO(n7932));
    SB_LUT4 read_pointer_921_add_4_4_lut (.I0(n142), .I1(GND_net), .I2(read_pointer[2]), 
            .I3(n7930), .O(n8814)) /* synthesis syn_instantiated=1 */ ;
    defparam read_pointer_921_add_4_4_lut.LUT_INIT = 16'h8228;
    SB_CARRY read_pointer_921_add_4_4 (.CI(n7930), .I0(GND_net), .I1(read_pointer[2]), 
            .CO(n7931));
    SB_LUT4 read_pointer_921_add_4_3_lut (.I0(n142), .I1(GND_net), .I2(read_pointer[1]), 
            .I3(n7929), .O(n8813)) /* synthesis syn_instantiated=1 */ ;
    defparam read_pointer_921_add_4_3_lut.LUT_INIT = 16'h8228;
    SB_CARRY read_pointer_921_add_4_3 (.CI(n7929), .I0(GND_net), .I1(read_pointer[1]), 
            .CO(n7930));
    SB_LUT4 read_pointer_921_add_4_2_lut (.I0(n142), .I1(GND_net), .I2(read_pointer[0]), 
            .I3(VCC_net), .O(n8779)) /* synthesis syn_instantiated=1 */ ;
    defparam read_pointer_921_add_4_2_lut.LUT_INIT = 16'h8228;
    SB_CARRY read_pointer_921_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(read_pointer[0]), 
            .CO(n7929));
    SB_LUT4 add_912_1372_add_1_add_2_9_lut (.I0(GND_net), .I1(n1426[7]), 
            .I2(GND_net), .I3(n7815), .O(n14[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_912_1372_add_1_add_2_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 write_pointer_919_add_4_11_lut (.I0(GND_net), .I1(GND_net), 
            .I2(write_pointer[9]), .I3(n7844), .O(n45[9])) /* synthesis syn_instantiated=1 */ ;
    defparam write_pointer_919_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 write_pointer_919_add_4_10_lut (.I0(GND_net), .I1(GND_net), 
            .I2(write_pointer[8]), .I3(n7843), .O(n45[8])) /* synthesis syn_instantiated=1 */ ;
    defparam write_pointer_919_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY write_pointer_919_add_4_10 (.CI(n7843), .I0(GND_net), .I1(write_pointer[8]), 
            .CO(n7844));
    SB_CARRY add_912_1372_add_1_add_2_9 (.CI(n7815), .I0(n1426[7]), .I1(GND_net), 
            .CO(n7816));
    SB_LUT4 write_pointer_919_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(write_pointer[7]), 
            .I3(n7842), .O(n45[7])) /* synthesis syn_instantiated=1 */ ;
    defparam write_pointer_919_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY write_pointer_919_add_4_9 (.CI(n7842), .I0(GND_net), .I1(write_pointer[7]), 
            .CO(n7843));
    SB_LUT4 write_pointer_919_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(write_pointer[6]), 
            .I3(n7841), .O(n45[6])) /* synthesis syn_instantiated=1 */ ;
    defparam write_pointer_919_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_912_1372_add_1_add_2_8_lut (.I0(GND_net), .I1(n1426[6]), 
            .I2(GND_net), .I3(n7814), .O(n14[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_912_1372_add_1_add_2_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY write_pointer_919_add_4_8 (.CI(n7841), .I0(GND_net), .I1(write_pointer[6]), 
            .CO(n7842));
    SB_LUT4 write_pointer_919_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(write_pointer[5]), 
            .I3(n7840), .O(n45[5])) /* synthesis syn_instantiated=1 */ ;
    defparam write_pointer_919_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY write_pointer_919_add_4_7 (.CI(n7840), .I0(GND_net), .I1(write_pointer[5]), 
            .CO(n7841));
    SB_LUT4 write_pointer_919_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(write_pointer[4]), 
            .I3(n7839), .O(n45[4])) /* synthesis syn_instantiated=1 */ ;
    defparam write_pointer_919_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_912_1372_add_1_add_2_8 (.CI(n7814), .I0(n1426[6]), .I1(GND_net), 
            .CO(n7815));
    SB_LUT4 add_912_1372_add_1_add_2_7_lut (.I0(GND_net), .I1(n1426[5]), 
            .I2(GND_net), .I3(n7813), .O(n14[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_912_1372_add_1_add_2_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY write_pointer_919_add_4_6 (.CI(n7839), .I0(GND_net), .I1(write_pointer[4]), 
            .CO(n7840));
    SB_LUT4 write_pointer_919_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(write_pointer[3]), 
            .I3(n7838), .O(n45[3])) /* synthesis syn_instantiated=1 */ ;
    defparam write_pointer_919_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY write_pointer_919_add_4_5 (.CI(n7838), .I0(GND_net), .I1(write_pointer[3]), 
            .CO(n7839));
    SB_LUT4 inv_692_i7_1_lut (.I0(read_pointer[6]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n1426[6]));   // ../src/generic_fifo.vhd(35[9] 44[16])
    defparam inv_692_i7_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 inv_692_i8_1_lut (.I0(read_pointer[7]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n1426[7]));   // ../src/generic_fifo.vhd(35[9] 44[16])
    defparam inv_692_i8_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i6_4_lut_adj_120 (.I0(read_pointer[0]), .I1(read_pointer[5]), 
            .I2(read_pointer[3]), .I3(read_pointer[8]), .O(n16_adj_1279));
    defparam i6_4_lut_adj_120.LUT_INIT = 16'h8000;
    SB_LUT4 i7_4_lut_adj_121 (.I0(read_pointer[2]), .I1(read_pointer[9]), 
            .I2(read_pointer[7]), .I3(read_pointer[6]), .O(n17_adj_1280));
    defparam i7_4_lut_adj_121.LUT_INIT = 16'h8000;
    SB_LUT4 i5619_4_lut (.I0(n17_adj_1280), .I1(read_pointer[1]), .I2(n16_adj_1279), 
            .I3(read_pointer[4]), .O(n142));
    defparam i5619_4_lut.LUT_INIT = 16'h7fff;
    SB_LUT4 i1047_1_lut (.I0(write_pointer[0]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n2));   // ../src/generic_fifo.vhd(90[24:54])
    defparam i1047_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 inv_675_i2_1_lut (.I0(write_pointer[1]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n1370[1]));   // ../src/generic_fifo.vhd(35[12:40])
    defparam inv_675_i2_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 inv_675_i3_1_lut (.I0(write_pointer[2]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n1370[2]));   // ../src/generic_fifo.vhd(35[12:40])
    defparam inv_675_i3_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 inv_675_i4_1_lut (.I0(write_pointer[3]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n1370[3]));   // ../src/generic_fifo.vhd(35[12:40])
    defparam inv_675_i4_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 inv_675_i5_1_lut (.I0(write_pointer[4]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n1370[4]));   // ../src/generic_fifo.vhd(35[12:40])
    defparam inv_675_i5_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 inv_675_i6_1_lut (.I0(write_pointer[5]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n1370[5]));   // ../src/generic_fifo.vhd(35[12:40])
    defparam inv_675_i6_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 inv_692_i9_1_lut (.I0(read_pointer[8]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n1426[8]));   // ../src/generic_fifo.vhd(35[9] 44[16])
    defparam inv_692_i9_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 inv_675_i7_1_lut (.I0(write_pointer[6]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n1370[6]));   // ../src/generic_fifo.vhd(35[12:40])
    defparam inv_675_i7_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 inv_692_i10_1_lut (.I0(read_pointer[9]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n1426[9]));   // ../src/generic_fifo.vhd(35[9] 44[16])
    defparam inv_692_i10_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 inv_675_i8_1_lut (.I0(write_pointer[7]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n1370[7]));   // ../src/generic_fifo.vhd(35[12:40])
    defparam inv_675_i8_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i2_4_lut (.I0(sampleReady), .I1(n1396), .I2(debugleds_c_1), 
            .I3(n8681), .O(fifo_memory_N_983));
    defparam i2_4_lut.LUT_INIT = 16'h080a;
    SB_LUT4 inv_675_i9_1_lut (.I0(write_pointer[8]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n1370[8]));   // ../src/generic_fifo.vhd(35[12:40])
    defparam inv_675_i9_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 inv_675_i10_1_lut (.I0(write_pointer[9]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n1370[9]));   // ../src/generic_fifo.vhd(35[12:40])
    defparam inv_675_i10_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i7_4_lut_adj_122 (.I0(write_pointer[8]), .I1(write_pointer[9]), 
            .I2(write_pointer[7]), .I3(write_pointer[4]), .O(n18));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i7_4_lut_adj_122.LUT_INIT = 16'h8000;
    
endmodule
//
// Verilog Description of module \eia232(12000000,4,115200,32) 
//

module \eia232(12000000,4,115200,32)  (xtalClock_c, n1917, n4801, disabledGroupsReg, 
            n5070, n5069, n5068, executePrev, writeByte, n9, GND_net, 
            n3615, state, busy, outputdata, send, \state_1__N_371[1] , 
            \dataBuffer[25] , n1320, \dataBuffer[14] , \dataBuffer[22] , 
            \dataBuffer[30] , n3493, n4082, n4862, n4861, \dataBuffer[28] , 
            n4005, n4860, n4859, \dataBuffer[24] , n4854, n4853, 
            \dataBuffer[19] , bytes, n4852, \dataBuffer[18] , n4851, 
            disabled, n4248, n1336, n6749, VCC_net, n8336, n6, 
            byteDone, n234, n8324, tx_c, \nstate_2__N_241[0] , n12, 
            arm_N_438, nstate_2__N_139_c_1, n8240, \cmd[17] , n8238, 
            \cmd[18] , n8236, \cmd[19] , n8234, \cmd[20] , n8232, 
            \cmd[21] , \cmd[6] , wrspeed_N_432, n5698, n8204, \cmd[26] , 
            n1, n3753, n8212, \cmd[25] , n8230, \cmd[22] , wrtrigmask_3__N_416, 
            n8228, \cmd[23] , n8226, \cmd[24] , \cmd[39] , wrsize_N_434, 
            wrtrigval_3__N_423, \cmd[8] , execute, n8278, \cmd[27] , 
            n8276, \cmd[28] , n8274, \cmd[29] , n8272, \cmd[30] , 
            n8270, \cmd[31] , n8268, \cmd[32] , n8266, \cmd[33] , 
            n8264, \cmd[34] , n8262, \cmd[35] , n8260, \cmd[36] , 
            n5170, \cmd[37] , n8196, \cmd[38] , n8256, \cmd[9] , 
            n8254, \cmd[10] , n8252, \cmd[11] , n8250, \cmd[12] , 
            n8248, \cmd[13] , n8246, \cmd[14] , n8244, \cmd[15] , 
            n8242, \cmd[16] , reset_N_440, wrtrigcfg_3__N_427, trxClock);
    input xtalClock_c;
    output n1917;
    input n4801;
    output [3:0]disabledGroupsReg;
    input n5070;
    input n5069;
    input n5068;
    input executePrev;
    output writeByte;
    output n9;
    input GND_net;
    input n3615;
    output [1:0]state;
    output busy;
    input [7:0]outputdata;
    input send;
    input \state_1__N_371[1] ;
    output \dataBuffer[25] ;
    input n1320;
    output \dataBuffer[14] ;
    output \dataBuffer[22] ;
    output \dataBuffer[30] ;
    output n3493;
    input n4082;
    input n4862;
    input n4861;
    output \dataBuffer[28] ;
    output n4005;
    input n4860;
    input n4859;
    output \dataBuffer[24] ;
    input n4854;
    input n4853;
    output \dataBuffer[19] ;
    output [2:0]bytes;
    input n4852;
    output \dataBuffer[18] ;
    input n4851;
    output disabled;
    output n4248;
    input n1336;
    output n6749;
    input VCC_net;
    input n8336;
    input n6;
    output byteDone;
    output n234;
    input n8324;
    output tx_c;
    output \nstate_2__N_241[0] ;
    output n12;
    output arm_N_438;
    input nstate_2__N_139_c_1;
    input n8240;
    output \cmd[17] ;
    input n8238;
    output \cmd[18] ;
    input n8236;
    output \cmd[19] ;
    input n8234;
    output \cmd[20] ;
    input n8232;
    output \cmd[21] ;
    output \cmd[6] ;
    output wrspeed_N_432;
    output n5698;
    input n8204;
    output \cmd[26] ;
    output n1;
    output n3753;
    input n8212;
    output \cmd[25] ;
    input n8230;
    output \cmd[22] ;
    output [3:0]wrtrigmask_3__N_416;
    input n8228;
    output \cmd[23] ;
    input n8226;
    output \cmd[24] ;
    output \cmd[39] ;
    output wrsize_N_434;
    output [3:0]wrtrigval_3__N_423;
    output \cmd[8] ;
    output execute;
    input n8278;
    output \cmd[27] ;
    input n8276;
    output \cmd[28] ;
    input n8274;
    output \cmd[29] ;
    input n8272;
    output \cmd[30] ;
    input n8270;
    output \cmd[31] ;
    input n8268;
    output \cmd[32] ;
    input n8266;
    output \cmd[33] ;
    input n8264;
    output \cmd[34] ;
    input n8262;
    output \cmd[35] ;
    input n8260;
    output \cmd[36] ;
    input n5170;
    output \cmd[37] ;
    input n8196;
    output \cmd[38] ;
    input n8256;
    output \cmd[9] ;
    input n8254;
    output \cmd[10] ;
    input n8252;
    output \cmd[11] ;
    input n8250;
    output \cmd[12] ;
    input n8248;
    output \cmd[13] ;
    input n8246;
    output \cmd[14] ;
    input n8244;
    output \cmd[15] ;
    input n8242;
    output \cmd[16] ;
    output reset_N_440;
    output [3:0]wrtrigcfg_3__N_427;
    output trxClock;
    
    wire xtalClock_c /* synthesis SET_AS_NETWORK=xtalClock_c, is_clock=1 */ ;   // ../src/la.vhd(44[3:12])
    
    wire xon_N_19, xon, xoff_N_21, xoff, id_N_14, id;
    wire [2:0]state_c;   // ../src/receiver.vhd(67[9:14])
    
    SB_DFFSR xon_33 (.Q(xon), .C(xtalClock_c), .D(xon_N_19), .R(n1917));   // ../src/eia232.vhd(121[3] 133[10])
    SB_DFFSR xoff_34 (.Q(xoff), .C(xtalClock_c), .D(xoff_N_21), .R(n1917));   // ../src/eia232.vhd(121[3] 133[10])
    SB_DFFSR id_32 (.Q(id), .C(xtalClock_c), .D(id_N_14), .R(n1917));   // ../src/eia232.vhd(121[3] 133[10])
    SB_DFF disabledGroupsReg_i0_i0 (.Q(disabledGroupsReg[0]), .C(xtalClock_c), 
           .D(n4801));   // ../src/eia232.vhd(138[3] 142[10])
    SB_DFF disabledGroupsReg_i0_i3 (.Q(disabledGroupsReg[3]), .C(xtalClock_c), 
           .D(n5070));   // ../src/eia232.vhd(138[3] 142[10])
    SB_DFF disabledGroupsReg_i0_i2 (.Q(disabledGroupsReg[2]), .C(xtalClock_c), 
           .D(n5069));   // ../src/eia232.vhd(138[3] 142[10])
    SB_DFF disabledGroupsReg_i0_i1 (.Q(disabledGroupsReg[1]), .C(xtalClock_c), 
           .D(n5068));   // ../src/eia232.vhd(138[3] 142[10])
    SB_LUT4 i5466_2_lut_4_lut (.I0(executePrev), .I1(state_c[0]), .I2(state_c[2]), 
            .I3(state_c[1]), .O(n1917));
    defparam i5466_2_lut_4_lut.LUT_INIT = 16'hefff;
    \transmitter(3000000,115200,32)  Inst_transmitter (.writeByte(writeByte), 
            .n9(n9), .GND_net(GND_net), .n3615(n3615), .xtalClock_c(xtalClock_c), 
            .state({state}), .busy(busy), .outputdata({outputdata}), .send(send), 
            .\state_1__N_371[1] (\state_1__N_371[1] ), .\dataBuffer[25] (\dataBuffer[25] ), 
            .n1320(n1320), .\dataBuffer[14] (\dataBuffer[14] ), .\dataBuffer[22] (\dataBuffer[22] ), 
            .\dataBuffer[30] (\dataBuffer[30] ), .n3493(n3493), .n4082(n4082), 
            .n4862(n4862), .n4861(n4861), .\dataBuffer[28] (\dataBuffer[28] ), 
            .n4005(n4005), .n4860(n4860), .n4859(n4859), .\dataBuffer[24] (\dataBuffer[24] ), 
            .n4854(n4854), .n4853(n4853), .\dataBuffer[19] (\dataBuffer[19] ), 
            .bytes({bytes}), .n4852(n4852), .\dataBuffer[18] (\dataBuffer[18] ), 
            .n4851(n4851), .disabled(disabled), .disabledGroupsReg({disabledGroupsReg}), 
            .n4248(n4248), .n1336(n1336), .xoff(xoff), .xon(xon), .n6749(n6749), 
            .VCC_net(VCC_net), .n8336(n8336), .n6(n6), .byteDone(byteDone), 
            .id(id), .n234(n234), .n8324(n8324), .tx_c(tx_c));   // ../src/eia232.vhd(172[20:31])
    \receiver(3000000,115200)  Inst_receiver (.GND_net(GND_net), .xtalClock_c(xtalClock_c), 
            .\nstate_2__N_241[0] (\nstate_2__N_241[0] ), .state({state_c}), 
            .n12(n12), .arm_N_438(arm_N_438), .nstate_2__N_139_c_1(nstate_2__N_139_c_1), 
            .n8240(n8240), .\cmd[17] (\cmd[17] ), .n8238(n8238), .\cmd[18] (\cmd[18] ), 
            .n8236(n8236), .\cmd[19] (\cmd[19] ), .n8234(n8234), .\cmd[20] (\cmd[20] ), 
            .n8232(n8232), .\cmd[21] (\cmd[21] ), .\cmd[6] (\cmd[6] ), 
            .wrspeed_N_432(wrspeed_N_432), .n5698(n5698), .n8204(n8204), 
            .VCC_net(VCC_net), .\cmd[26] (\cmd[26] ), .n1(n1), .xoff_N_21(xoff_N_21), 
            .n3753(n3753), .n8212(n8212), .\cmd[25] (\cmd[25] ), .xon_N_19(xon_N_19), 
            .n8230(n8230), .\cmd[22] (\cmd[22] ), .wrtrigmask_3__N_416({wrtrigmask_3__N_416}), 
            .n8228(n8228), .\cmd[23] (\cmd[23] ), .n8226(n8226), .\cmd[24] (\cmd[24] ), 
            .\cmd[39] (\cmd[39] ), .wrsize_N_434(wrsize_N_434), .id_N_14(id_N_14), 
            .wrtrigval_3__N_423({wrtrigval_3__N_423}), .\cmd[8] (\cmd[8] ), 
            .execute(execute), .n8278(n8278), .\cmd[27] (\cmd[27] ), .n8276(n8276), 
            .\cmd[28] (\cmd[28] ), .n8274(n8274), .\cmd[29] (\cmd[29] ), 
            .n8272(n8272), .\cmd[30] (\cmd[30] ), .n8270(n8270), .\cmd[31] (\cmd[31] ), 
            .n8268(n8268), .\cmd[32] (\cmd[32] ), .n8266(n8266), .\cmd[33] (\cmd[33] ), 
            .n8264(n8264), .\cmd[34] (\cmd[34] ), .n8262(n8262), .\cmd[35] (\cmd[35] ), 
            .n8260(n8260), .\cmd[36] (\cmd[36] ), .n5170(n5170), .\cmd[37] (\cmd[37] ), 
            .n8196(n8196), .\cmd[38] (\cmd[38] ), .n8256(n8256), .\cmd[9] (\cmd[9] ), 
            .n8254(n8254), .\cmd[10] (\cmd[10] ), .n8252(n8252), .\cmd[11] (\cmd[11] ), 
            .n8250(n8250), .\cmd[12] (\cmd[12] ), .n8248(n8248), .\cmd[13] (\cmd[13] ), 
            .n8246(n8246), .\cmd[14] (\cmd[14] ), .n8244(n8244), .\cmd[15] (\cmd[15] ), 
            .n8242(n8242), .\cmd[16] (\cmd[16] ), .reset_N_440(reset_N_440), 
            .wrtrigcfg_3__N_427({wrtrigcfg_3__N_427}), .trxClock(trxClock));   // ../src/eia232.vhd(157[17:25])
    \prescaler(4)  Inst_prescaler (.trxClock(trxClock), .xtalClock_c(xtalClock_c), 
            .GND_net(GND_net));   // ../src/eia232.vhd(146[18:27])
    
endmodule
//
// Verilog Description of module \transmitter(3000000,115200,32) 
//

module \transmitter(3000000,115200,32)  (writeByte, n9, GND_net, n3615, 
            xtalClock_c, state, busy, outputdata, send, \state_1__N_371[1] , 
            \dataBuffer[25] , n1320, \dataBuffer[14] , \dataBuffer[22] , 
            \dataBuffer[30] , n3493, n4082, n4862, n4861, \dataBuffer[28] , 
            n4005, n4860, n4859, \dataBuffer[24] , n4854, n4853, 
            \dataBuffer[19] , bytes, n4852, \dataBuffer[18] , n4851, 
            disabled, disabledGroupsReg, n4248, n1336, xoff, xon, 
            n6749, VCC_net, n8336, n6, byteDone, id, n234, n8324, 
            tx_c);
    output writeByte;
    output n9;
    input GND_net;
    input n3615;
    input xtalClock_c;
    output [1:0]state;
    output busy;
    input [7:0]outputdata;
    input send;
    input \state_1__N_371[1] ;
    output \dataBuffer[25] ;
    input n1320;
    output \dataBuffer[14] ;
    output \dataBuffer[22] ;
    output \dataBuffer[30] ;
    output n3493;
    input n4082;
    input n4862;
    input n4861;
    output \dataBuffer[28] ;
    output n4005;
    input n4860;
    input n4859;
    output \dataBuffer[24] ;
    input n4854;
    input n4853;
    output \dataBuffer[19] ;
    output [2:0]bytes;
    input n4852;
    output \dataBuffer[18] ;
    input n4851;
    output disabled;
    input [3:0]disabledGroupsReg;
    output n4248;
    input n1336;
    input xoff;
    input xon;
    output n6749;
    input VCC_net;
    input n8336;
    input n6;
    output byteDone;
    input id;
    output n234;
    input n8324;
    output tx_c;
    
    wire xtalClock_c /* synthesis SET_AS_NETWORK=xtalClock_c, is_clock=1 */ ;   // ../src/la.vhd(44[3:12])
    
    wire n3608;
    wire [4:0]counter;   // ../src/transmitter.vhd(66[9:16])
    wire [4:0]n18;
    
    wire n2040, n3552, paused;
    wire [4:0]n20;
    
    wire n4634, n8354, n8056;
    wire [9:0]txBuffer_9__N_282;
    wire [9:0]txBuffer;   // ../src/transmitter.vhd(64[9:17])
    
    wire n3663, n3652;
    wire [7:0]byte;   // ../src/transmitter.vhd(65[9:13])
    wire [31:0]dataBuffer_31__N_333;
    
    wire n8847;
    wire [31:0]dataBuffer;   // ../src/transmitter.vhd(62[9:19])
    
    wire n6703, n2580, n3658, n3632;
    wire [7:0]n1321;
    wire [3:0]n15;
    wire [3:0]bits;   // ../src/transmitter.vhd(67[9:13])
    
    wire n3633, n2201, n4712;
    wire [2:0]n216;
    
    wire disabled_N_403, n6745, n8851, n8756, n3646, n8642, n4246;
    wire [3:0]disabledBuffer;   // ../src/transmitter.vhd(63[9:23])
    
    wire n5186, n5189, n5218, n5209, n3651;
    wire [3:0]n8;
    
    wire n5206, n5203;
    wire [31:0]dataBuffer_31__N_246;
    
    wire n5199, n5192, n8854, n1, n9218, n3, n8527, n8528, n8529, 
        n5196, n3594, n971, n4719, n2732, n8531, n3572, n3571;
    
    SB_LUT4 i938_2_lut (.I0(writeByte), .I1(n9), .I2(GND_net), .I3(GND_net), 
            .O(n3608));   // ../src/transmitter.vhd(79[3] 96[10])
    defparam i938_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i1529_2_lut (.I0(counter[0]), .I1(n3615), .I2(GND_net), .I3(GND_net), 
            .O(n18[0]));   // ../src/transmitter.vhd(79[3] 96[10])
    defparam i1529_2_lut.LUT_INIT = 16'h6666;
    SB_DFFE paused_91 (.Q(paused), .C(xtalClock_c), .E(n3552), .D(n2040));   // ../src/transmitter.vhd(186[3] 194[10])
    SB_DFFSR counter__i0 (.Q(counter[0]), .C(xtalClock_c), .D(n18[0]), 
            .R(n3608));   // ../src/transmitter.vhd(79[3] 96[10])
    SB_DFFESR counter__i1 (.Q(counter[1]), .C(xtalClock_c), .E(n3615), 
            .D(n20[1]), .R(n3608));   // ../src/transmitter.vhd(79[3] 96[10])
    SB_LUT4 i1_2_lut (.I0(state[0]), .I1(state[1]), .I2(GND_net), .I3(GND_net), 
            .O(n4634));
    defparam i1_2_lut.LUT_INIT = 16'h8888;
    SB_DFF state_i0 (.Q(state[0]), .C(xtalClock_c), .D(n8354));   // ../src/transmitter.vhd(103[3] 180[10])
    SB_DFFSS busy_87 (.Q(busy), .C(xtalClock_c), .D(n8056), .S(state[0]));   // ../src/transmitter.vhd(103[3] 180[10])
    SB_DFFE txBuffer_i2 (.Q(txBuffer[1]), .C(xtalClock_c), .E(n3608), 
            .D(txBuffer_9__N_282[1]));   // ../src/transmitter.vhd(79[3] 96[10])
    SB_DFFESR counter__i2 (.Q(counter[2]), .C(xtalClock_c), .E(n3615), 
            .D(n20[2]), .R(n3608));   // ../src/transmitter.vhd(79[3] 96[10])
    SB_DFFE txBuffer_i3 (.Q(txBuffer[2]), .C(xtalClock_c), .E(n3608), 
            .D(txBuffer_9__N_282[2]));   // ../src/transmitter.vhd(79[3] 96[10])
    SB_DFFE txBuffer_i4 (.Q(txBuffer[3]), .C(xtalClock_c), .E(n3608), 
            .D(txBuffer_9__N_282[3]));   // ../src/transmitter.vhd(79[3] 96[10])
    SB_DFFE txBuffer_i5 (.Q(txBuffer[4]), .C(xtalClock_c), .E(n3608), 
            .D(txBuffer_9__N_282[4]));   // ../src/transmitter.vhd(79[3] 96[10])
    SB_DFFE txBuffer_i6 (.Q(txBuffer[5]), .C(xtalClock_c), .E(n3608), 
            .D(txBuffer_9__N_282[5]));   // ../src/transmitter.vhd(79[3] 96[10])
    SB_DFFE txBuffer_i7 (.Q(txBuffer[6]), .C(xtalClock_c), .E(n3608), 
            .D(txBuffer_9__N_282[6]));   // ../src/transmitter.vhd(79[3] 96[10])
    SB_DFFE txBuffer_i8 (.Q(txBuffer[7]), .C(xtalClock_c), .E(n3608), 
            .D(txBuffer_9__N_282[7]));   // ../src/transmitter.vhd(79[3] 96[10])
    SB_DFFE txBuffer_i9 (.Q(txBuffer[8]), .C(xtalClock_c), .E(n3608), 
            .D(txBuffer_9__N_282[8]));   // ../src/transmitter.vhd(79[3] 96[10])
    SB_DFFESR counter__i3 (.Q(counter[3]), .C(xtalClock_c), .E(n3615), 
            .D(n20[3]), .R(n3608));   // ../src/transmitter.vhd(79[3] 96[10])
    SB_DFFESR counter__i4 (.Q(counter[4]), .C(xtalClock_c), .E(n3615), 
            .D(n20[4]), .R(n3608));   // ../src/transmitter.vhd(79[3] 96[10])
    SB_DFFESR byte__i1 (.Q(byte[1]), .C(xtalClock_c), .E(n3652), .D(n3663), 
            .R(n4634));   // ../src/transmitter.vhd(103[3] 180[10])
    SB_LUT4 i5477_2_lut (.I0(outputdata[0]), .I1(send), .I2(GND_net), 
            .I3(GND_net), .O(dataBuffer_31__N_333[0]));   // ../src/transmitter.vhd(120[6] 130[13])
    defparam i5477_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i1_3_lut (.I0(\state_1__N_371[1] ), .I1(state[0]), .I2(state[1]), 
            .I3(GND_net), .O(n3652));
    defparam i1_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 i7569_2_lut (.I0(\dataBuffer[25] ), .I1(n1320), .I2(GND_net), 
            .I3(GND_net), .O(n8847));   // ../src/transmitter.vhd(103[3] 180[10])
    defparam i7569_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i2536_4_lut (.I0(n8847), .I1(dataBuffer[1]), .I2(n6703), .I3(n2580), 
            .O(n3663));   // ../src/transmitter.vhd(103[3] 180[10])
    defparam i2536_4_lut.LUT_INIT = 16'ha0ac;
    SB_DFFESR byte__i2 (.Q(byte[2]), .C(xtalClock_c), .E(n3652), .D(n3658), 
            .R(n4634));   // ../src/transmitter.vhd(103[3] 180[10])
    SB_LUT4 i2505_3_lut (.I0(dataBuffer[6]), .I1(\dataBuffer[14] ), .I2(n2580), 
            .I3(GND_net), .O(n3632));   // ../src/transmitter.vhd(103[3] 180[10])
    defparam i2505_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_650_i7_3_lut (.I0(\dataBuffer[22] ), .I1(\dataBuffer[30] ), 
            .I2(n1320), .I3(GND_net), .O(n1321[6]));   // ../src/transmitter.vhd(116[4] 179[13])
    defparam mux_650_i7_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFSR bits__i0 (.Q(bits[0]), .C(xtalClock_c), .D(n15[0]), .R(writeByte));   // ../src/transmitter.vhd(79[3] 96[10])
    SB_LUT4 i2506_3_lut (.I0(n1321[6]), .I1(n3632), .I2(n6703), .I3(GND_net), 
            .O(n3633));   // ../src/transmitter.vhd(103[3] 180[10])
    defparam i2506_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i2_4_lut (.I0(bits[1]), .I1(bits[0]), .I2(bits[3]), .I3(bits[2]), 
            .O(n3493));
    defparam i2_4_lut.LUT_INIT = 16'hffdf;
    SB_LUT4 i1528_2_lut (.I0(bits[0]), .I1(n4082), .I2(GND_net), .I3(GND_net), 
            .O(n15[0]));   // ../src/transmitter.vhd(79[3] 96[10])
    defparam i1528_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1185_3_lut_4_lut (.I0(counter[2]), .I1(n2201), .I2(counter[3]), 
            .I3(counter[4]), .O(n20[4]));   // ../src/transmitter.vhd(94[16:23])
    defparam i1185_3_lut_4_lut.LUT_INIT = 16'h7f80;
    SB_LUT4 i5541_2_lut (.I0(outputdata[4]), .I1(send), .I2(GND_net), 
            .I3(GND_net), .O(dataBuffer_31__N_333[4]));   // ../src/transmitter.vhd(120[6] 130[13])
    defparam i5541_2_lut.LUT_INIT = 16'hbbbb;
    SB_DFF dataBuffer_i30 (.Q(\dataBuffer[30] ), .C(xtalClock_c), .D(n4862));   // ../src/transmitter.vhd(103[3] 180[10])
    SB_DFF dataBuffer_i28 (.Q(\dataBuffer[28] ), .C(xtalClock_c), .D(n4861));   // ../src/transmitter.vhd(103[3] 180[10])
    SB_LUT4 i3553_2_lut (.I0(n4005), .I1(state[1]), .I2(GND_net), .I3(GND_net), 
            .O(n4712));   // ../src/transmitter.vhd(103[3] 180[10])
    defparam i3553_2_lut.LUT_INIT = 16'h8888;
    SB_DFF dataBuffer_i25 (.Q(\dataBuffer[25] ), .C(xtalClock_c), .D(n4860));   // ../src/transmitter.vhd(103[3] 180[10])
    SB_LUT4 i5542_2_lut (.I0(outputdata[5]), .I1(send), .I2(GND_net), 
            .I3(GND_net), .O(dataBuffer_31__N_333[5]));   // ../src/transmitter.vhd(120[6] 130[13])
    defparam i5542_2_lut.LUT_INIT = 16'hbbbb;
    SB_DFF dataBuffer_i24 (.Q(\dataBuffer[24] ), .C(xtalClock_c), .D(n4859));   // ../src/transmitter.vhd(103[3] 180[10])
    SB_DFF dataBuffer_i22 (.Q(\dataBuffer[22] ), .C(xtalClock_c), .D(n4854));   // ../src/transmitter.vhd(103[3] 180[10])
    SB_LUT4 i4737_3_lut (.I0(txBuffer[9]), .I1(byte[7]), .I2(writeByte), 
            .I3(GND_net), .O(txBuffer_9__N_282[8]));   // ../src/transmitter.vhd(70[17:26])
    defparam i4737_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF dataBuffer_i19 (.Q(\dataBuffer[19] ), .C(xtalClock_c), .D(n4853));   // ../src/transmitter.vhd(103[3] 180[10])
    SB_LUT4 i1199_2_lut (.I0(bytes[1]), .I1(bytes[0]), .I2(GND_net), .I3(GND_net), 
            .O(n216[1]));   // ../src/transmitter.vhd(133[6] 171[13])
    defparam i1199_2_lut.LUT_INIT = 16'h6666;
    SB_DFF dataBuffer_i18 (.Q(\dataBuffer[18] ), .C(xtalClock_c), .D(n4852));   // ../src/transmitter.vhd(103[3] 180[10])
    SB_LUT4 i1206_3_lut (.I0(bytes[2]), .I1(bytes[1]), .I2(bytes[0]), 
            .I3(GND_net), .O(n216[2]));   // ../src/transmitter.vhd(133[6] 171[13])
    defparam i1206_3_lut.LUT_INIT = 16'h6a6a;
    SB_DFF dataBuffer_i14 (.Q(\dataBuffer[14] ), .C(xtalClock_c), .D(n4851));   // ../src/transmitter.vhd(103[3] 180[10])
    SB_DFFE disabled_90 (.Q(disabled), .C(xtalClock_c), .E(n6745), .D(disabled_N_403));   // ../src/transmitter.vhd(103[3] 180[10])
    SB_LUT4 i7530_2_lut (.I0(dataBuffer[2]), .I1(n2580), .I2(GND_net), 
            .I3(GND_net), .O(n8851));   // ../src/transmitter.vhd(103[3] 180[10])
    defparam i7530_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i7548_2_lut (.I0(\dataBuffer[28] ), .I1(n1320), .I2(GND_net), 
            .I3(GND_net), .O(n8756));   // ../src/transmitter.vhd(103[3] 180[10])
    defparam i7548_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i2519_4_lut (.I0(n8756), .I1(dataBuffer[4]), .I2(n6703), .I3(n2580), 
            .O(n3646));   // ../src/transmitter.vhd(103[3] 180[10])
    defparam i2519_4_lut.LUT_INIT = 16'ha0ac;
    SB_LUT4 i2531_4_lut (.I0(\dataBuffer[18] ), .I1(n8851), .I2(n6703), 
            .I3(n1320), .O(n3658));   // ../src/transmitter.vhd(103[3] 180[10])
    defparam i2531_4_lut.LUT_INIT = 16'h0cac;
    SB_LUT4 txBuffer_9__I_0_i8_3_lut (.I0(txBuffer[8]), .I1(byte[6]), .I2(writeByte), 
            .I3(GND_net), .O(txBuffer_9__N_282[7]));   // ../src/transmitter.vhd(80[4] 95[11])
    defparam txBuffer_9__I_0_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i7274_2_lut (.I0(counter[4]), .I1(counter[1]), .I2(GND_net), 
            .I3(GND_net), .O(n8642));
    defparam i7274_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i4027_4_lut_4_lut (.I0(n4005), .I1(n4246), .I2(disabledGroupsReg[3]), 
            .I3(disabledBuffer[3]), .O(n5186));
    defparam i4027_4_lut_4_lut.LUT_INIT = 16'hd580;
    SB_LUT4 i4030_4_lut_4_lut (.I0(n4005), .I1(n4246), .I2(disabledGroupsReg[2]), 
            .I3(disabledBuffer[2]), .O(n5189));
    defparam i4030_4_lut_4_lut.LUT_INIT = 16'hd580;
    SB_LUT4 i4059_4_lut_4_lut (.I0(n4005), .I1(n4246), .I2(disabledGroupsReg[0]), 
            .I3(disabledBuffer[0]), .O(n5218));
    defparam i4059_4_lut_4_lut.LUT_INIT = 16'hd580;
    SB_LUT4 i1_4_lut_4_lut (.I0(n4005), .I1(n4246), .I2(outputdata[1]), 
            .I3(dataBuffer[1]), .O(n5209));
    defparam i1_4_lut_4_lut.LUT_INIT = 16'hd580;
    SB_LUT4 i4735_3_lut (.I0(txBuffer[7]), .I1(byte[5]), .I2(writeByte), 
            .I3(GND_net), .O(txBuffer_9__N_282[6]));   // ../src/transmitter.vhd(70[17:26])
    defparam i4735_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR byte__i3 (.Q(byte[3]), .C(xtalClock_c), .E(n3652), .D(n3651), 
            .R(n4634));   // ../src/transmitter.vhd(103[3] 180[10])
    SB_LUT4 i1135_2_lut (.I0(bits[1]), .I1(bits[0]), .I2(GND_net), .I3(GND_net), 
            .O(n8[1]));   // ../src/transmitter.vhd(91[14:18])
    defparam i1135_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 txBuffer_9__I_0_i6_3_lut (.I0(txBuffer[6]), .I1(byte[4]), .I2(writeByte), 
            .I3(GND_net), .O(txBuffer_9__N_282[5]));   // ../src/transmitter.vhd(80[4] 95[11])
    defparam txBuffer_9__I_0_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3105_2_lut (.I0(state[0]), .I1(state[1]), .I2(GND_net), .I3(GND_net), 
            .O(n4248));   // ../src/transmitter.vhd(116[4] 179[13])
    defparam i3105_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i2_3_lut (.I0(n1336), .I1(n3652), .I2(bytes[0]), .I3(GND_net), 
            .O(n2580));
    defparam i2_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 i5539_2_lut (.I0(n3652), .I1(n1336), .I2(GND_net), .I3(GND_net), 
            .O(n6703));
    defparam i5539_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 txBuffer_9__I_0_i5_3_lut (.I0(txBuffer[5]), .I1(byte[3]), .I2(writeByte), 
            .I3(GND_net), .O(txBuffer_9__N_282[4]));   // ../src/transmitter.vhd(80[4] 95[11])
    defparam txBuffer_9__I_0_i5_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_4_lut_adj_110 (.I0(n4005), .I1(n4246), .I2(outputdata[2]), 
            .I3(dataBuffer[2]), .O(n5206));
    defparam i1_4_lut_4_lut_adj_110.LUT_INIT = 16'hd580;
    SB_LUT4 i1_4_lut_4_lut_adj_111 (.I0(n4005), .I1(n4246), .I2(outputdata[3]), 
            .I3(dataBuffer[3]), .O(n5203));
    defparam i1_4_lut_4_lut_adj_111.LUT_INIT = 16'hd580;
    SB_DFFE dataBuffer_i8 (.Q(dataBuffer[8]), .C(xtalClock_c), .E(n4005), 
            .D(dataBuffer_31__N_246[8]));   // ../src/transmitter.vhd(103[3] 180[10])
    SB_LUT4 txBuffer_9__I_0_i4_3_lut (.I0(txBuffer[4]), .I1(byte[2]), .I2(writeByte), 
            .I3(GND_net), .O(txBuffer_9__N_282[3]));   // ../src/transmitter.vhd(80[4] 95[11])
    defparam txBuffer_9__I_0_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_4_lut_adj_112 (.I0(n4005), .I1(n4246), .I2(outputdata[6]), 
            .I3(dataBuffer[6]), .O(n5199));
    defparam i1_4_lut_4_lut_adj_112.LUT_INIT = 16'hd580;
    SB_LUT4 i1_4_lut_4_lut_adj_113 (.I0(n4005), .I1(n4246), .I2(disabledGroupsReg[1]), 
            .I3(disabledBuffer[1]), .O(n5192));
    defparam i1_4_lut_4_lut_adj_113.LUT_INIT = 16'hd580;
    SB_LUT4 i7532_2_lut (.I0(dataBuffer[3]), .I1(n2580), .I2(GND_net), 
            .I3(GND_net), .O(n8854));   // ../src/transmitter.vhd(103[3] 180[10])
    defparam i7532_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i2524_4_lut (.I0(\dataBuffer[19] ), .I1(n8854), .I2(n6703), 
            .I3(n1320), .O(n3651));   // ../src/transmitter.vhd(103[3] 180[10])
    defparam i2524_4_lut.LUT_INIT = 16'h0cac;
    SB_DFFESR byte__i4 (.Q(byte[4]), .C(xtalClock_c), .E(n3652), .D(n3646), 
            .R(n4634));   // ../src/transmitter.vhd(103[3] 180[10])
    SB_LUT4 i5581_2_lut (.I0(\state_1__N_371[1] ), .I1(state[0]), .I2(GND_net), 
            .I3(GND_net), .O(n6745));
    defparam i5581_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 bytes_2__I_0_i1_3_lut (.I0(disabledBuffer[0]), .I1(disabledBuffer[1]), 
            .I2(bytes[0]), .I3(GND_net), .O(n1));   // ../src/transmitter.vhd(139[15] 152[24])
    defparam bytes_2__I_0_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 txBuffer_9__I_0_i3_3_lut (.I0(txBuffer[3]), .I1(byte[1]), .I2(writeByte), 
            .I3(GND_net), .O(txBuffer_9__N_282[2]));   // ../src/transmitter.vhd(80[4] 95[11])
    defparam txBuffer_9__I_0_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1201_rep_51_2_lut (.I0(bytes[1]), .I1(bytes[0]), .I2(GND_net), 
            .I3(GND_net), .O(n9218));   // ../src/transmitter.vhd(133[6] 171[13])
    defparam i1201_rep_51_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1166_2_lut (.I0(counter[1]), .I1(counter[0]), .I2(GND_net), 
            .I3(GND_net), .O(n2201));   // ../src/transmitter.vhd(94[16:23])
    defparam i1166_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_2_lut_adj_114 (.I0(xoff), .I1(xon), .I2(GND_net), .I3(GND_net), 
            .O(n3552));
    defparam i1_2_lut_adj_114.LUT_INIT = 16'heeee;
    SB_LUT4 i3070_1_lut (.I0(xon), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n2040));   // ../src/transmitter.vhd(186[3] 194[10])
    defparam i3070_1_lut.LUT_INIT = 16'h5555;
    SB_DFFESR byte__i6 (.Q(byte[6]), .C(xtalClock_c), .E(n3652), .D(n3633), 
            .R(n4634));   // ../src/transmitter.vhd(103[3] 180[10])
    SB_LUT4 bytes_2__I_0_i3_3_lut (.I0(n1), .I1(disabledBuffer[2]), .I2(bytes[1]), 
            .I3(GND_net), .O(n3));   // ../src/transmitter.vhd(139[15] 152[24])
    defparam bytes_2__I_0_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 bytes_2__I_0_i7_4_lut (.I0(n3), .I1(disabledBuffer[3]), .I2(n9218), 
            .I3(bytes[2]), .O(disabled_N_403));   // ../src/transmitter.vhd(139[15] 152[24])
    defparam bytes_2__I_0_i7_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 txBuffer_9__I_0_i2_3_lut (.I0(txBuffer[2]), .I1(byte[0]), .I2(writeByte), 
            .I3(GND_net), .O(txBuffer_9__N_282[1]));   // ../src/transmitter.vhd(80[4] 95[11])
    defparam txBuffer_9__I_0_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i5585_2_lut (.I0(n3493), .I1(n9), .I2(GND_net), .I3(GND_net), 
            .O(n6749));
    defparam i5585_2_lut.LUT_INIT = 16'heeee;
    SB_DFFE disabledBuffer_i0 (.Q(disabledBuffer[0]), .C(xtalClock_c), .E(VCC_net), 
            .D(n5218));   // ../src/transmitter.vhd(103[3] 180[10])
    SB_LUT4 i7615_4_lut (.I0(byte[5]), .I1(n8527), .I2(dataBuffer[5]), 
            .I3(n6703), .O(n8528));
    defparam i7615_4_lut.LUT_INIT = 16'h2230;
    SB_DFFE state_i1 (.Q(state[1]), .C(xtalClock_c), .E(VCC_net), .D(n8336));   // ../src/transmitter.vhd(103[3] 180[10])
    SB_DFFE dataBuffer_i1 (.Q(dataBuffer[1]), .C(xtalClock_c), .E(VCC_net), 
            .D(n5209));   // ../src/transmitter.vhd(103[3] 180[10])
    SB_DFFE dataBuffer_i2 (.Q(dataBuffer[2]), .C(xtalClock_c), .E(VCC_net), 
            .D(n5206));   // ../src/transmitter.vhd(103[3] 180[10])
    SB_LUT4 i1142_2_lut_3_lut (.I0(bits[1]), .I1(bits[0]), .I2(bits[2]), 
            .I3(GND_net), .O(n8[2]));   // ../src/transmitter.vhd(91[14:18])
    defparam i1142_2_lut_3_lut.LUT_INIT = 16'h7878;
    SB_DFFE dataBuffer_i3 (.Q(dataBuffer[3]), .C(xtalClock_c), .E(VCC_net), 
            .D(n5203));   // ../src/transmitter.vhd(103[3] 180[10])
    SB_DFF byte__i7 (.Q(byte[7]), .C(xtalClock_c), .D(n8529));   // ../src/transmitter.vhd(103[3] 180[10])
    SB_DFFE dataBuffer_i6 (.Q(dataBuffer[6]), .C(xtalClock_c), .E(VCC_net), 
            .D(n5199));   // ../src/transmitter.vhd(103[3] 180[10])
    SB_DFFE dataBuffer_i7 (.Q(dataBuffer[7]), .C(xtalClock_c), .E(VCC_net), 
            .D(n5196));   // ../src/transmitter.vhd(103[3] 180[10])
    SB_DFFE disabledBuffer_i1 (.Q(disabledBuffer[1]), .C(xtalClock_c), .E(VCC_net), 
            .D(n5192));   // ../src/transmitter.vhd(103[3] 180[10])
    SB_DFFE disabledBuffer_i2 (.Q(disabledBuffer[2]), .C(xtalClock_c), .E(VCC_net), 
            .D(n5189));   // ../src/transmitter.vhd(103[3] 180[10])
    SB_DFFE disabledBuffer_i3 (.Q(disabledBuffer[3]), .C(xtalClock_c), .E(VCC_net), 
            .D(n5186));   // ../src/transmitter.vhd(103[3] 180[10])
    SB_DFF byte__i5 (.Q(byte[5]), .C(xtalClock_c), .D(n8528));   // ../src/transmitter.vhd(103[3] 180[10])
    SB_DFFE byteDone_81 (.Q(byteDone), .C(xtalClock_c), .E(VCC_net), .D(n6));   // ../src/transmitter.vhd(79[3] 96[10])
    SB_LUT4 i1149_3_lut_4_lut (.I0(bits[1]), .I1(bits[0]), .I2(bits[2]), 
            .I3(bits[3]), .O(n8[3]));   // ../src/transmitter.vhd(91[14:18])
    defparam i1149_3_lut_4_lut.LUT_INIT = 16'h7f80;
    SB_LUT4 i1_2_lut_3_lut (.I0(state[0]), .I1(state[1]), .I2(n2580), 
            .I3(GND_net), .O(n8527));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'hf8f8;
    SB_LUT4 i4730_4_lut (.I0(dataBuffer[7]), .I1(outputdata[7]), .I2(n4005), 
            .I3(n4246), .O(n5196));
    defparam i4730_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i20_3_lut_3_lut_4_lut (.I0(state[1]), .I1(id), .I2(send), 
            .I3(state[0]), .O(n4005));
    defparam i20_3_lut_3_lut_4_lut.LUT_INIT = 16'haa54;
    SB_LUT4 i7639_4_lut (.I0(byte[7]), .I1(n8527), .I2(dataBuffer[7]), 
            .I3(n6703), .O(n8529));
    defparam i7639_4_lut.LUT_INIT = 16'h2230;
    SB_LUT4 i2_4_lut_adj_115 (.I0(counter[3]), .I1(counter[0]), .I2(n8642), 
            .I3(counter[2]), .O(n9));
    defparam i2_4_lut_adj_115.LUT_INIT = 16'hffdf;
    SB_LUT4 i2_3_lut_adj_116 (.I0(send), .I1(state[1]), .I2(paused), .I3(GND_net), 
            .O(n8056));   // ../src/transmitter.vhd(110[7:57])
    defparam i2_3_lut_adj_116.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_2_lut_3_lut_4_lut (.I0(state[1]), .I1(id), .I2(send), .I3(state[0]), 
            .O(n3594));
    defparam i1_2_lut_3_lut_4_lut.LUT_INIT = 16'hff54;
    SB_LUT4 i7618_2_lut (.I0(send), .I1(state[1]), .I2(GND_net), .I3(GND_net), 
            .O(dataBuffer_31__N_246[8]));   // ../src/transmitter.vhd(116[4] 179[13])
    defparam i7618_2_lut.LUT_INIT = 16'h1111;
    SB_LUT4 i1_3_lut_adj_117 (.I0(byteDone), .I1(writeByte), .I2(paused), 
            .I3(GND_net), .O(n234));   // ../src/transmitter.vhd(175[9:60])
    defparam i1_3_lut_adj_117.LUT_INIT = 16'h0202;
    SB_LUT4 i361_2_lut (.I0(id), .I1(send), .I2(GND_net), .I3(GND_net), 
            .O(n971));   // ../src/transmitter.vhd(120[6] 130[13])
    defparam i361_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1171_2_lut_3_lut (.I0(counter[2]), .I1(counter[1]), .I2(counter[0]), 
            .I3(GND_net), .O(n20[2]));   // ../src/transmitter.vhd(94[16:23])
    defparam i1171_2_lut_3_lut.LUT_INIT = 16'h6a6a;
    SB_LUT4 i1_4_lut (.I0(state[0]), .I1(n971), .I2(n234), .I3(state[1]), 
            .O(n8354));   // ../src/transmitter.vhd(103[3] 180[10])
    defparam i1_4_lut.LUT_INIT = 16'h5044;
    SB_DFFESR bits__i3 (.Q(bits[3]), .C(xtalClock_c), .E(n4082), .D(n8[3]), 
            .R(writeByte));   // ../src/transmitter.vhd(79[3] 96[10])
    SB_DFFESR bits__i2 (.Q(bits[2]), .C(xtalClock_c), .E(n4082), .D(n8[2]), 
            .R(writeByte));   // ../src/transmitter.vhd(79[3] 96[10])
    SB_DFFESR bits__i1 (.Q(bits[1]), .C(xtalClock_c), .E(n4082), .D(n8[1]), 
            .R(writeByte));   // ../src/transmitter.vhd(79[3] 96[10])
    SB_LUT4 i1164_2_lut (.I0(counter[1]), .I1(counter[0]), .I2(GND_net), 
            .I3(GND_net), .O(n20[1]));   // ../src/transmitter.vhd(94[16:23])
    defparam i1164_2_lut.LUT_INIT = 16'h6666;
    SB_DFFESR bytes_i2 (.Q(bytes[2]), .C(xtalClock_c), .E(n3594), .D(n216[2]), 
            .R(n4719));   // ../src/transmitter.vhd(103[3] 180[10])
    SB_DFFESR bytes_i1 (.Q(bytes[1]), .C(xtalClock_c), .E(n3594), .D(n216[1]), 
            .R(n4719));   // ../src/transmitter.vhd(103[3] 180[10])
    SB_LUT4 i1623_2_lut_3_lut (.I0(bytes[1]), .I1(bytes[2]), .I2(bytes[0]), 
            .I3(GND_net), .O(n2732));   // ../src/transmitter.vhd(133[9:25])
    defparam i1623_2_lut_3_lut.LUT_INIT = 16'h0b0b;
    SB_LUT4 i3560_2_lut_3_lut (.I0(n3594), .I1(state[0]), .I2(state[1]), 
            .I3(GND_net), .O(n4719));   // ../src/transmitter.vhd(103[3] 180[10])
    defparam i3560_2_lut_3_lut.LUT_INIT = 16'ha2a2;
    SB_DFF txBuffer_i10 (.Q(txBuffer[9]), .C(xtalClock_c), .D(n8531));   // ../src/transmitter.vhd(79[3] 96[10])
    SB_LUT4 i1_2_lut_3_lut_adj_118 (.I0(txBuffer[9]), .I1(writeByte), .I2(n9), 
            .I3(GND_net), .O(n8531));   // ../src/transmitter.vhd(103[3] 180[10])
    defparam i1_2_lut_3_lut_adj_118.LUT_INIT = 16'hefef;
    SB_DFFESR dataBuffer_i5 (.Q(dataBuffer[5]), .C(xtalClock_c), .E(n4005), 
            .D(dataBuffer_31__N_333[5]), .R(n4712));   // ../src/transmitter.vhd(103[3] 180[10])
    SB_DFFESR dataBuffer_i4 (.Q(dataBuffer[4]), .C(xtalClock_c), .E(n4005), 
            .D(dataBuffer_31__N_333[4]), .R(n4712));   // ../src/transmitter.vhd(103[3] 180[10])
    SB_DFF writeByte_83 (.Q(writeByte), .C(xtalClock_c), .D(n8324));   // ../src/transmitter.vhd(103[3] 180[10])
    SB_LUT4 i3103_2_lut (.I0(send), .I1(state[1]), .I2(GND_net), .I3(GND_net), 
            .O(n4246));   // ../src/transmitter.vhd(116[4] 179[13])
    defparam i3103_2_lut.LUT_INIT = 16'h2222;
    SB_DFFESR bytes_i0 (.Q(bytes[0]), .C(xtalClock_c), .E(n3594), .D(n2732), 
            .R(n4719));   // ../src/transmitter.vhd(103[3] 180[10])
    SB_LUT4 i1178_2_lut_3_lut_4_lut (.I0(counter[2]), .I1(counter[1]), .I2(counter[0]), 
            .I3(counter[3]), .O(n20[3]));   // ../src/transmitter.vhd(94[16:23])
    defparam i1178_2_lut_3_lut_4_lut.LUT_INIT = 16'h7f80;
    SB_DFFESR dataBuffer_i0 (.Q(dataBuffer[0]), .C(xtalClock_c), .E(n4005), 
            .D(dataBuffer_31__N_333[0]), .R(n4712));   // ../src/transmitter.vhd(103[3] 180[10])
    SB_DFFESR txBuffer_i1 (.Q(tx_c), .C(xtalClock_c), .E(n3608), .D(txBuffer[1]), 
            .R(writeByte));   // ../src/transmitter.vhd(79[3] 96[10])
    SB_DFFESR byte__i0 (.Q(byte[0]), .C(xtalClock_c), .E(n3652), .D(n3572), 
            .R(n4634));   // ../src/transmitter.vhd(103[3] 180[10])
    SB_LUT4 i2444_3_lut (.I0(dataBuffer[0]), .I1(dataBuffer[8]), .I2(n2580), 
            .I3(GND_net), .O(n3571));   // ../src/transmitter.vhd(103[3] 180[10])
    defparam i2444_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2445_4_lut (.I0(\dataBuffer[24] ), .I1(n3571), .I2(n6703), 
            .I3(n1320), .O(n3572));   // ../src/transmitter.vhd(103[3] 180[10])
    defparam i2445_4_lut.LUT_INIT = 16'hac0c;
    
endmodule
//
// Verilog Description of module \receiver(3000000,115200) 
//

module \receiver(3000000,115200)  (GND_net, xtalClock_c, \nstate_2__N_241[0] , 
            state, n12, arm_N_438, nstate_2__N_139_c_1, n8240, \cmd[17] , 
            n8238, \cmd[18] , n8236, \cmd[19] , n8234, \cmd[20] , 
            n8232, \cmd[21] , \cmd[6] , wrspeed_N_432, n5698, n8204, 
            VCC_net, \cmd[26] , n1, xoff_N_21, n3753, n8212, \cmd[25] , 
            xon_N_19, n8230, \cmd[22] , wrtrigmask_3__N_416, n8228, 
            \cmd[23] , n8226, \cmd[24] , \cmd[39] , wrsize_N_434, 
            id_N_14, wrtrigval_3__N_423, \cmd[8] , execute, n8278, 
            \cmd[27] , n8276, \cmd[28] , n8274, \cmd[29] , n8272, 
            \cmd[30] , n8270, \cmd[31] , n8268, \cmd[32] , n8266, 
            \cmd[33] , n8264, \cmd[34] , n8262, \cmd[35] , n8260, 
            \cmd[36] , n5170, \cmd[37] , n8196, \cmd[38] , n8256, 
            \cmd[9] , n8254, \cmd[10] , n8252, \cmd[11] , n8250, 
            \cmd[12] , n8248, \cmd[13] , n8246, \cmd[14] , n8244, 
            \cmd[15] , n8242, \cmd[16] , reset_N_440, wrtrigcfg_3__N_427, 
            trxClock);
    input GND_net;
    input xtalClock_c;
    output \nstate_2__N_241[0] ;
    output [2:0]state;
    output n12;
    output arm_N_438;
    input nstate_2__N_139_c_1;
    input n8240;
    output \cmd[17] ;
    input n8238;
    output \cmd[18] ;
    input n8236;
    output \cmd[19] ;
    input n8234;
    output \cmd[20] ;
    input n8232;
    output \cmd[21] ;
    output \cmd[6] ;
    output wrspeed_N_432;
    output n5698;
    input n8204;
    input VCC_net;
    output \cmd[26] ;
    output n1;
    output xoff_N_21;
    output n3753;
    input n8212;
    output \cmd[25] ;
    output xon_N_19;
    input n8230;
    output \cmd[22] ;
    output [3:0]wrtrigmask_3__N_416;
    input n8228;
    output \cmd[23] ;
    input n8226;
    output \cmd[24] ;
    output \cmd[39] ;
    output wrsize_N_434;
    output id_N_14;
    output [3:0]wrtrigval_3__N_423;
    output \cmd[8] ;
    output execute;
    input n8278;
    output \cmd[27] ;
    input n8276;
    output \cmd[28] ;
    input n8274;
    output \cmd[29] ;
    input n8272;
    output \cmd[30] ;
    input n8270;
    output \cmd[31] ;
    input n8268;
    output \cmd[32] ;
    input n8266;
    output \cmd[33] ;
    input n8264;
    output \cmd[34] ;
    input n8262;
    output \cmd[35] ;
    input n8260;
    output \cmd[36] ;
    input n5170;
    output \cmd[37] ;
    input n8196;
    output \cmd[38] ;
    input n8256;
    output \cmd[9] ;
    input n8254;
    output \cmd[10] ;
    input n8252;
    output \cmd[11] ;
    input n8250;
    output \cmd[12] ;
    input n8248;
    output \cmd[13] ;
    input n8246;
    output \cmd[14] ;
    input n8244;
    output \cmd[15] ;
    input n8242;
    output \cmd[16] ;
    output reset_N_440;
    output [3:0]wrtrigcfg_3__N_427;
    input trxClock;
    
    wire xtalClock_c /* synthesis SET_AS_NETWORK=xtalClock_c, is_clock=1 */ ;   // ../src/la.vhd(44[3:12])
    wire [4:0]counter;   // ../src/receiver.vhd(64[9:16])
    
    wire n7;
    wire [2:0]nstate_2__N_133;
    wire [3:0]bitcount;   // ../src/receiver.vhd(65[9:17])
    
    wire n7_adj_1264;
    wire [3:0]nbitcount_3__N_191;
    
    wire n3202;
    wire [2:0]bytecount;   // ../src/receiver.vhd(66[9:18])
    
    wire n5504;
    wire [2:0]nstate;   // ../src/receiver.vhd(67[16:22])
    
    wire n5498, n75;
    wire [39:0]cmd;   // ../src/la.vhd(138[10:13])
    
    wire n957, n5505, n3;
    wire [2:0]nbytecount_2__N_121;
    
    wire n3557, n4628, n2143, n69, n14, n5597, n8772, n8769, 
        n5, n6, n8826, n14_adj_1265, n90;
    wire [4:0]n25;
    
    wire n8582, n8831, n4846, n3718, n4845, n3504, n7777, n8, 
        n8782, n8258, n8216, n8222, n8218, n8224, n8220, n5221, 
        n8755, n9123, n8784, n1_adj_1266, n112, n3676, n4767, 
        n8210, n6_adj_1267, n6736, n8376;
    
    SB_LUT4 counter_4__I_0_71_i7_2_lut (.I0(counter[3]), .I1(counter[4]), 
            .I2(GND_net), .I3(GND_net), .O(n7));   // ../src/receiver.vhd(134[8:31])
    defparam counter_4__I_0_71_i7_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i3_4_lut (.I0(counter[0]), .I1(n7), .I2(counter[1]), .I3(counter[2]), 
            .O(nstate_2__N_133[1]));
    defparam i3_4_lut.LUT_INIT = 16'hfdff;
    SB_LUT4 i3_4_lut_adj_79 (.I0(bitcount[0]), .I1(bitcount[2]), .I2(bitcount[1]), 
            .I3(bitcount[3]), .O(n7_adj_1264));   // ../src/receiver.vhd(151[9:21])
    defparam i3_4_lut_adj_79.LUT_INIT = 16'hfeff;
    SB_DFFSR bitcount_i0 (.Q(bitcount[0]), .C(xtalClock_c), .D(nbitcount_3__N_191[0]), 
            .R(n3202));   // ../src/receiver.vhd(77[3] 86[10])
    SB_LUT4 i1_4_lut (.I0(\nstate_2__N_241[0] ), .I1(bytecount[2]), .I2(bytecount[1]), 
            .I3(bytecount[0]), .O(n5504));   // ../src/receiver.vhd(77[3] 86[10])
    defparam i1_4_lut.LUT_INIT = 16'ha2aa;
    SB_DFF state_i0 (.Q(state[0]), .C(xtalClock_c), .D(nstate[0]));   // ../src/receiver.vhd(77[3] 86[10])
    SB_LUT4 i1_2_lut_3_lut_4_lut (.I0(n12), .I1(n5498), .I2(n75), .I3(cmd[1]), 
            .O(arm_N_438));   // ../src/receiver.vhd(77[3] 86[10])
    defparam i1_2_lut_3_lut_4_lut.LUT_INIT = 16'h0010;
    SB_LUT4 i4338_4_lut (.I0(n957), .I1(n5504), .I2(state[0]), .I3(n7_adj_1264), 
            .O(n5505));   // ../src/receiver.vhd(67[9:14])
    defparam i4338_4_lut.LUT_INIT = 16'hc0c5;
    SB_LUT4 state_2__I_0_68_Mux_0_i3_4_lut (.I0(state[0]), .I1(state[1]), 
            .I2(nstate_2__N_139_c_1), .I3(nstate_2__N_133[1]), .O(n3));   // ../src/receiver.vhd(91[3] 211[12])
    defparam state_2__I_0_68_Mux_0_i3_4_lut.LUT_INIT = 16'h9f17;
    SB_LUT4 state_2__I_0_68_Mux_0_i7_4_lut (.I0(n3), .I1(n5505), .I2(state[2]), 
            .I3(state[1]), .O(nstate[0]));   // ../src/receiver.vhd(91[3] 211[12])
    defparam state_2__I_0_68_Mux_0_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_DFFESR bytecount_i2 (.Q(bytecount[2]), .C(xtalClock_c), .E(n3557), 
            .D(nbytecount_2__N_121[2]), .R(n4628));   // ../src/receiver.vhd(77[3] 86[10])
    SB_DFF dataBuf_i10 (.Q(\cmd[17] ), .C(xtalClock_c), .D(n8240));   // ../src/receiver.vhd(77[3] 86[10])
    SB_DFF dataBuf_i11 (.Q(\cmd[18] ), .C(xtalClock_c), .D(n8238));   // ../src/receiver.vhd(77[3] 86[10])
    SB_DFF dataBuf_i12 (.Q(\cmd[19] ), .C(xtalClock_c), .D(n8236));   // ../src/receiver.vhd(77[3] 86[10])
    SB_DFF dataBuf_i13 (.Q(\cmd[20] ), .C(xtalClock_c), .D(n8234));   // ../src/receiver.vhd(77[3] 86[10])
    SB_DFF dataBuf_i14 (.Q(\cmd[21] ), .C(xtalClock_c), .D(n8232));   // ../src/receiver.vhd(77[3] 86[10])
    SB_LUT4 i1120_3_lut (.I0(bitcount[3]), .I1(bitcount[2]), .I2(n2143), 
            .I3(GND_net), .O(nbitcount_3__N_191[3]));   // ../src/receiver.vhd(150[19:27])
    defparam i1120_3_lut.LUT_INIT = 16'h6a6a;
    SB_LUT4 i1_2_lut (.I0(\cmd[6] ), .I1(\nstate_2__N_241[0] ), .I2(GND_net), 
            .I3(GND_net), .O(n5498));   // ../src/receiver.vhd(77[3] 86[10])
    defparam i1_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i7585_3_lut (.I0(bytecount[0]), .I1(n7_adj_1264), .I2(n957), 
            .I3(GND_net), .O(nbytecount_2__N_121[0]));
    defparam i7585_3_lut.LUT_INIT = 16'ha9a9;
    SB_LUT4 i1_2_lut_adj_80 (.I0(cmd[5]), .I1(cmd[4]), .I2(GND_net), .I3(GND_net), 
            .O(n12));   // ../src/receiver.vhd(77[3] 86[10])
    defparam i1_2_lut_adj_80.LUT_INIT = 16'heeee;
    SB_LUT4 i7624_2_lut_3_lut (.I0(cmd[1]), .I1(n69), .I2(n14), .I3(GND_net), 
            .O(wrspeed_N_432));
    defparam i7624_2_lut_3_lut.LUT_INIT = 16'h0101;
    SB_DFF state_i2 (.Q(state[2]), .C(xtalClock_c), .D(nstate[2]));   // ../src/receiver.vhd(77[3] 86[10])
    SB_DFF state_i1 (.Q(state[1]), .C(xtalClock_c), .D(nstate[1]));   // ../src/receiver.vhd(77[3] 86[10])
    SB_LUT4 i1_2_lut_adj_81 (.I0(cmd[1]), .I1(n69), .I2(GND_net), .I3(GND_net), 
            .O(n5698));   // ../src/receiver.vhd(77[3] 86[10])
    defparam i1_2_lut_adj_81.LUT_INIT = 16'h2222;
    SB_DFFE dataBuf_i19 (.Q(\cmd[26] ), .C(xtalClock_c), .E(VCC_net), 
            .D(n8204));   // ../src/receiver.vhd(77[3] 86[10])
    SB_DFFSR bitcount_i3 (.Q(bitcount[3]), .C(xtalClock_c), .D(nbitcount_3__N_191[3]), 
            .R(n3202));   // ../src/receiver.vhd(77[3] 86[10])
    SB_DFFSR bitcount_i2 (.Q(bitcount[2]), .C(xtalClock_c), .D(nbitcount_3__N_191[2]), 
            .R(n3202));   // ../src/receiver.vhd(77[3] 86[10])
    SB_LUT4 i3313_2_lut (.I0(state[1]), .I1(state[2]), .I2(GND_net), .I3(GND_net), 
            .O(n1));   // ../src/receiver.vhd(91[3] 211[12])
    defparam i3313_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i1_2_lut_3_lut (.I0(cmd[3]), .I1(cmd[0]), .I2(cmd[2]), .I3(GND_net), 
            .O(n69));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_2_lut_adj_82 (.I0(cmd[1]), .I1(n5597), .I2(GND_net), .I3(GND_net), 
            .O(xoff_N_21));   // ../src/receiver.vhd(77[3] 86[10])
    defparam i1_2_lut_adj_82.LUT_INIT = 16'h8888;
    SB_LUT4 i7495_2_lut (.I0(bytecount[2]), .I1(bytecount[0]), .I2(GND_net), 
            .I3(GND_net), .O(n8772));
    defparam i7495_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i7493_4_lut (.I0(n8772), .I1(n957), .I2(n7_adj_1264), .I3(bytecount[1]), 
            .O(n8769));
    defparam i7493_4_lut.LUT_INIT = 16'h3020;
    SB_LUT4 i24_4_lut (.I0(n8769), .I1(state[1]), .I2(state[0]), .I3(state[2]), 
            .O(n3753));
    defparam i24_4_lut.LUT_INIT = 16'hc203;
    SB_DFFSR bitcount_i1 (.Q(bitcount[1]), .C(xtalClock_c), .D(nbitcount_3__N_191[1]), 
            .R(n3202));   // ../src/receiver.vhd(77[3] 86[10])
    SB_LUT4 state_2__I_0_68_Mux_2_i6_4_lut (.I0(state[0]), .I1(n5), .I2(state[1]), 
            .I3(n5504), .O(n6));   // ../src/receiver.vhd(91[3] 211[12])
    defparam state_2__I_0_68_Mux_2_i6_4_lut.LUT_INIT = 16'hc5cf;
    SB_LUT4 i7571_2_lut (.I0(nstate_2__N_133[1]), .I1(state[0]), .I2(GND_net), 
            .I3(GND_net), .O(n8826));   // ../src/receiver.vhd(91[3] 211[12])
    defparam i7571_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 state_2__I_0_68_Mux_2_i7_4_lut (.I0(n8826), .I1(n6), .I2(state[2]), 
            .I3(state[1]), .O(nstate[2]));   // ../src/receiver.vhd(91[3] 211[12])
    defparam state_2__I_0_68_Mux_2_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_DFFE dataBuf_i18 (.Q(\cmd[25] ), .C(xtalClock_c), .E(VCC_net), 
            .D(n8212));   // ../src/receiver.vhd(77[3] 86[10])
    SB_LUT4 i2_4_lut (.I0(cmd[5]), .I1(n75), .I2(n5498), .I3(cmd[4]), 
            .O(n5597));
    defparam i2_4_lut.LUT_INIT = 16'h0400;
    SB_LUT4 i1_2_lut_adj_83 (.I0(cmd[1]), .I1(n5597), .I2(GND_net), .I3(GND_net), 
            .O(xon_N_19));   // ../src/receiver.vhd(77[3] 86[10])
    defparam i1_2_lut_adj_83.LUT_INIT = 16'h4444;
    SB_DFF dataBuf_i15 (.Q(\cmd[22] ), .C(xtalClock_c), .D(n8230));   // ../src/receiver.vhd(77[3] 86[10])
    SB_LUT4 i7637_2_lut_3_lut (.I0(cmd[1]), .I1(n69), .I2(n14_adj_1265), 
            .I3(GND_net), .O(wrtrigmask_3__N_416[0]));
    defparam i7637_2_lut_3_lut.LUT_INIT = 16'h0101;
    SB_LUT4 i1_2_lut_adj_84 (.I0(cmd[1]), .I1(n14_adj_1265), .I2(GND_net), 
            .I3(GND_net), .O(n90));
    defparam i1_2_lut_adj_84.LUT_INIT = 16'h2222;
    SB_DFF dataBuf_i16 (.Q(\cmd[23] ), .C(xtalClock_c), .D(n8228));   // ../src/receiver.vhd(77[3] 86[10])
    SB_LUT4 i1113_2_lut_4_lut (.I0(bitcount[2]), .I1(bitcount[0]), .I2(n957), 
            .I3(bitcount[1]), .O(nbitcount_3__N_191[2]));   // ../src/receiver.vhd(150[19:27])
    defparam i1113_2_lut_4_lut.LUT_INIT = 16'ha6aa;
    SB_LUT4 i6600_2_lut_4_lut (.I0(counter[3]), .I1(counter[1]), .I2(counter[0]), 
            .I3(counter[2]), .O(n25[3]));   // ../src/receiver.vhd(200[17:24])
    defparam i6600_2_lut_4_lut.LUT_INIT = 16'h6aaa;
    SB_DFFE dataBuf_i17 (.Q(\cmd[24] ), .C(xtalClock_c), .E(VCC_net), 
            .D(n8226));   // ../src/receiver.vhd(77[3] 86[10])
    SB_LUT4 i7214_2_lut (.I0(bytecount[2]), .I1(bytecount[1]), .I2(GND_net), 
            .I3(GND_net), .O(n8582));
    defparam i7214_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i7549_4_lut (.I0(n8582), .I1(n957), .I2(n7_adj_1264), .I3(bytecount[0]), 
            .O(n8831));
    defparam i7549_4_lut.LUT_INIT = 16'h0010;
    SB_DFF dataBuf_i32 (.Q(\cmd[39] ), .C(xtalClock_c), .D(n4846));   // ../src/receiver.vhd(77[3] 86[10])
    SB_LUT4 i25_4_lut (.I0(n8831), .I1(state[1]), .I2(state[0]), .I3(state[2]), 
            .O(n3718));
    defparam i25_4_lut.LUT_INIT = 16'hc203;
    SB_DFF opcode_i8 (.Q(\nstate_2__N_241[0] ), .C(xtalClock_c), .D(n4845));   // ../src/receiver.vhd(77[3] 86[10])
    SB_LUT4 i1_2_lut_3_lut_adj_85 (.I0(cmd[1]), .I1(n75), .I2(n14), .I3(GND_net), 
            .O(wrsize_N_434));   // ../src/receiver.vhd(77[3] 86[10])
    defparam i1_2_lut_3_lut_adj_85.LUT_INIT = 16'h0404;
    SB_LUT4 i1_2_lut_4_lut (.I0(cmd[1]), .I1(n12), .I2(n5498), .I3(n69), 
            .O(id_N_14));   // ../src/receiver.vhd(77[3] 86[10])
    defparam i1_2_lut_4_lut.LUT_INIT = 16'h0002;
    SB_LUT4 i5573_3_lut_4_lut (.I0(bytecount[1]), .I1(n7_adj_1264), .I2(bytecount[0]), 
            .I3(n957), .O(nbytecount_2__N_121[1]));
    defparam i5573_3_lut_4_lut.LUT_INIT = 16'haa9a;
    SB_LUT4 i6593_2_lut_3_lut (.I0(counter[1]), .I1(counter[0]), .I2(counter[2]), 
            .I3(GND_net), .O(n25[2]));   // ../src/receiver.vhd(200[17:24])
    defparam i6593_2_lut_3_lut.LUT_INIT = 16'h7878;
    SB_LUT4 i2_3_lut (.I0(counter[1]), .I1(counter[2]), .I2(counter[0]), 
            .I3(GND_net), .O(n3504));   // ../src/receiver.vhd(148[8:27])
    defparam i2_3_lut.LUT_INIT = 16'hfdfd;
    SB_LUT4 i2_3_lut_adj_86 (.I0(counter[4]), .I1(n3504), .I2(counter[3]), 
            .I3(GND_net), .O(n957));
    defparam i2_3_lut_adj_86.LUT_INIT = 16'hdfdf;
    SB_LUT4 i6596_2_lut_3_lut (.I0(counter[1]), .I1(counter[0]), .I2(counter[2]), 
            .I3(GND_net), .O(n7777));   // ../src/receiver.vhd(200[17:24])
    defparam i6596_2_lut_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i1_2_lut_3_lut_adj_87 (.I0(n14_adj_1265), .I1(cmd[1]), .I2(n75), 
            .I3(GND_net), .O(wrtrigval_3__N_423[0]));
    defparam i1_2_lut_3_lut_adj_87.LUT_INIT = 16'h1010;
    SB_LUT4 i1_2_lut_adj_88 (.I0(bitcount[0]), .I1(n957), .I2(GND_net), 
            .I3(GND_net), .O(nbitcount_3__N_191[0]));
    defparam i1_2_lut_adj_88.LUT_INIT = 16'h9999;
    SB_LUT4 i21_3_lut_3_lut (.I0(state[0]), .I1(nstate_2__N_133[1]), .I2(state[2]), 
            .I3(GND_net), .O(n8));
    defparam i21_3_lut_3_lut.LUT_INIT = 16'h5858;
    SB_LUT4 i7481_2_lut_3_lut (.I0(state[0]), .I1(nstate_2__N_133[1]), .I2(state[2]), 
            .I3(GND_net), .O(n8782));
    defparam i7481_2_lut_3_lut.LUT_INIT = 16'h0808;
    SB_LUT4 i12_4_lut (.I0(\cmd[6] ), .I1(\nstate_2__N_241[0] ), .I2(n3718), 
            .I3(n1), .O(n8258));
    defparam i12_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_89 (.I0(cmd[5]), .I1(\cmd[6] ), .I2(n3718), 
            .I3(n1), .O(n8216));
    defparam i12_4_lut_adj_89.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_90 (.I0(cmd[4]), .I1(cmd[5]), .I2(n3718), .I3(n1), 
            .O(n8222));
    defparam i12_4_lut_adj_90.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_91 (.I0(cmd[3]), .I1(cmd[4]), .I2(n3718), .I3(n1), 
            .O(n8218));
    defparam i12_4_lut_adj_91.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_92 (.I0(cmd[2]), .I1(cmd[3]), .I2(n3718), .I3(n1), 
            .O(n8224));
    defparam i12_4_lut_adj_92.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_93 (.I0(cmd[1]), .I1(cmd[2]), .I2(n3718), .I3(n1), 
            .O(n8220));
    defparam i12_4_lut_adj_93.LUT_INIT = 16'hca0a;
    SB_DFFE opcode_i1 (.Q(cmd[0]), .C(xtalClock_c), .E(VCC_net), .D(n5221));   // ../src/receiver.vhd(77[3] 86[10])
    SB_LUT4 state_1__bdd_4_lut (.I0(state[1]), .I1(n8755), .I2(n5), .I3(state[2]), 
            .O(n9123));
    defparam state_1__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 n9123_bdd_4_lut (.I0(n9123), .I1(n8784), .I2(n1_adj_1266), 
            .I3(state[2]), .O(nstate[1]));
    defparam n9123_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_2_lut_3_lut_adj_94 (.I0(cmd[0]), .I1(cmd[3]), .I2(cmd[2]), 
            .I3(GND_net), .O(n75));   // ../src/receiver.vhd(77[3] 86[10])
    defparam i1_2_lut_3_lut_adj_94.LUT_INIT = 16'h0202;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_95 (.I0(cmd[0]), .I1(cmd[3]), .I2(n112), 
            .I3(cmd[2]), .O(wrtrigval_3__N_423[1]));   // ../src/receiver.vhd(77[3] 86[10])
    defparam i1_2_lut_3_lut_4_lut_adj_95.LUT_INIT = 16'h0200;
    SB_DFFESR counter_925__i0 (.Q(counter[0]), .C(xtalClock_c), .E(n3676), 
            .D(n25[0]), .R(n4767));   // ../src/receiver.vhd(200[17:24])
    SB_DFFESR bytecount_i1 (.Q(bytecount[1]), .C(xtalClock_c), .E(n3557), 
            .D(nbytecount_2__N_121[1]), .R(n4628));   // ../src/receiver.vhd(77[3] 86[10])
    SB_DFFE dataBuf_i1 (.Q(\cmd[8] ), .C(xtalClock_c), .E(VCC_net), .D(n8210));   // ../src/receiver.vhd(77[3] 86[10])
    SB_LUT4 i7634_2_lut_3_lut (.I0(state[0]), .I1(state[2]), .I2(state[1]), 
            .I3(GND_net), .O(execute));   // ../src/receiver.vhd(218[6:19])
    defparam i7634_2_lut_3_lut.LUT_INIT = 16'h4040;
    SB_LUT4 i1_2_lut_3_lut_adj_96 (.I0(state[0]), .I1(state[2]), .I2(state[1]), 
            .I3(GND_net), .O(n3202));   // ../src/receiver.vhd(218[6:19])
    defparam i1_2_lut_3_lut_adj_96.LUT_INIT = 16'hfbfb;
    SB_DFF dataBuf_i20 (.Q(\cmd[27] ), .C(xtalClock_c), .D(n8278));   // ../src/receiver.vhd(77[3] 86[10])
    SB_DFF dataBuf_i21 (.Q(\cmd[28] ), .C(xtalClock_c), .D(n8276));   // ../src/receiver.vhd(77[3] 86[10])
    SB_DFF dataBuf_i22 (.Q(\cmd[29] ), .C(xtalClock_c), .D(n8274));   // ../src/receiver.vhd(77[3] 86[10])
    SB_DFF dataBuf_i23 (.Q(\cmd[30] ), .C(xtalClock_c), .D(n8272));   // ../src/receiver.vhd(77[3] 86[10])
    SB_DFF dataBuf_i24 (.Q(\cmd[31] ), .C(xtalClock_c), .D(n8270));   // ../src/receiver.vhd(77[3] 86[10])
    SB_DFF dataBuf_i25 (.Q(\cmd[32] ), .C(xtalClock_c), .D(n8268));   // ../src/receiver.vhd(77[3] 86[10])
    SB_DFF dataBuf_i26 (.Q(\cmd[33] ), .C(xtalClock_c), .D(n8266));   // ../src/receiver.vhd(77[3] 86[10])
    SB_DFF dataBuf_i27 (.Q(\cmd[34] ), .C(xtalClock_c), .D(n8264));   // ../src/receiver.vhd(77[3] 86[10])
    SB_DFF dataBuf_i28 (.Q(\cmd[35] ), .C(xtalClock_c), .D(n8262));   // ../src/receiver.vhd(77[3] 86[10])
    SB_DFF dataBuf_i29 (.Q(\cmd[36] ), .C(xtalClock_c), .D(n8260));   // ../src/receiver.vhd(77[3] 86[10])
    SB_DFF dataBuf_i30 (.Q(\cmd[37] ), .C(xtalClock_c), .D(n5170));   // ../src/receiver.vhd(77[3] 86[10])
    SB_DFF dataBuf_i31 (.Q(\cmd[38] ), .C(xtalClock_c), .D(n8196));   // ../src/receiver.vhd(77[3] 86[10])
    SB_DFF opcode_i2 (.Q(cmd[1]), .C(xtalClock_c), .D(n8220));   // ../src/receiver.vhd(77[3] 86[10])
    SB_DFF opcode_i3 (.Q(cmd[2]), .C(xtalClock_c), .D(n8224));   // ../src/receiver.vhd(77[3] 86[10])
    SB_DFF opcode_i4 (.Q(cmd[3]), .C(xtalClock_c), .D(n8218));   // ../src/receiver.vhd(77[3] 86[10])
    SB_DFF opcode_i5 (.Q(cmd[4]), .C(xtalClock_c), .D(n8222));   // ../src/receiver.vhd(77[3] 86[10])
    SB_DFF opcode_i6 (.Q(cmd[5]), .C(xtalClock_c), .D(n8216));   // ../src/receiver.vhd(77[3] 86[10])
    SB_DFF opcode_i7 (.Q(\cmd[6] ), .C(xtalClock_c), .D(n8258));   // ../src/receiver.vhd(77[3] 86[10])
    SB_DFF dataBuf_i2 (.Q(\cmd[9] ), .C(xtalClock_c), .D(n8256));   // ../src/receiver.vhd(77[3] 86[10])
    SB_DFF dataBuf_i3 (.Q(\cmd[10] ), .C(xtalClock_c), .D(n8254));   // ../src/receiver.vhd(77[3] 86[10])
    SB_DFF dataBuf_i4 (.Q(\cmd[11] ), .C(xtalClock_c), .D(n8252));   // ../src/receiver.vhd(77[3] 86[10])
    SB_DFF dataBuf_i5 (.Q(\cmd[12] ), .C(xtalClock_c), .D(n8250));   // ../src/receiver.vhd(77[3] 86[10])
    SB_DFF dataBuf_i6 (.Q(\cmd[13] ), .C(xtalClock_c), .D(n8248));   // ../src/receiver.vhd(77[3] 86[10])
    SB_DFF dataBuf_i7 (.Q(\cmd[14] ), .C(xtalClock_c), .D(n8246));   // ../src/receiver.vhd(77[3] 86[10])
    SB_DFF dataBuf_i8 (.Q(\cmd[15] ), .C(xtalClock_c), .D(n8244));   // ../src/receiver.vhd(77[3] 86[10])
    SB_LUT4 i4353_3_lut_4_lut (.I0(nstate_2__N_139_c_1), .I1(n1), .I2(n3718), 
            .I3(\nstate_2__N_241[0] ), .O(n4845));   // /home/omer/lscc/iCEcube2.2016.02/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam i4353_3_lut_4_lut.LUT_INIT = 16'h8f80;
    SB_LUT4 i4354_3_lut_4_lut (.I0(nstate_2__N_139_c_1), .I1(n1), .I2(n3753), 
            .I3(\cmd[39] ), .O(n4846));   // /home/omer/lscc/iCEcube2.2016.02/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam i4354_3_lut_4_lut.LUT_INIT = 16'h8f80;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_97 (.I0(\nstate_2__N_241[0] ), .I1(cmd[5]), 
            .I2(cmd[4]), .I3(\cmd[6] ), .O(n14_adj_1265));   // ../src/receiver.vhd(77[3] 86[10])
    defparam i1_2_lut_3_lut_4_lut_adj_97.LUT_INIT = 16'hfdff;
    SB_LUT4 i1106_2_lut_3_lut (.I0(bitcount[0]), .I1(n957), .I2(bitcount[1]), 
            .I3(GND_net), .O(nbitcount_3__N_191[1]));   // ../src/receiver.vhd(150[19:27])
    defparam i1106_2_lut_3_lut.LUT_INIT = 16'hd2d2;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_98 (.I0(\nstate_2__N_241[0] ), .I1(cmd[5]), 
            .I2(cmd[4]), .I3(\cmd[6] ), .O(n14));   // ../src/receiver.vhd(77[3] 86[10])
    defparam i1_2_lut_3_lut_4_lut_adj_98.LUT_INIT = 16'hfffd;
    SB_LUT4 i132_2_lut (.I0(n14_adj_1265), .I1(cmd[1]), .I2(GND_net), 
            .I3(GND_net), .O(n112));
    defparam i132_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1108_2_lut_3_lut (.I0(bitcount[0]), .I1(n957), .I2(bitcount[1]), 
            .I3(GND_net), .O(n2143));   // ../src/receiver.vhd(150[19:27])
    defparam i1108_2_lut_3_lut.LUT_INIT = 16'h2020;
    SB_DFF dataBuf_i9 (.Q(\cmd[16] ), .C(xtalClock_c), .D(n8242));   // ../src/receiver.vhd(77[3] 86[10])
    SB_LUT4 i11_4_lut (.I0(\cmd[8] ), .I1(\cmd[9] ), .I2(n3753), .I3(n1), 
            .O(n8210));
    defparam i11_4_lut.LUT_INIT = 16'hca0a;
    SB_DFFESR counter_925__i4 (.Q(counter[4]), .C(xtalClock_c), .E(n3676), 
            .D(n25[4]), .R(n4767));   // ../src/receiver.vhd(200[17:24])
    SB_DFFESR counter_925__i3 (.Q(counter[3]), .C(xtalClock_c), .E(n3676), 
            .D(n25[3]), .R(n4767));   // ../src/receiver.vhd(200[17:24])
    SB_DFFESR counter_925__i2 (.Q(counter[2]), .C(xtalClock_c), .E(n3676), 
            .D(n25[2]), .R(n4767));   // ../src/receiver.vhd(200[17:24])
    SB_DFFESR counter_925__i1 (.Q(counter[1]), .C(xtalClock_c), .E(n3676), 
            .D(n25[1]), .R(n4767));   // ../src/receiver.vhd(200[17:24])
    SB_LUT4 i7631_2_lut_4_lut (.I0(cmd[1]), .I1(n12), .I2(n5498), .I3(n69), 
            .O(reset_N_440));
    defparam i7631_2_lut_4_lut.LUT_INIT = 16'h0001;
    SB_LUT4 i2_3_lut_adj_99 (.I0(state[0]), .I1(state[2]), .I2(n957), 
            .I3(GND_net), .O(n6_adj_1267));
    defparam i2_3_lut_adj_99.LUT_INIT = 16'h4040;
    SB_LUT4 i6586_2_lut (.I0(counter[1]), .I1(counter[0]), .I2(GND_net), 
            .I3(GND_net), .O(n25[1]));   // ../src/receiver.vhd(200[17:24])
    defparam i6586_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_4_lut_adj_100 (.I0(cmd[3]), .I1(cmd[0]), .I2(cmd[2]), 
            .I3(n90), .O(wrtrigcfg_3__N_427[1]));
    defparam i1_2_lut_4_lut_adj_100.LUT_INIT = 16'h1000;
    SB_LUT4 i7647_3_lut (.I0(n6_adj_1267), .I1(state[1]), .I2(n8), .I3(GND_net), 
            .O(n4767));
    defparam i7647_3_lut.LUT_INIT = 16'h1515;
    SB_LUT4 i1_2_lut_4_lut_adj_101 (.I0(cmd[3]), .I1(cmd[0]), .I2(cmd[2]), 
            .I3(n90), .O(wrtrigcfg_3__N_427[2]));
    defparam i1_2_lut_4_lut_adj_101.LUT_INIT = 16'h0200;
    SB_LUT4 i1_2_lut_4_lut_adj_102 (.I0(cmd[3]), .I1(cmd[0]), .I2(cmd[2]), 
            .I3(n112), .O(wrtrigmask_3__N_416[1]));
    defparam i1_2_lut_4_lut_adj_102.LUT_INIT = 16'h0010;
    SB_LUT4 i7653_4_lut (.I0(trxClock), .I1(n6_adj_1267), .I2(n8782), 
            .I3(state[1]), .O(n3676));   // ../src/receiver.vhd(91[3] 211[12])
    defparam i7653_4_lut.LUT_INIT = 16'hafbb;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_103 (.I0(cmd[2]), .I1(n112), .I2(cmd[0]), 
            .I3(cmd[3]), .O(wrtrigval_3__N_423[3]));   // ../src/receiver.vhd(77[3] 86[10])
    defparam i1_2_lut_3_lut_4_lut_adj_103.LUT_INIT = 16'h2000;
    SB_LUT4 i6584_1_lut (.I0(counter[0]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n25[0]));   // ../src/receiver.vhd(200[17:24])
    defparam i6584_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i1_2_lut_4_lut_adj_104 (.I0(cmd[3]), .I1(cmd[0]), .I2(cmd[2]), 
            .I3(n112), .O(wrtrigmask_3__N_416[2]));
    defparam i1_2_lut_4_lut_adj_104.LUT_INIT = 16'h0002;
    SB_LUT4 i5572_2_lut (.I0(bytecount[0]), .I1(n957), .I2(GND_net), .I3(GND_net), 
            .O(n6736));
    defparam i5572_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i6607_3_lut (.I0(counter[4]), .I1(counter[3]), .I2(n7777), 
            .I3(GND_net), .O(n25[4]));   // ../src/receiver.vhd(200[17:24])
    defparam i6607_3_lut.LUT_INIT = 16'h6a6a;
    SB_DFFESR bytecount_i0 (.Q(bytecount[0]), .C(xtalClock_c), .E(n3557), 
            .D(nbytecount_2__N_121[0]), .R(n8376));   // ../src/receiver.vhd(77[3] 86[10])
    SB_LUT4 i2_3_lut_4_lut (.I0(cmd[3]), .I1(cmd[0]), .I2(cmd[2]), .I3(n112), 
            .O(wrtrigval_3__N_423[2]));   // ../src/receiver.vhd(77[3] 86[10])
    defparam i2_3_lut_4_lut.LUT_INIT = 16'h0008;
    SB_LUT4 i5570_3_lut_4_lut (.I0(counter[3]), .I1(counter[4]), .I2(state[0]), 
            .I3(n3504), .O(n5));   // ../src/receiver.vhd(91[3] 211[12])
    defparam i5570_3_lut_4_lut.LUT_INIT = 16'h0f0d;
    SB_LUT4 i13_3_lut (.I0(state[0]), .I1(state[2]), .I2(state[1]), .I3(GND_net), 
            .O(n4628));   // ../src/receiver.vhd(67[9:14])
    defparam i13_3_lut.LUT_INIT = 16'hc1c1;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_105 (.I0(cmd[3]), .I1(cmd[0]), .I2(n112), 
            .I3(cmd[2]), .O(wrtrigmask_3__N_416[3]));   // ../src/receiver.vhd(77[3] 86[10])
    defparam i1_2_lut_3_lut_4_lut_adj_105.LUT_INIT = 16'h0200;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_106 (.I0(cmd[3]), .I1(cmd[0]), .I2(n90), 
            .I3(cmd[2]), .O(wrtrigcfg_3__N_427[3]));   // ../src/receiver.vhd(77[3] 86[10])
    defparam i1_2_lut_3_lut_4_lut_adj_106.LUT_INIT = 16'h2000;
    SB_LUT4 i1_2_lut_adj_107 (.I0(state[0]), .I1(nstate_2__N_139_c_1), .I2(GND_net), 
            .I3(GND_net), .O(n1_adj_1266));   // ../src/receiver.vhd(77[3] 86[10])
    defparam i1_2_lut_adj_107.LUT_INIT = 16'h8888;
    SB_LUT4 i12_3_lut (.I0(state[0]), .I1(state[2]), .I2(state[1]), .I3(GND_net), 
            .O(n3557));
    defparam i12_3_lut.LUT_INIT = 16'hc5c5;
    SB_LUT4 i7487_2_lut (.I0(nstate_2__N_133[1]), .I1(state[0]), .I2(GND_net), 
            .I3(GND_net), .O(n8784));
    defparam i7487_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i7483_2_lut (.I0(n5504), .I1(state[0]), .I2(GND_net), .I3(GND_net), 
            .O(n8755));
    defparam i7483_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i4472_4_lut (.I0(cmd[0]), .I1(cmd[1]), .I2(n3718), .I3(n1), 
            .O(n5221));
    defparam i4472_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut_3_lut_adj_108 (.I0(n14_adj_1265), .I1(cmd[1]), .I2(n69), 
            .I3(GND_net), .O(wrtrigcfg_3__N_427[0]));
    defparam i1_2_lut_3_lut_adj_108.LUT_INIT = 16'h0404;
    SB_LUT4 i1227_4_lut (.I0(bytecount[2]), .I1(n6736), .I2(bytecount[1]), 
            .I3(n7_adj_1264), .O(nbytecount_2__N_121[2]));   // ../src/receiver.vhd(148[5] 178[12])
    defparam i1227_4_lut.LUT_INIT = 16'haa6a;
    SB_LUT4 i1_2_lut_3_lut_adj_109 (.I0(state[1]), .I1(state[2]), .I2(n3557), 
            .I3(GND_net), .O(n8376));
    defparam i1_2_lut_3_lut_adj_109.LUT_INIT = 16'hb0b0;
    
endmodule
//
// Verilog Description of module \prescaler(4) 
//

module \prescaler(4)  (trxClock, xtalClock_c, GND_net);
    output trxClock;
    input xtalClock_c;
    input GND_net;
    
    wire xtalClock_c /* synthesis SET_AS_NETWORK=xtalClock_c, is_clock=1 */ ;   // ../src/la.vhd(44[3:12])
    
    wire counter_4__N_38;
    wire [4:0]counter;   // ../src/prescaler.vhd(48[8:15])
    wire [1:0]n13;
    
    SB_DFF scaled_28 (.Q(trxClock), .C(xtalClock_c), .D(counter_4__N_38));   // ../src/prescaler.vhd(53[3] 68[10])
    SB_LUT4 i6620_1_lut (.I0(counter[0]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n13[0]));   // ../src/prescaler.vhd(65[16:23])
    defparam i6620_1_lut.LUT_INIT = 16'h5555;
    SB_DFFSR counter_922_923__i1 (.Q(counter[0]), .C(xtalClock_c), .D(n13[0]), 
            .R(counter_4__N_38));   // ../src/prescaler.vhd(65[16:23])
    SB_LUT4 i5470_2_lut (.I0(counter[0]), .I1(counter[1]), .I2(GND_net), 
            .I3(GND_net), .O(counter_4__N_38));
    defparam i5470_2_lut.LUT_INIT = 16'h8888;
    SB_DFFSR counter_922_923__i2 (.Q(counter[1]), .C(xtalClock_c), .D(n13[1]), 
            .R(counter_4__N_38));   // ../src/prescaler.vhd(65[16:23])
    SB_LUT4 i6622_2_lut (.I0(counter[1]), .I1(counter[0]), .I2(GND_net), 
            .I3(GND_net), .O(n13[1]));   // ../src/prescaler.vhd(65[16:23])
    defparam i6622_2_lut.LUT_INIT = 16'h6666;
    
endmodule
//
// Verilog Description of module \core(8) 
//

module \core(8)  (xtalClock_c, GND_net, \configRegister[8] , \configRegister[7] , 
            \cmd[35] , wrtrigcfg, \configRegister[6] , sampleReady, 
            \configRegister[5] , \configRegister[4] , \configRegister[3] , 
            \configRegister[16] , \configRegister[17] , \configRegister[2] , 
            \configRegister[1] , VCC_net, \configRegister[0] , \configRegister[22] , 
            \configRegister[23] , n4811, n4810, valueRegister, n4806, 
            maskRegister, \configRegister[20] , memoryOut, \configRegister[21] , 
            n5147, \configRegister[26] , n5146, \configRegister[24] , 
            n5145, n5144, n5143, n5142, n5141, n5140, n5139, \configRegister[15] , 
            n5138, \configRegister[14] , n5137, \configRegister[13] , 
            n5136, \configRegister[12] , n5135, \configRegister[11] , 
            n5134, \configRegister[10] , n5133, \configRegister[9] , 
            n5132, n5131, n5130, n5129, n5128, n5127, n5126, n5125, 
            n5124, n5123, n5122, n5121, n5120, n5119, n5117, n5116, 
            n5115, n5114, n5113, n5112, n5111, n5110, flagDemux, 
            \configRegister[24]_adj_136 , \configRegister[15]_adj_137 , 
            \configRegister[14]_adj_138 , \configRegister[13]_adj_139 , 
            \configRegister[12]_adj_140 , \configRegister[11]_adj_141 , 
            \configRegister[10]_adj_142 , n4805, \configRegister[0]_adj_143 , 
            n4804, valueRegister_adj_256, n4803, maskRegister_adj_257, 
            \configRegister[9]_adj_160 , \configRegister[26]_adj_161 , \configRegister[20]_adj_162 , 
            \configRegister[21]_adj_163 , \configRegister[8]_adj_164 , \configRegister[7]_adj_165 , 
            \configRegister[6]_adj_166 , n5108, n5107, n5106, \configRegister[23]_adj_167 , 
            n5105, \configRegister[22]_adj_168 , n5104, n5103, n5102, 
            \configRegister[17]_adj_169 , n5101, \configRegister[16]_adj_170 , 
            n5100, n5099, n5098, n5097, n5096, n5095, n5094, n5093, 
            n5092, n5091, n5090, \configRegister[5]_adj_171 , n5089, 
            \configRegister[4]_adj_172 , n5088, \configRegister[3]_adj_173 , 
            n5087, \configRegister[2]_adj_174 , n5086, \configRegister[1]_adj_175 , 
            n5085, n5084, n5083, n5082, n5081, n5080, n5079, n5078, 
            n5077, n5076, n5075, n5074, n5073, n5071, \configRegister[24]_adj_176 , 
            maskRegister_adj_258, n4800, \configRegister[0]_adj_185 , 
            n4799, valueRegister_adj_259, n4798, \configRegister[26]_adj_194 , 
            \configRegister[20]_adj_195 , \configRegister[21]_adj_196 , 
            n5066, n5065, n5064, \configRegister[23]_adj_197 , n5063, 
            \configRegister[22]_adj_198 , n5062, n5061, n5060, \configRegister[17]_adj_199 , 
            n5059, \configRegister[16]_adj_200 , n5058, \configRegister[15]_adj_201 , 
            n5057, \configRegister[14]_adj_202 , n5056, \configRegister[13]_adj_203 , 
            n5055, \configRegister[12]_adj_204 , n5054, \configRegister[11]_adj_205 , 
            n5053, \configRegister[10]_adj_206 , n5052, \configRegister[9]_adj_207 , 
            n5051, \configRegister[8]_adj_208 , n5050, \configRegister[7]_adj_209 , 
            n5049, \configRegister[6]_adj_210 , n5048, \configRegister[5]_adj_211 , 
            n5047, \configRegister[4]_adj_212 , n5046, \configRegister[3]_adj_213 , 
            n5045, \configRegister[2]_adj_214 , n5044, \configRegister[1]_adj_215 , 
            n5043, n5042, n5041, n5040, n5039, n5038, n5037, n5036, 
            n5035, n5034, n5033, n5032, n5031, n5030, \configRegister[11]_adj_216 , 
            \configRegister[10]_adj_217 , \configRegister[9]_adj_218 , \configRegister[22]_adj_219 , 
            \configRegister[23]_adj_220 , \configRegister[8]_adj_221 , \configRegister[7]_adj_222 , 
            \configRegister[6]_adj_223 , \configRegister[5]_adj_224 , \configRegister[4]_adj_225 , 
            \configRegister[3]_adj_226 , \configRegister[2]_adj_227 , \configRegister[16]_adj_228 , 
            \configRegister[17]_adj_229 , \configRegister[24]_adj_230 , 
            \configRegister[1]_adj_231 , \configRegister[0]_adj_232 , maskRegister_adj_260, 
            valueRegister_adj_261, \configRegister[26]_adj_249 , n4797, 
            n4793, \configRegister[20]_adj_250 , \configRegister[21]_adj_251 , 
            n4789, n5028, n5027, n5026, n5025, n5024, n5023, n5022, 
            n5021, n5020, \configRegister[15]_adj_252 , n5019, \configRegister[14]_adj_253 , 
            n5018, \configRegister[13]_adj_254 , n5017, \configRegister[12]_adj_255 , 
            n5016, n5015, n5014, n5013, n5012, n5011, n5010, n5009, 
            n5008, n5007, n5006, n5005, n5004, n5003, n5002, n5001, 
            n5000, n4997, n4937, n4936, n4935, n4934, n4933, n4932, 
            n4931, input_c_0, syncedInput, flagFilter, flagInverted, 
            input_c_1, input_c_2, input_c_3, input_c_4, input_c_5, 
            input_c_6, input_c_7, ready50_N_581, wrDivider, divider, 
            n4869, n4868, n4867, n4866, n4865, n4864, n4863, n4788, 
            n4930, n4929, n4928, n4927, n4926, n4925, n4924, n4923, 
            n4922, n4921, n4920, n4919, n4918, n4917, n4916, n4915, 
            n4914, n4913, n4912, n4911, n4910, n4909, n4908, n4775, 
            ready50_c, n4844, n4843, n4842, reset_N_440, n1917, 
            wrtrigval_3__N_423, wrtrigval, execute, executePrev, wrtrigcfg_3__N_427, 
            wrtrigmask_3__N_416, wrtrigmask, arm_N_438, wrFlags, wrsize_N_434, 
            wrsize, wrspeed_N_432, n5698, \cmd[6] , \nstate_2__N_241[0] , 
            n12, n4884, \fwd[7] , n4883, \fwd[6] , n4882, \fwd[5] , 
            n4881, \fwd[4] , n4880, \fwd[3] , n4879, \fwd[2] , n4875, 
            \fwd[1] , \cmd[38] , send, debugleds_c_1, \cmd[22] , \fwd[0] , 
            \fwd[10] , \fwd[13] , \fwd[9] , \fwd[12] , \fwd[8] , \cmd[39] , 
            n3753, n1, n8196, \cmd[37] , n5170, \fwd[11] , \fwd[15] , 
            n4787, \bwd[0] , busy, \bwd[1] , \bwd[7] , \bwd[9] , 
            \bwd[15] , \bwd[6] , \bwd[5] , \bwd[3] , \bwd[4] , \bwd[10] , 
            \bwd[12] , \bwd[8] , \bwd[11] , \bwd[2] , \bwd[13] , n4907, 
            n4780, n4905, n4904, n4903, n4902, n4901, n4900, n4899, 
            n4898, n4897, n4896, n4895, n4894, n4893, n4892, n4890, 
            n4889, n4888, n4887, n4886, n4885, debugleds_c_0);
    input xtalClock_c;
    input GND_net;
    output \configRegister[8] ;
    output \configRegister[7] ;
    input \cmd[35] ;
    output [3:0]wrtrigcfg;
    output \configRegister[6] ;
    output sampleReady;
    output \configRegister[5] ;
    output \configRegister[4] ;
    output \configRegister[3] ;
    output \configRegister[16] ;
    output \configRegister[17] ;
    output \configRegister[2] ;
    output \configRegister[1] ;
    input VCC_net;
    output \configRegister[0] ;
    output \configRegister[22] ;
    output \configRegister[23] ;
    input n4811;
    input n4810;
    output [7:0]valueRegister;
    input n4806;
    output [7:0]maskRegister;
    output \configRegister[20] ;
    output [7:0]memoryOut;
    output \configRegister[21] ;
    input n5147;
    output \configRegister[26] ;
    input n5146;
    output \configRegister[24] ;
    input n5145;
    input n5144;
    input n5143;
    input n5142;
    input n5141;
    input n5140;
    input n5139;
    output \configRegister[15] ;
    input n5138;
    output \configRegister[14] ;
    input n5137;
    output \configRegister[13] ;
    input n5136;
    output \configRegister[12] ;
    input n5135;
    output \configRegister[11] ;
    input n5134;
    output \configRegister[10] ;
    input n5133;
    output \configRegister[9] ;
    input n5132;
    input n5131;
    input n5130;
    input n5129;
    input n5128;
    input n5127;
    input n5126;
    input n5125;
    input n5124;
    input n5123;
    input n5122;
    input n5121;
    input n5120;
    input n5119;
    input n5117;
    input n5116;
    input n5115;
    input n5114;
    input n5113;
    input n5112;
    input n5111;
    input n5110;
    output flagDemux;
    output \configRegister[24]_adj_136 ;
    output \configRegister[15]_adj_137 ;
    output \configRegister[14]_adj_138 ;
    output \configRegister[13]_adj_139 ;
    output \configRegister[12]_adj_140 ;
    output \configRegister[11]_adj_141 ;
    output \configRegister[10]_adj_142 ;
    input n4805;
    output \configRegister[0]_adj_143 ;
    input n4804;
    output [7:0]valueRegister_adj_256;
    input n4803;
    output [7:0]maskRegister_adj_257;
    output \configRegister[9]_adj_160 ;
    output \configRegister[26]_adj_161 ;
    output \configRegister[20]_adj_162 ;
    output \configRegister[21]_adj_163 ;
    output \configRegister[8]_adj_164 ;
    output \configRegister[7]_adj_165 ;
    output \configRegister[6]_adj_166 ;
    input n5108;
    input n5107;
    input n5106;
    output \configRegister[23]_adj_167 ;
    input n5105;
    output \configRegister[22]_adj_168 ;
    input n5104;
    input n5103;
    input n5102;
    output \configRegister[17]_adj_169 ;
    input n5101;
    output \configRegister[16]_adj_170 ;
    input n5100;
    input n5099;
    input n5098;
    input n5097;
    input n5096;
    input n5095;
    input n5094;
    input n5093;
    input n5092;
    input n5091;
    input n5090;
    output \configRegister[5]_adj_171 ;
    input n5089;
    output \configRegister[4]_adj_172 ;
    input n5088;
    output \configRegister[3]_adj_173 ;
    input n5087;
    output \configRegister[2]_adj_174 ;
    input n5086;
    output \configRegister[1]_adj_175 ;
    input n5085;
    input n5084;
    input n5083;
    input n5082;
    input n5081;
    input n5080;
    input n5079;
    input n5078;
    input n5077;
    input n5076;
    input n5075;
    input n5074;
    input n5073;
    input n5071;
    output \configRegister[24]_adj_176 ;
    output [7:0]maskRegister_adj_258;
    input n4800;
    output \configRegister[0]_adj_185 ;
    input n4799;
    output [7:0]valueRegister_adj_259;
    input n4798;
    output \configRegister[26]_adj_194 ;
    output \configRegister[20]_adj_195 ;
    output \configRegister[21]_adj_196 ;
    input n5066;
    input n5065;
    input n5064;
    output \configRegister[23]_adj_197 ;
    input n5063;
    output \configRegister[22]_adj_198 ;
    input n5062;
    input n5061;
    input n5060;
    output \configRegister[17]_adj_199 ;
    input n5059;
    output \configRegister[16]_adj_200 ;
    input n5058;
    output \configRegister[15]_adj_201 ;
    input n5057;
    output \configRegister[14]_adj_202 ;
    input n5056;
    output \configRegister[13]_adj_203 ;
    input n5055;
    output \configRegister[12]_adj_204 ;
    input n5054;
    output \configRegister[11]_adj_205 ;
    input n5053;
    output \configRegister[10]_adj_206 ;
    input n5052;
    output \configRegister[9]_adj_207 ;
    input n5051;
    output \configRegister[8]_adj_208 ;
    input n5050;
    output \configRegister[7]_adj_209 ;
    input n5049;
    output \configRegister[6]_adj_210 ;
    input n5048;
    output \configRegister[5]_adj_211 ;
    input n5047;
    output \configRegister[4]_adj_212 ;
    input n5046;
    output \configRegister[3]_adj_213 ;
    input n5045;
    output \configRegister[2]_adj_214 ;
    input n5044;
    output \configRegister[1]_adj_215 ;
    input n5043;
    input n5042;
    input n5041;
    input n5040;
    input n5039;
    input n5038;
    input n5037;
    input n5036;
    input n5035;
    input n5034;
    input n5033;
    input n5032;
    input n5031;
    input n5030;
    output \configRegister[11]_adj_216 ;
    output \configRegister[10]_adj_217 ;
    output \configRegister[9]_adj_218 ;
    output \configRegister[22]_adj_219 ;
    output \configRegister[23]_adj_220 ;
    output \configRegister[8]_adj_221 ;
    output \configRegister[7]_adj_222 ;
    output \configRegister[6]_adj_223 ;
    output \configRegister[5]_adj_224 ;
    output \configRegister[4]_adj_225 ;
    output \configRegister[3]_adj_226 ;
    output \configRegister[2]_adj_227 ;
    output \configRegister[16]_adj_228 ;
    output \configRegister[17]_adj_229 ;
    output \configRegister[24]_adj_230 ;
    output \configRegister[1]_adj_231 ;
    output \configRegister[0]_adj_232 ;
    output [7:0]maskRegister_adj_260;
    output [7:0]valueRegister_adj_261;
    output \configRegister[26]_adj_249 ;
    input n4797;
    input n4793;
    output \configRegister[20]_adj_250 ;
    output \configRegister[21]_adj_251 ;
    input n4789;
    input n5028;
    input n5027;
    input n5026;
    input n5025;
    input n5024;
    input n5023;
    input n5022;
    input n5021;
    input n5020;
    output \configRegister[15]_adj_252 ;
    input n5019;
    output \configRegister[14]_adj_253 ;
    input n5018;
    output \configRegister[13]_adj_254 ;
    input n5017;
    output \configRegister[12]_adj_255 ;
    input n5016;
    input n5015;
    input n5014;
    input n5013;
    input n5012;
    input n5011;
    input n5010;
    input n5009;
    input n5008;
    input n5007;
    input n5006;
    input n5005;
    input n5004;
    input n5003;
    input n5002;
    input n5001;
    input n5000;
    input n4997;
    input n4937;
    input n4936;
    input n4935;
    input n4934;
    input n4933;
    input n4932;
    input n4931;
    input input_c_0;
    output [7:0]syncedInput;
    output flagFilter;
    output flagInverted;
    input input_c_1;
    input input_c_2;
    input input_c_3;
    input input_c_4;
    input input_c_5;
    input input_c_6;
    input input_c_7;
    output ready50_N_581;
    output wrDivider;
    output [23:0]divider;
    input n4869;
    input n4868;
    input n4867;
    input n4866;
    input n4865;
    input n4864;
    input n4863;
    input n4788;
    input n4930;
    input n4929;
    input n4928;
    input n4927;
    input n4926;
    input n4925;
    input n4924;
    input n4923;
    input n4922;
    input n4921;
    input n4920;
    input n4919;
    input n4918;
    input n4917;
    input n4916;
    input n4915;
    input n4914;
    input n4913;
    input n4912;
    input n4911;
    input n4910;
    input n4909;
    input n4908;
    input n4775;
    output ready50_c;
    input n4844;
    input n4843;
    input n4842;
    input reset_N_440;
    input n1917;
    input [3:0]wrtrigval_3__N_423;
    output [3:0]wrtrigval;
    input execute;
    output executePrev;
    input [3:0]wrtrigcfg_3__N_427;
    input [3:0]wrtrigmask_3__N_416;
    output [3:0]wrtrigmask;
    input arm_N_438;
    output wrFlags;
    input wrsize_N_434;
    output wrsize;
    input wrspeed_N_432;
    input n5698;
    input \cmd[6] ;
    input \nstate_2__N_241[0] ;
    input n12;
    input n4884;
    output \fwd[7] ;
    input n4883;
    output \fwd[6] ;
    input n4882;
    output \fwd[5] ;
    input n4881;
    output \fwd[4] ;
    input n4880;
    output \fwd[3] ;
    input n4879;
    output \fwd[2] ;
    input n4875;
    output \fwd[1] ;
    input \cmd[38] ;
    output send;
    output debugleds_c_1;
    input \cmd[22] ;
    output \fwd[0] ;
    output \fwd[10] ;
    output \fwd[13] ;
    output \fwd[9] ;
    output \fwd[12] ;
    output \fwd[8] ;
    input \cmd[39] ;
    input n3753;
    input n1;
    output n8196;
    input \cmd[37] ;
    output n5170;
    output \fwd[11] ;
    output \fwd[15] ;
    input n4787;
    output \bwd[0] ;
    input busy;
    output \bwd[1] ;
    output \bwd[7] ;
    output \bwd[9] ;
    output \bwd[15] ;
    output \bwd[6] ;
    output \bwd[5] ;
    output \bwd[3] ;
    output \bwd[4] ;
    output \bwd[10] ;
    output \bwd[12] ;
    output \bwd[8] ;
    output \bwd[11] ;
    output \bwd[2] ;
    output \bwd[13] ;
    input n4907;
    input n4780;
    input n4905;
    input n4904;
    input n4903;
    input n4902;
    input n4901;
    input n4900;
    input n4899;
    input n4898;
    input n4897;
    input n4896;
    input n4895;
    input n4894;
    input n4893;
    input n4892;
    input n4890;
    input n4889;
    input n4888;
    input n4887;
    input n4886;
    input n4885;
    output debugleds_c_0;
    
    wire xtalClock_c /* synthesis SET_AS_NETWORK=xtalClock_c, is_clock=1 */ ;   // ../src/la.vhd(44[3:12])
    
    wire arm;
    wire [3:0]stageRun;   // ../src/trigger.vhd(76[9:17])
    wire [1:0]nstate_1__N_831;
    
    wire n31, resetCmd, n6713, n3670, n31_adj_1132;
    wire [1:0]state;   // ../src/stage.vhd(82[8:13])
    wire [1:0]state_adj_1256;   // ../src/stage.vhd(82[8:13])
    
    wire n1639, n8518, n8342, n5109;
    wire [31:0]configRegister;   // ../src/stage.vhd(74[8:22])
    
    wire n31_adj_1174, n9054, n8837, n5193, n6097;
    wire [31:0]configRegister_adj_1261;   // ../src/stage.vhd(74[8:22])
    
    wire n1705, n8515, n9053;
    wire [3:0]n317;
    
    wire n4;
    
    \trigger(8)  Inst_trigger (.xtalClock_c(xtalClock_c), .arm(arm), .\stageRun[1] (stageRun[1]), 
            .\stageRun[2] (stageRun[2]), .\nstate_1__N_831[0] (nstate_1__N_831[0]), 
            .GND_net(GND_net), .\configRegister[8] (\configRegister[8] ), 
            .\configRegister[7] (\configRegister[7] ), .\cmd[35] (\cmd[35] ), 
            .\wrtrigcfg[0] (wrtrigcfg[0]), .\configRegister[6] (\configRegister[6] ), 
            .sampleReady(sampleReady), .n31(n31), .resetCmd(resetCmd), 
            .\configRegister[5] (\configRegister[5] ), .\configRegister[4] (\configRegister[4] ), 
            .\configRegister[3] (\configRegister[3] ), .\configRegister[16] (\configRegister[16] ), 
            .\configRegister[17] (\configRegister[17] ), .\configRegister[2] (\configRegister[2] ), 
            .n6713(n6713), .\configRegister[1] (\configRegister[1] ), .VCC_net(VCC_net), 
            .\configRegister[0] (\configRegister[0] ), .\configRegister[22] (\configRegister[22] ), 
            .\configRegister[23] (\configRegister[23] ), .n4811(n4811), 
            .n4810(n4810), .valueRegister({valueRegister}), .n4806(n4806), 
            .maskRegister({maskRegister}), .\wrtrigcfg[3] (wrtrigcfg[3]), 
            .\configRegister[20] (\configRegister[20] ), .memoryOut({memoryOut}), 
            .\configRegister[21] (\configRegister[21] ), .n3670(n3670), 
            .n31_adj_6(n31_adj_1132), .\state[1] (state[1]), .n5147(n5147), 
            .\configRegister[26] (\configRegister[26] ), .n5146(n5146), 
            .\configRegister[24] (\configRegister[24] ), .n5145(n5145), 
            .n5144(n5144), .n5143(n5143), .n5142(n5142), .n5141(n5141), 
            .n5140(n5140), .n5139(n5139), .\configRegister[15] (\configRegister[15] ), 
            .n5138(n5138), .\configRegister[14] (\configRegister[14] ), 
            .n5137(n5137), .\configRegister[13] (\configRegister[13] ), 
            .n5136(n5136), .\configRegister[12] (\configRegister[12] ), 
            .n5135(n5135), .\configRegister[11] (\configRegister[11] ), 
            .n5134(n5134), .\configRegister[10] (\configRegister[10] ), 
            .n5133(n5133), .\configRegister[9] (\configRegister[9] ), .n5132(n5132), 
            .n5131(n5131), .n5130(n5130), .n5129(n5129), .n5128(n5128), 
            .n5127(n5127), .n5126(n5126), .n5125(n5125), .n5124(n5124), 
            .n5123(n5123), .n5122(n5122), .n5121(n5121), .n5120(n5120), 
            .n5119(n5119), .n5117(n5117), .n5116(n5116), .n5115(n5115), 
            .n5114(n5114), .n5113(n5113), .n5112(n5112), .n5111(n5111), 
            .n5110(n5110), .flagDemux(flagDemux), .\configRegister[24]_adj_7 (\configRegister[24]_adj_136 ), 
            .\state[1]_adj_8 (state_adj_1256[1]), .n1639(n1639), .\configRegister[15]_adj_9 (\configRegister[15]_adj_137 ), 
            .n8518(n8518), .\configRegister[14]_adj_10 (\configRegister[14]_adj_138 ), 
            .\configRegister[13]_adj_11 (\configRegister[13]_adj_139 ), .\configRegister[12]_adj_12 (\configRegister[12]_adj_140 ), 
            .\configRegister[11]_adj_13 (\configRegister[11]_adj_141 ), .\configRegister[10]_adj_14 (\configRegister[10]_adj_142 ), 
            .n4805(n4805), .\configRegister[0]_adj_15 (\configRegister[0]_adj_143 ), 
            .n4804(n4804), .valueRegister_adj_130({valueRegister_adj_256}), 
            .n4803(n4803), .maskRegister_adj_131({maskRegister_adj_257}), 
            .\configRegister[9]_adj_32 (\configRegister[9]_adj_160 ), .\configRegister[26]_adj_33 (\configRegister[26]_adj_161 ), 
            .\configRegister[20]_adj_34 (\configRegister[20]_adj_162 ), .\configRegister[21]_adj_35 (\configRegister[21]_adj_163 ), 
            .\configRegister[8]_adj_36 (\configRegister[8]_adj_164 ), .\configRegister[7]_adj_37 (\configRegister[7]_adj_165 ), 
            .n8342(n8342), .\configRegister[6]_adj_38 (\configRegister[6]_adj_166 ), 
            .n5109(n5109), .\configRegister[27] (configRegister[27]), .n5108(n5108), 
            .n5107(n5107), .n5106(n5106), .\configRegister[23]_adj_39 (\configRegister[23]_adj_167 ), 
            .n5105(n5105), .\configRegister[22]_adj_40 (\configRegister[22]_adj_168 ), 
            .n5104(n5104), .n5103(n5103), .n5102(n5102), .\configRegister[17]_adj_41 (\configRegister[17]_adj_169 ), 
            .n5101(n5101), .\configRegister[16]_adj_42 (\configRegister[16]_adj_170 ), 
            .n5100(n5100), .n5099(n5099), .n5098(n5098), .n5097(n5097), 
            .n5096(n5096), .n5095(n5095), .n5094(n5094), .n5093(n5093), 
            .n5092(n5092), .n5091(n5091), .n5090(n5090), .\configRegister[5]_adj_43 (\configRegister[5]_adj_171 ), 
            .n5089(n5089), .\configRegister[4]_adj_44 (\configRegister[4]_adj_172 ), 
            .n5088(n5088), .\configRegister[3]_adj_45 (\configRegister[3]_adj_173 ), 
            .n5087(n5087), .\configRegister[2]_adj_46 (\configRegister[2]_adj_174 ), 
            .n5086(n5086), .\configRegister[1]_adj_47 (\configRegister[1]_adj_175 ), 
            .n5085(n5085), .n5084(n5084), .n5083(n5083), .n5082(n5082), 
            .n5081(n5081), .n5080(n5080), .n5079(n5079), .n5078(n5078), 
            .n5077(n5077), .n5076(n5076), .n5075(n5075), .n5074(n5074), 
            .n5073(n5073), .n5071(n5071), .n31_adj_48(n31_adj_1174), .n9054(n9054), 
            .\configRegister[24]_adj_49 (\configRegister[24]_adj_176 ), .n8837(n8837), 
            .maskRegister_adj_132({maskRegister_adj_258}), .n4800(n4800), 
            .\configRegister[0]_adj_58 (\configRegister[0]_adj_185 ), .n4799(n4799), 
            .valueRegister_adj_133({valueRegister_adj_259}), .n4798(n4798), 
            .\configRegister[26]_adj_67 (\configRegister[26]_adj_194 ), .\configRegister[20]_adj_68 (\configRegister[20]_adj_195 ), 
            .\configRegister[21]_adj_69 (\configRegister[21]_adj_196 ), .n5193(n5193), 
            .n6097(n6097), .\configRegister[27]_adj_70 (configRegister_adj_1261[27]), 
            .n5066(n5066), .n5065(n5065), .n5064(n5064), .\configRegister[23]_adj_71 (\configRegister[23]_adj_197 ), 
            .n5063(n5063), .\configRegister[22]_adj_72 (\configRegister[22]_adj_198 ), 
            .n5062(n5062), .n5061(n5061), .n5060(n5060), .\configRegister[17]_adj_73 (\configRegister[17]_adj_199 ), 
            .n5059(n5059), .\configRegister[16]_adj_74 (\configRegister[16]_adj_200 ), 
            .n5058(n5058), .\configRegister[15]_adj_75 (\configRegister[15]_adj_201 ), 
            .n5057(n5057), .\configRegister[14]_adj_76 (\configRegister[14]_adj_202 ), 
            .n5056(n5056), .\configRegister[13]_adj_77 (\configRegister[13]_adj_203 ), 
            .n5055(n5055), .\configRegister[12]_adj_78 (\configRegister[12]_adj_204 ), 
            .n5054(n5054), .\configRegister[11]_adj_79 (\configRegister[11]_adj_205 ), 
            .n5053(n5053), .\configRegister[10]_adj_80 (\configRegister[10]_adj_206 ), 
            .n5052(n5052), .\configRegister[9]_adj_81 (\configRegister[9]_adj_207 ), 
            .n5051(n5051), .\configRegister[8]_adj_82 (\configRegister[8]_adj_208 ), 
            .n5050(n5050), .\configRegister[7]_adj_83 (\configRegister[7]_adj_209 ), 
            .n5049(n5049), .\configRegister[6]_adj_84 (\configRegister[6]_adj_210 ), 
            .n5048(n5048), .\configRegister[5]_adj_85 (\configRegister[5]_adj_211 ), 
            .n5047(n5047), .\configRegister[4]_adj_86 (\configRegister[4]_adj_212 ), 
            .n5046(n5046), .\configRegister[3]_adj_87 (\configRegister[3]_adj_213 ), 
            .n5045(n5045), .\configRegister[2]_adj_88 (\configRegister[2]_adj_214 ), 
            .n5044(n5044), .\configRegister[1]_adj_89 (\configRegister[1]_adj_215 ), 
            .n5043(n5043), .n5042(n5042), .n5041(n5041), .n5040(n5040), 
            .n5039(n5039), .n5038(n5038), .n5037(n5037), .n5036(n5036), 
            .n5035(n5035), .n5034(n5034), .n5033(n5033), .n5032(n5032), 
            .n5031(n5031), .n5030(n5030), .n1705(n1705), .\configRegister[11]_adj_90 (\configRegister[11]_adj_216 ), 
            .\configRegister[10]_adj_91 (\configRegister[10]_adj_217 ), .\configRegister[9]_adj_92 (\configRegister[9]_adj_218 ), 
            .\configRegister[22]_adj_93 (\configRegister[22]_adj_219 ), .\configRegister[23]_adj_94 (\configRegister[23]_adj_220 ), 
            .\configRegister[8]_adj_95 (\configRegister[8]_adj_221 ), .\configRegister[7]_adj_96 (\configRegister[7]_adj_222 ), 
            .\configRegister[6]_adj_97 (\configRegister[6]_adj_223 ), .\configRegister[5]_adj_98 (\configRegister[5]_adj_224 ), 
            .\configRegister[4]_adj_99 (\configRegister[4]_adj_225 ), .\configRegister[3]_adj_100 (\configRegister[3]_adj_226 ), 
            .\configRegister[2]_adj_101 (\configRegister[2]_adj_227 ), .n8515(n8515), 
            .\configRegister[16]_adj_102 (\configRegister[16]_adj_228 ), .\configRegister[17]_adj_103 (\configRegister[17]_adj_229 ), 
            .\configRegister[24]_adj_104 (\configRegister[24]_adj_230 ), .\configRegister[1]_adj_105 (\configRegister[1]_adj_231 ), 
            .n9053(n9053), .\configRegister[0]_adj_106 (\configRegister[0]_adj_232 ), 
            .maskRegister_adj_134({maskRegister_adj_260}), .valueRegister_adj_135({valueRegister_adj_261}), 
            .\configRegister[26]_adj_123 (\configRegister[26]_adj_249 ), .n4797(n4797), 
            .n4793(n4793), .\configRegister[20]_adj_124 (\configRegister[20]_adj_250 ), 
            .\configRegister[21]_adj_125 (\configRegister[21]_adj_251 ), .n4789(n4789), 
            .n5028(n5028), .n5027(n5027), .n5026(n5026), .n5025(n5025), 
            .n5024(n5024), .n5023(n5023), .n5022(n5022), .n5021(n5021), 
            .n5020(n5020), .\configRegister[15]_adj_126 (\configRegister[15]_adj_252 ), 
            .n5019(n5019), .\configRegister[14]_adj_127 (\configRegister[14]_adj_253 ), 
            .n5018(n5018), .\configRegister[13]_adj_128 (\configRegister[13]_adj_254 ), 
            .n5017(n5017), .\configRegister[12]_adj_129 (\configRegister[12]_adj_255 ), 
            .n5016(n5016), .n5015(n5015), .n5014(n5014), .n5013(n5013), 
            .n5012(n5012), .n5011(n5011), .n5010(n5010), .n5009(n5009), 
            .n5008(n5008), .n5007(n5007), .n5006(n5006), .n5005(n5005), 
            .n5004(n5004), .n5003(n5003), .n5002(n5002), .n5001(n5001), 
            .n5000(n5000), .n4997(n4997), .n4937(n4937), .n4936(n4936), 
            .n4935(n4935), .n4934(n4934), .n4933(n4933), .n4932(n4932), 
            .n4931(n4931));   // ../src/core.vhd(234[16:23])
    \sync(8)  Inst_sync (.input_c_0(input_c_0), .xtalClock_c(xtalClock_c), 
            .syncedInput({syncedInput}), .GND_net(GND_net), .flagDemux(flagDemux), 
            .flagFilter(flagFilter), .flagInverted(flagInverted), .input_c_1(input_c_1), 
            .input_c_2(input_c_2), .input_c_3(input_c_3), .input_c_4(input_c_4), 
            .input_c_5(input_c_5), .input_c_6(input_c_6), .input_c_7(input_c_7));   // ../src/core.vhd(207[13:17])
    \sampler(8)  Inst_sampler (.ready50_N_581(ready50_N_581), .wrDivider(wrDivider), 
            .GND_net(GND_net), .divider({divider}), .xtalClock_c(xtalClock_c), 
            .n4869(n4869), .memoryOut({memoryOut}), .n4868(n4868), .n4867(n4867), 
            .n4866(n4866), .n4865(n4865), .n4864(n4864), .n4863(n4863), 
            .n1639(n1639), .n9054(n9054), .n31(n31_adj_1132), .sampleReady(sampleReady), 
            .\state[1] (state[1]), .n1705(n1705), .n9053(n9053), .n31_adj_2(n31_adj_1174), 
            .\state[1]_adj_3 (state_adj_1256[1]), .n31_adj_4(n31), .n6713(n6713), 
            .n4788(n4788), .n8515(n8515), .n4930(n4930), .n4929(n4929), 
            .n4928(n4928), .n4927(n4927), .n4926(n4926), .n4925(n4925), 
            .n4924(n4924), .n4923(n4923), .n4922(n4922), .n4921(n4921), 
            .n4920(n4920), .n4919(n4919), .n4918(n4918), .n4917(n4917), 
            .n4916(n4916), .n4915(n4915), .n4914(n4914), .n4913(n4913), 
            .n4912(n4912), .n4911(n4911), .n4910(n4910), .n4909(n4909), 
            .n4908(n4908), .n4775(n4775), .ready50_c(ready50_c), .VCC_net(VCC_net));   // ../src/core.vhd(219[16:23])
    flags Inst_flags (.n4844(n4844), .flagFilter(flagFilter), .xtalClock_c(xtalClock_c), 
          .n4843(n4843), .flagDemux(flagDemux), .n4842(n4842), .flagInverted(flagInverted));   // ../src/core.vhd(196[14:19])
    decoder Inst_decoder (.reset_N_440(reset_N_440), .resetCmd(resetCmd), 
            .xtalClock_c(xtalClock_c), .n1917(n1917), .wrtrigval_3__N_423({wrtrigval_3__N_423}), 
            .wrtrigval({wrtrigval}), .execute(execute), .executePrev(executePrev), 
            .wrtrigcfg_3__N_427({wrtrigcfg_3__N_427}), .wrtrigcfg({wrtrigcfg}), 
            .wrtrigmask_3__N_416({wrtrigmask_3__N_416}), .wrtrigmask({wrtrigmask}), 
            .arm_N_438(arm_N_438), .arm(arm), .n318(n317[3]), .n4(n4), 
            .GND_net(GND_net), .wrFlags(wrFlags), .wrsize_N_434(wrsize_N_434), 
            .wrsize(wrsize), .wrspeed_N_432(wrspeed_N_432), .wrDivider(wrDivider), 
            .\configRegister[27] (configRegister_adj_1261[27]), .\cmd[35] (\cmd[35] ), 
            .n6097(n6097), .\configRegister[27]_adj_1 (configRegister[27]), 
            .n5109(n5109), .\stageRun[2] (stageRun[2]), .n8518(n8518), 
            .n3670(n3670), .\state[1] (state_adj_1256[1]), .n8342(n8342), 
            .\stageRun[1] (stageRun[1]), .n8837(n8837), .n5193(n5193), 
            .n5698(n5698), .\cmd[6] (\cmd[6] ), .\nstate_2__N_241[0] (\nstate_2__N_241[0] ), 
            .n12(n12));   // ../src/core.vhd(182[16:23])
    \controller(8)  Inst_controller (.xtalClock_c(xtalClock_c), .resetCmd(resetCmd), 
            .n4884(n4884), .fwd({Open_0, Open_1, Open_2, Open_3, Open_4, 
            Open_5, Open_6, Open_7, \fwd[7] , \fwd[6] , \fwd[5] , 
            \fwd[4] , \fwd[3] , \fwd[2] , \fwd[1] , Open_8}), .n4883(n4883), 
            .n4882(n4882), .n4881(n4881), .n4880(n4880), .n4879(n4879), 
            .n4875(n4875), .\cmd[38] (\cmd[38] ), .wrsize(wrsize), .GND_net(GND_net), 
            .send(send), .debugleds_c_1(debugleds_c_1), .n4(n4), .sampleReady(sampleReady), 
            .\cmd[22] (\cmd[22] ), .n318(n317[3]), .\fwd[0] (\fwd[0] ), 
            .\fwd[10] (\fwd[10] ), .\fwd[13] (\fwd[13] ), .\fwd[9] (\fwd[9] ), 
            .\fwd[12] (\fwd[12] ), .\fwd[8] (\fwd[8] ), .\cmd[39] (\cmd[39] ), 
            .n3753(n3753), .n1(n1), .n8196(n8196), .\cmd[37] (\cmd[37] ), 
            .n5170(n5170), .\fwd[11] (\fwd[11] ), .\fwd[15] (\fwd[15] ), 
            .n4787(n4787), .\bwd[0] (\bwd[0] ), .\nstate_1__N_831[0] (nstate_1__N_831[0]), 
            .busy(busy), .\bwd[1] (\bwd[1] ), .\bwd[7] (\bwd[7] ), .\bwd[9] (\bwd[9] ), 
            .\bwd[15] (\bwd[15] ), .\bwd[6] (\bwd[6] ), .\bwd[5] (\bwd[5] ), 
            .\bwd[3] (\bwd[3] ), .\bwd[4] (\bwd[4] ), .\bwd[10] (\bwd[10] ), 
            .\bwd[12] (\bwd[12] ), .\bwd[8] (\bwd[8] ), .\bwd[11] (\bwd[11] ), 
            .\bwd[2] (\bwd[2] ), .\bwd[13] (\bwd[13] ), .n4907(n4907), 
            .n4780(n4780), .n4905(n4905), .n4904(n4904), .n4903(n4903), 
            .n4902(n4902), .n4901(n4901), .n4900(n4900), .n4899(n4899), 
            .n4898(n4898), .n4897(n4897), .n4896(n4896), .n4895(n4895), 
            .n4894(n4894), .n4893(n4893), .n4892(n4892), .n4890(n4890), 
            .n4889(n4889), .n4888(n4888), .n4887(n4887), .n4886(n4886), 
            .n4885(n4885), .VCC_net(VCC_net), .debugleds_c_0(debugleds_c_0));   // ../src/core.vhd(253[19:29])
    
endmodule
//
// Verilog Description of module \trigger(8) 
//

module \trigger(8)  (xtalClock_c, arm, \stageRun[1] , \stageRun[2] , 
            \nstate_1__N_831[0] , GND_net, \configRegister[8] , \configRegister[7] , 
            \cmd[35] , \wrtrigcfg[0] , \configRegister[6] , sampleReady, 
            n31, resetCmd, \configRegister[5] , \configRegister[4] , 
            \configRegister[3] , \configRegister[16] , \configRegister[17] , 
            \configRegister[2] , n6713, \configRegister[1] , VCC_net, 
            \configRegister[0] , \configRegister[22] , \configRegister[23] , 
            n4811, n4810, valueRegister, n4806, maskRegister, \wrtrigcfg[3] , 
            \configRegister[20] , memoryOut, \configRegister[21] , n3670, 
            n31_adj_6, \state[1] , n5147, \configRegister[26] , n5146, 
            \configRegister[24] , n5145, n5144, n5143, n5142, n5141, 
            n5140, n5139, \configRegister[15] , n5138, \configRegister[14] , 
            n5137, \configRegister[13] , n5136, \configRegister[12] , 
            n5135, \configRegister[11] , n5134, \configRegister[10] , 
            n5133, \configRegister[9] , n5132, n5131, n5130, n5129, 
            n5128, n5127, n5126, n5125, n5124, n5123, n5122, n5121, 
            n5120, n5119, n5117, n5116, n5115, n5114, n5113, n5112, 
            n5111, n5110, flagDemux, \configRegister[24]_adj_7 , \state[1]_adj_8 , 
            n1639, \configRegister[15]_adj_9 , n8518, \configRegister[14]_adj_10 , 
            \configRegister[13]_adj_11 , \configRegister[12]_adj_12 , \configRegister[11]_adj_13 , 
            \configRegister[10]_adj_14 , n4805, \configRegister[0]_adj_15 , 
            n4804, valueRegister_adj_130, n4803, maskRegister_adj_131, 
            \configRegister[9]_adj_32 , \configRegister[26]_adj_33 , \configRegister[20]_adj_34 , 
            \configRegister[21]_adj_35 , \configRegister[8]_adj_36 , \configRegister[7]_adj_37 , 
            n8342, \configRegister[6]_adj_38 , n5109, \configRegister[27] , 
            n5108, n5107, n5106, \configRegister[23]_adj_39 , n5105, 
            \configRegister[22]_adj_40 , n5104, n5103, n5102, \configRegister[17]_adj_41 , 
            n5101, \configRegister[16]_adj_42 , n5100, n5099, n5098, 
            n5097, n5096, n5095, n5094, n5093, n5092, n5091, n5090, 
            \configRegister[5]_adj_43 , n5089, \configRegister[4]_adj_44 , 
            n5088, \configRegister[3]_adj_45 , n5087, \configRegister[2]_adj_46 , 
            n5086, \configRegister[1]_adj_47 , n5085, n5084, n5083, 
            n5082, n5081, n5080, n5079, n5078, n5077, n5076, n5075, 
            n5074, n5073, n5071, n31_adj_48, n9054, \configRegister[24]_adj_49 , 
            n8837, maskRegister_adj_132, n4800, \configRegister[0]_adj_58 , 
            n4799, valueRegister_adj_133, n4798, \configRegister[26]_adj_67 , 
            \configRegister[20]_adj_68 , \configRegister[21]_adj_69 , n5193, 
            n6097, \configRegister[27]_adj_70 , n5066, n5065, n5064, 
            \configRegister[23]_adj_71 , n5063, \configRegister[22]_adj_72 , 
            n5062, n5061, n5060, \configRegister[17]_adj_73 , n5059, 
            \configRegister[16]_adj_74 , n5058, \configRegister[15]_adj_75 , 
            n5057, \configRegister[14]_adj_76 , n5056, \configRegister[13]_adj_77 , 
            n5055, \configRegister[12]_adj_78 , n5054, \configRegister[11]_adj_79 , 
            n5053, \configRegister[10]_adj_80 , n5052, \configRegister[9]_adj_81 , 
            n5051, \configRegister[8]_adj_82 , n5050, \configRegister[7]_adj_83 , 
            n5049, \configRegister[6]_adj_84 , n5048, \configRegister[5]_adj_85 , 
            n5047, \configRegister[4]_adj_86 , n5046, \configRegister[3]_adj_87 , 
            n5045, \configRegister[2]_adj_88 , n5044, \configRegister[1]_adj_89 , 
            n5043, n5042, n5041, n5040, n5039, n5038, n5037, n5036, 
            n5035, n5034, n5033, n5032, n5031, n5030, n1705, \configRegister[11]_adj_90 , 
            \configRegister[10]_adj_91 , \configRegister[9]_adj_92 , \configRegister[22]_adj_93 , 
            \configRegister[23]_adj_94 , \configRegister[8]_adj_95 , \configRegister[7]_adj_96 , 
            \configRegister[6]_adj_97 , \configRegister[5]_adj_98 , \configRegister[4]_adj_99 , 
            \configRegister[3]_adj_100 , \configRegister[2]_adj_101 , n8515, 
            \configRegister[16]_adj_102 , \configRegister[17]_adj_103 , 
            \configRegister[24]_adj_104 , \configRegister[1]_adj_105 , n9053, 
            \configRegister[0]_adj_106 , maskRegister_adj_134, valueRegister_adj_135, 
            \configRegister[26]_adj_123 , n4797, n4793, \configRegister[20]_adj_124 , 
            \configRegister[21]_adj_125 , n4789, n5028, n5027, n5026, 
            n5025, n5024, n5023, n5022, n5021, n5020, \configRegister[15]_adj_126 , 
            n5019, \configRegister[14]_adj_127 , n5018, \configRegister[13]_adj_128 , 
            n5017, \configRegister[12]_adj_129 , n5016, n5015, n5014, 
            n5013, n5012, n5011, n5010, n5009, n5008, n5007, n5006, 
            n5005, n5004, n5003, n5002, n5001, n5000, n4997, n4937, 
            n4936, n4935, n4934, n4933, n4932, n4931);
    input xtalClock_c;
    input arm;
    output \stageRun[1] ;
    output \stageRun[2] ;
    output \nstate_1__N_831[0] ;
    input GND_net;
    output \configRegister[8] ;
    output \configRegister[7] ;
    input \cmd[35] ;
    input \wrtrigcfg[0] ;
    output \configRegister[6] ;
    input sampleReady;
    output n31;
    input resetCmd;
    output \configRegister[5] ;
    output \configRegister[4] ;
    output \configRegister[3] ;
    output \configRegister[16] ;
    output \configRegister[17] ;
    output \configRegister[2] ;
    input n6713;
    output \configRegister[1] ;
    input VCC_net;
    output \configRegister[0] ;
    output \configRegister[22] ;
    output \configRegister[23] ;
    input n4811;
    input n4810;
    output [7:0]valueRegister;
    input n4806;
    output [7:0]maskRegister;
    input \wrtrigcfg[3] ;
    output \configRegister[20] ;
    input [7:0]memoryOut;
    output \configRegister[21] ;
    output n3670;
    output n31_adj_6;
    output \state[1] ;
    input n5147;
    output \configRegister[26] ;
    input n5146;
    output \configRegister[24] ;
    input n5145;
    input n5144;
    input n5143;
    input n5142;
    input n5141;
    input n5140;
    input n5139;
    output \configRegister[15] ;
    input n5138;
    output \configRegister[14] ;
    input n5137;
    output \configRegister[13] ;
    input n5136;
    output \configRegister[12] ;
    input n5135;
    output \configRegister[11] ;
    input n5134;
    output \configRegister[10] ;
    input n5133;
    output \configRegister[9] ;
    input n5132;
    input n5131;
    input n5130;
    input n5129;
    input n5128;
    input n5127;
    input n5126;
    input n5125;
    input n5124;
    input n5123;
    input n5122;
    input n5121;
    input n5120;
    input n5119;
    input n5117;
    input n5116;
    input n5115;
    input n5114;
    input n5113;
    input n5112;
    input n5111;
    input n5110;
    input flagDemux;
    output \configRegister[24]_adj_7 ;
    output \state[1]_adj_8 ;
    input n1639;
    output \configRegister[15]_adj_9 ;
    output n8518;
    output \configRegister[14]_adj_10 ;
    output \configRegister[13]_adj_11 ;
    output \configRegister[12]_adj_12 ;
    output \configRegister[11]_adj_13 ;
    output \configRegister[10]_adj_14 ;
    input n4805;
    output \configRegister[0]_adj_15 ;
    input n4804;
    output [7:0]valueRegister_adj_130;
    input n4803;
    output [7:0]maskRegister_adj_131;
    output \configRegister[9]_adj_32 ;
    output \configRegister[26]_adj_33 ;
    output \configRegister[20]_adj_34 ;
    output \configRegister[21]_adj_35 ;
    output \configRegister[8]_adj_36 ;
    output \configRegister[7]_adj_37 ;
    input n8342;
    output \configRegister[6]_adj_38 ;
    input n5109;
    output \configRegister[27] ;
    input n5108;
    input n5107;
    input n5106;
    output \configRegister[23]_adj_39 ;
    input n5105;
    output \configRegister[22]_adj_40 ;
    input n5104;
    input n5103;
    input n5102;
    output \configRegister[17]_adj_41 ;
    input n5101;
    output \configRegister[16]_adj_42 ;
    input n5100;
    input n5099;
    input n5098;
    input n5097;
    input n5096;
    input n5095;
    input n5094;
    input n5093;
    input n5092;
    input n5091;
    input n5090;
    output \configRegister[5]_adj_43 ;
    input n5089;
    output \configRegister[4]_adj_44 ;
    input n5088;
    output \configRegister[3]_adj_45 ;
    input n5087;
    output \configRegister[2]_adj_46 ;
    input n5086;
    output \configRegister[1]_adj_47 ;
    input n5085;
    input n5084;
    input n5083;
    input n5082;
    input n5081;
    input n5080;
    input n5079;
    input n5078;
    input n5077;
    input n5076;
    input n5075;
    input n5074;
    input n5073;
    input n5071;
    output n31_adj_48;
    input n9054;
    output \configRegister[24]_adj_49 ;
    output n8837;
    output [7:0]maskRegister_adj_132;
    input n4800;
    output \configRegister[0]_adj_58 ;
    input n4799;
    output [7:0]valueRegister_adj_133;
    input n4798;
    output \configRegister[26]_adj_67 ;
    output \configRegister[20]_adj_68 ;
    output \configRegister[21]_adj_69 ;
    input n5193;
    input n6097;
    output \configRegister[27]_adj_70 ;
    input n5066;
    input n5065;
    input n5064;
    output \configRegister[23]_adj_71 ;
    input n5063;
    output \configRegister[22]_adj_72 ;
    input n5062;
    input n5061;
    input n5060;
    output \configRegister[17]_adj_73 ;
    input n5059;
    output \configRegister[16]_adj_74 ;
    input n5058;
    output \configRegister[15]_adj_75 ;
    input n5057;
    output \configRegister[14]_adj_76 ;
    input n5056;
    output \configRegister[13]_adj_77 ;
    input n5055;
    output \configRegister[12]_adj_78 ;
    input n5054;
    output \configRegister[11]_adj_79 ;
    input n5053;
    output \configRegister[10]_adj_80 ;
    input n5052;
    output \configRegister[9]_adj_81 ;
    input n5051;
    output \configRegister[8]_adj_82 ;
    input n5050;
    output \configRegister[7]_adj_83 ;
    input n5049;
    output \configRegister[6]_adj_84 ;
    input n5048;
    output \configRegister[5]_adj_85 ;
    input n5047;
    output \configRegister[4]_adj_86 ;
    input n5046;
    output \configRegister[3]_adj_87 ;
    input n5045;
    output \configRegister[2]_adj_88 ;
    input n5044;
    output \configRegister[1]_adj_89 ;
    input n5043;
    input n5042;
    input n5041;
    input n5040;
    input n5039;
    input n5038;
    input n5037;
    input n5036;
    input n5035;
    input n5034;
    input n5033;
    input n5032;
    input n5031;
    input n5030;
    input n1705;
    output \configRegister[11]_adj_90 ;
    output \configRegister[10]_adj_91 ;
    output \configRegister[9]_adj_92 ;
    output \configRegister[22]_adj_93 ;
    output \configRegister[23]_adj_94 ;
    output \configRegister[8]_adj_95 ;
    output \configRegister[7]_adj_96 ;
    output \configRegister[6]_adj_97 ;
    output \configRegister[5]_adj_98 ;
    output \configRegister[4]_adj_99 ;
    output \configRegister[3]_adj_100 ;
    output \configRegister[2]_adj_101 ;
    input n8515;
    output \configRegister[16]_adj_102 ;
    output \configRegister[17]_adj_103 ;
    output \configRegister[24]_adj_104 ;
    output \configRegister[1]_adj_105 ;
    input n9053;
    output \configRegister[0]_adj_106 ;
    output [7:0]maskRegister_adj_134;
    output [7:0]valueRegister_adj_135;
    output \configRegister[26]_adj_123 ;
    input n4797;
    input n4793;
    output \configRegister[20]_adj_124 ;
    output \configRegister[21]_adj_125 ;
    input n4789;
    input n5028;
    input n5027;
    input n5026;
    input n5025;
    input n5024;
    input n5023;
    input n5022;
    input n5021;
    input n5020;
    output \configRegister[15]_adj_126 ;
    input n5019;
    output \configRegister[14]_adj_127 ;
    input n5018;
    output \configRegister[13]_adj_128 ;
    input n5017;
    output \configRegister[12]_adj_129 ;
    input n5016;
    input n5015;
    input n5014;
    input n5013;
    input n5012;
    input n5011;
    input n5010;
    input n5009;
    input n5008;
    input n5007;
    input n5006;
    input n5005;
    input n5004;
    input n5003;
    input n5002;
    input n5001;
    input n5000;
    input n4997;
    input n4937;
    input n4936;
    input n4935;
    input n4934;
    input n4933;
    input n4932;
    input n4931;
    
    wire xtalClock_c /* synthesis SET_AS_NETWORK=xtalClock_c, is_clock=1 */ ;   // ../src/la.vhd(44[3:12])
    wire [1:0]n13;
    wire [1:0]levelReg;   // ../src/trigger.vhd(77[9:17])
    wire [3:0]stageRun;   // ../src/trigger.vhd(76[9:17])
    wire [3:0]stageMatch;   // ../src/trigger.vhd(76[19:29])
    
    wire levelReg_1__N_590;
    wire [31:0]configRegister;   // ../src/stage.vhd(74[8:22])
    
    wire n6156, n8384;
    
    SB_DFFR levelReg_927__i0 (.Q(levelReg[0]), .C(xtalClock_c), .D(n13[0]), 
            .R(arm));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/syn_unsi.vhd(118[20:31])
    SB_LUT4 i3_4_lut (.I0(stageRun[3]), .I1(stageRun[0]), .I2(\stageRun[1] ), 
            .I3(\stageRun[2] ), .O(\nstate_1__N_831[0] ));   // ../src/trigger.vhd(127[11:29])
    defparam i3_4_lut.LUT_INIT = 16'hfffe;
    SB_DFFR levelReg_927__i1 (.Q(levelReg[1]), .C(xtalClock_c), .D(n13[1]), 
            .R(arm));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/syn_unsi.vhd(118[20:31])
    SB_LUT4 i3_4_lut_adj_78 (.I0(stageMatch[0]), .I1(stageMatch[3]), .I2(stageMatch[2]), 
            .I3(stageMatch[1]), .O(levelReg_1__N_590));   // ../src/trigger.vhd(112[12:32])
    defparam i3_4_lut_adj_78.LUT_INIT = 16'hfffe;
    SB_LUT4 i6563_2_lut (.I0(levelReg_1__N_590), .I1(levelReg[0]), .I2(GND_net), 
            .I3(GND_net), .O(n13[0]));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i6563_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i6571_3_lut (.I0(levelReg[1]), .I1(levelReg_1__N_590), .I2(levelReg[0]), 
            .I3(GND_net), .O(n13[1]));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i6571_3_lut.LUT_INIT = 16'h6a6a;
    \stage(8)  \stages_3..Inst_stage  (.\configRegister[8] (\configRegister[8] ), 
            .\configRegister[7] (\configRegister[7] ), .\configRegister[27] (configRegister[27]), 
            .\cmd[35] (\cmd[35] ), .\wrtrigcfg[0] (\wrtrigcfg[0] ), .n6156(n6156), 
            .GND_net(GND_net), .\configRegister[6] (\configRegister[6] ), 
            .xtalClock_c(xtalClock_c), .sampleReady(sampleReady), .n31(n31), 
            .arm(arm), .resetCmd(resetCmd), .\configRegister[5] (\configRegister[5] ), 
            .\configRegister[4] (\configRegister[4] ), .\configRegister[3] (\configRegister[3] ), 
            .levelReg({levelReg}), .\configRegister[16] (\configRegister[16] ), 
            .\configRegister[17] (\configRegister[17] ), .\configRegister[2] (\configRegister[2] ), 
            .n6713(n6713), .\configRegister[1] (\configRegister[1] ), .VCC_net(VCC_net), 
            .\configRegister[0] (\configRegister[0] ), .\configRegister[22] (\configRegister[22] ), 
            .\configRegister[23] (\configRegister[23] ), .n4811(n4811), 
            .n4810(n4810), .valueRegister({valueRegister}), .n4806(n4806), 
            .maskRegister({maskRegister}), .\wrtrigcfg[3] (\wrtrigcfg[3] ), 
            .\configRegister[20] (\configRegister[20] ), .memoryOut({memoryOut}), 
            .\configRegister[21] (\configRegister[21] ), .n3670(n3670), 
            .\stageMatch[3] (stageMatch[3]), .\stageRun[3] (stageRun[3]), 
            .n31_adj_5(n31_adj_6), .\stageRun[0] (stageRun[0]), .\state[1] (\state[1] ), 
            .n8384(n8384), .n5147(n5147), .\configRegister[26] (\configRegister[26] ), 
            .n5146(n5146), .\configRegister[24] (\configRegister[24] ), 
            .n5145(n5145), .n5144(n5144), .n5143(n5143), .n5142(n5142), 
            .n5141(n5141), .n5140(n5140), .n5139(n5139), .\configRegister[15] (\configRegister[15] ), 
            .n5138(n5138), .\configRegister[14] (\configRegister[14] ), 
            .n5137(n5137), .\configRegister[13] (\configRegister[13] ), 
            .n5136(n5136), .\configRegister[12] (\configRegister[12] ), 
            .n5135(n5135), .\configRegister[11] (\configRegister[11] ), 
            .n5134(n5134), .\configRegister[10] (\configRegister[10] ), 
            .n5133(n5133), .\configRegister[9] (\configRegister[9] ), .n5132(n5132), 
            .n5131(n5131), .n5130(n5130), .n5129(n5129), .n5128(n5128), 
            .n5127(n5127), .n5126(n5126), .n5125(n5125), .n5124(n5124), 
            .n5123(n5123), .n5122(n5122), .n5121(n5121), .n5120(n5120), 
            .n5119(n5119), .n5117(n5117), .n5116(n5116), .n5115(n5115), 
            .n5114(n5114), .n5113(n5113), .n5112(n5112), .n5111(n5111), 
            .n5110(n5110), .flagDemux(flagDemux));   // ../src/trigger.vhd(83[15:20])
    \stage(8)_U0  \stages_2..Inst_stage  (.xtalClock_c(xtalClock_c), .resetCmd(resetCmd), 
            .flagDemux(flagDemux), .GND_net(GND_net), .\configRegister[24] (\configRegister[24]_adj_7 ), 
            .sampleReady(sampleReady), .\state[1] (\state[1]_adj_8 ), .n1639(n1639), 
            .\configRegister[15] (\configRegister[15]_adj_9 ), .n8518(n8518), 
            .arm(arm), .\configRegister[14] (\configRegister[14]_adj_10 ), 
            .\configRegister[13] (\configRegister[13]_adj_11 ), .\configRegister[12] (\configRegister[12]_adj_12 ), 
            .\configRegister[11] (\configRegister[11]_adj_13 ), .\configRegister[10] (\configRegister[10]_adj_14 ), 
            .n4805(n4805), .\configRegister[0] (\configRegister[0]_adj_15 ), 
            .n4804(n4804), .valueRegister({valueRegister_adj_130}), .n4803(n4803), 
            .maskRegister({maskRegister_adj_131}), .\configRegister[9] (\configRegister[9]_adj_32 ), 
            .memoryOut({memoryOut}), .\configRegister[26] (\configRegister[26]_adj_33 ), 
            .n3670(n3670), .\stageMatch[2] (stageMatch[2]), .\configRegister[20] (\configRegister[20]_adj_34 ), 
            .\configRegister[21] (\configRegister[21]_adj_35 ), .\configRegister[8] (\configRegister[8]_adj_36 ), 
            .\configRegister[7] (\configRegister[7]_adj_37 ), .n8342(n8342), 
            .\stageRun[2] (\stageRun[2] ), .\configRegister[6] (\configRegister[6]_adj_38 ), 
            .n5109(n5109), .\configRegister[27] (\configRegister[27] ), 
            .n5108(n5108), .n5107(n5107), .n5106(n5106), .\configRegister[23] (\configRegister[23]_adj_39 ), 
            .n5105(n5105), .\configRegister[22] (\configRegister[22]_adj_40 ), 
            .n5104(n5104), .n5103(n5103), .n5102(n5102), .\configRegister[17] (\configRegister[17]_adj_41 ), 
            .n5101(n5101), .\configRegister[16] (\configRegister[16]_adj_42 ), 
            .n5100(n5100), .n5099(n5099), .n5098(n5098), .n5097(n5097), 
            .n5096(n5096), .n5095(n5095), .n5094(n5094), .n5093(n5093), 
            .n5092(n5092), .n5091(n5091), .n5090(n5090), .\configRegister[5] (\configRegister[5]_adj_43 ), 
            .n5089(n5089), .\configRegister[4] (\configRegister[4]_adj_44 ), 
            .n5088(n5088), .\configRegister[3] (\configRegister[3]_adj_45 ), 
            .n5087(n5087), .\configRegister[2] (\configRegister[2]_adj_46 ), 
            .n5086(n5086), .\configRegister[1] (\configRegister[1]_adj_47 ), 
            .n5085(n5085), .n5084(n5084), .n5083(n5083), .n5082(n5082), 
            .n5081(n5081), .n5080(n5080), .n5079(n5079), .n5078(n5078), 
            .n5077(n5077), .n5076(n5076), .n5075(n5075), .n5074(n5074), 
            .n5073(n5073), .n5071(n5071), .n31(n31_adj_48), .n9054(n9054), 
            .VCC_net(VCC_net), .levelReg({levelReg}));   // ../src/trigger.vhd(83[15:20])
    \stage(8)_U1  \stages_1..Inst_stage  (.flagDemux(flagDemux), .GND_net(GND_net), 
            .xtalClock_c(xtalClock_c), .resetCmd(resetCmd), .sampleReady(sampleReady), 
            .\configRegister[24] (\configRegister[24]_adj_49 ), .arm(arm), 
            .n8837(n8837), .maskRegister({maskRegister_adj_132}), .n4800(n4800), 
            .\configRegister[0] (\configRegister[0]_adj_58 ), .n4799(n4799), 
            .valueRegister({valueRegister_adj_133}), .n4798(n4798), .memoryOut({memoryOut}), 
            .\configRegister[26] (\configRegister[26]_adj_67 ), .n3670(n3670), 
            .\stageMatch[1] (stageMatch[1]), .\configRegister[20] (\configRegister[20]_adj_68 ), 
            .\configRegister[21] (\configRegister[21]_adj_69 ), .n5193(n5193), 
            .\stageRun[1] (\stageRun[1] ), .n6097(n6097), .\configRegister[27] (\configRegister[27]_adj_70 ), 
            .n5066(n5066), .n5065(n5065), .n5064(n5064), .\configRegister[23] (\configRegister[23]_adj_71 ), 
            .n5063(n5063), .\configRegister[22] (\configRegister[22]_adj_72 ), 
            .n5062(n5062), .n5061(n5061), .n5060(n5060), .\configRegister[17] (\configRegister[17]_adj_73 ), 
            .n5059(n5059), .\configRegister[16] (\configRegister[16]_adj_74 ), 
            .n5058(n5058), .\configRegister[15] (\configRegister[15]_adj_75 ), 
            .n5057(n5057), .\configRegister[14] (\configRegister[14]_adj_76 ), 
            .n5056(n5056), .\configRegister[13] (\configRegister[13]_adj_77 ), 
            .n5055(n5055), .\configRegister[12] (\configRegister[12]_adj_78 ), 
            .n5054(n5054), .\configRegister[11] (\configRegister[11]_adj_79 ), 
            .n5053(n5053), .\configRegister[10] (\configRegister[10]_adj_80 ), 
            .n5052(n5052), .\configRegister[9] (\configRegister[9]_adj_81 ), 
            .n5051(n5051), .\configRegister[8] (\configRegister[8]_adj_82 ), 
            .n5050(n5050), .\configRegister[7] (\configRegister[7]_adj_83 ), 
            .n5049(n5049), .\configRegister[6] (\configRegister[6]_adj_84 ), 
            .n5048(n5048), .\configRegister[5] (\configRegister[5]_adj_85 ), 
            .n5047(n5047), .\configRegister[4] (\configRegister[4]_adj_86 ), 
            .n5046(n5046), .\configRegister[3] (\configRegister[3]_adj_87 ), 
            .n5045(n5045), .\configRegister[2] (\configRegister[2]_adj_88 ), 
            .n5044(n5044), .\configRegister[1] (\configRegister[1]_adj_89 ), 
            .n5043(n5043), .n5042(n5042), .n5041(n5041), .n5040(n5040), 
            .n5039(n5039), .n5038(n5038), .n5037(n5037), .n5036(n5036), 
            .n5035(n5035), .n5034(n5034), .n5033(n5033), .n5032(n5032), 
            .n5031(n5031), .n5030(n5030), .levelReg({levelReg}), .VCC_net(VCC_net));   // ../src/trigger.vhd(83[15:20])
    \stage(8)_U2  \stages_0..Inst_stage  (.n1705(n1705), .\configRegister[11] (\configRegister[11]_adj_90 ), 
            .\configRegister[10] (\configRegister[10]_adj_91 ), .\configRegister[9] (\configRegister[9]_adj_92 ), 
            .\configRegister[27] (configRegister[27]), .GND_net(GND_net), 
            .sampleReady(sampleReady), .xtalClock_c(xtalClock_c), .resetCmd(resetCmd), 
            .\configRegister[22] (\configRegister[22]_adj_93 ), .\configRegister[23] (\configRegister[23]_adj_94 ), 
            .\configRegister[8] (\configRegister[8]_adj_95 ), .\configRegister[7] (\configRegister[7]_adj_96 ), 
            .\configRegister[6] (\configRegister[6]_adj_97 ), .\state[1] (\state[1] ), 
            .n31(n31_adj_6), .arm(arm), .flagDemux(flagDemux), .\configRegister[5] (\configRegister[5]_adj_98 ), 
            .\configRegister[4] (\configRegister[4]_adj_99 ), .\configRegister[3] (\configRegister[3]_adj_100 ), 
            .\configRegister[2] (\configRegister[2]_adj_101 ), .n8515(n8515), 
            .levelReg({levelReg}), .\configRegister[16] (\configRegister[16]_adj_102 ), 
            .\configRegister[17] (\configRegister[17]_adj_103 ), .\configRegister[24] (\configRegister[24]_adj_104 ), 
            .\configRegister[1] (\configRegister[1]_adj_105 ), .n9053(n9053), 
            .VCC_net(VCC_net), .\configRegister[0] (\configRegister[0]_adj_106 ), 
            .maskRegister({maskRegister_adj_134}), .memoryOut({memoryOut}), 
            .valueRegister({valueRegister_adj_135}), .\configRegister[26] (\configRegister[26]_adj_123 ), 
            .n4797(n4797), .n4793(n4793), .\configRegister[20] (\configRegister[20]_adj_124 ), 
            .\configRegister[21] (\configRegister[21]_adj_125 ), .n4789(n4789), 
            .n8384(n8384), .\stageRun[0] (stageRun[0]), .n6156(n6156), 
            .n5028(n5028), .n5027(n5027), .n5026(n5026), .n5025(n5025), 
            .n5024(n5024), .n5023(n5023), .n5022(n5022), .n5021(n5021), 
            .n5020(n5020), .\configRegister[15] (\configRegister[15]_adj_126 ), 
            .n5019(n5019), .\configRegister[14] (\configRegister[14]_adj_127 ), 
            .n5018(n5018), .\configRegister[13] (\configRegister[13]_adj_128 ), 
            .n5017(n5017), .\configRegister[12] (\configRegister[12]_adj_129 ), 
            .n5016(n5016), .n5015(n5015), .n5014(n5014), .n5013(n5013), 
            .n5012(n5012), .n5011(n5011), .n5010(n5010), .n5009(n5009), 
            .n5008(n5008), .n5007(n5007), .n5006(n5006), .n5005(n5005), 
            .n5004(n5004), .n5003(n5003), .n5002(n5002), .n5001(n5001), 
            .n5000(n5000), .n4997(n4997), .n4937(n4937), .n4936(n4936), 
            .n4935(n4935), .n4934(n4934), .n4933(n4933), .n4932(n4932), 
            .n4931(n4931), .n3670(n3670), .\stageMatch[0] (stageMatch[0]));   // ../src/trigger.vhd(83[15:20])
    
endmodule
//
// Verilog Description of module \stage(8) 
//

module \stage(8)  (\configRegister[8] , \configRegister[7] , \configRegister[27] , 
            \cmd[35] , \wrtrigcfg[0] , n6156, GND_net, \configRegister[6] , 
            xtalClock_c, sampleReady, n31, arm, resetCmd, \configRegister[5] , 
            \configRegister[4] , \configRegister[3] , levelReg, \configRegister[16] , 
            \configRegister[17] , \configRegister[2] , n6713, \configRegister[1] , 
            VCC_net, \configRegister[0] , \configRegister[22] , \configRegister[23] , 
            n4811, n4810, valueRegister, n4806, maskRegister, \wrtrigcfg[3] , 
            \configRegister[20] , memoryOut, \configRegister[21] , n3670, 
            \stageMatch[3] , \stageRun[3] , n31_adj_5, \stageRun[0] , 
            \state[1] , n8384, n5147, \configRegister[26] , n5146, 
            \configRegister[24] , n5145, n5144, n5143, n5142, n5141, 
            n5140, n5139, \configRegister[15] , n5138, \configRegister[14] , 
            n5137, \configRegister[13] , n5136, \configRegister[12] , 
            n5135, \configRegister[11] , n5134, \configRegister[10] , 
            n5133, \configRegister[9] , n5132, n5131, n5130, n5129, 
            n5128, n5127, n5126, n5125, n5124, n5123, n5122, n5121, 
            n5120, n5119, n5117, n5116, n5115, n5114, n5113, n5112, 
            n5111, n5110, flagDemux);
    output \configRegister[8] ;
    output \configRegister[7] ;
    input \configRegister[27] ;
    input \cmd[35] ;
    input \wrtrigcfg[0] ;
    output n6156;
    input GND_net;
    output \configRegister[6] ;
    input xtalClock_c;
    input sampleReady;
    output n31;
    input arm;
    input resetCmd;
    output \configRegister[5] ;
    output \configRegister[4] ;
    output \configRegister[3] ;
    input [1:0]levelReg;
    output \configRegister[16] ;
    output \configRegister[17] ;
    output \configRegister[2] ;
    input n6713;
    output \configRegister[1] ;
    input VCC_net;
    output \configRegister[0] ;
    output \configRegister[22] ;
    output \configRegister[23] ;
    input n4811;
    input n4810;
    output [7:0]valueRegister;
    input n4806;
    output [7:0]maskRegister;
    input \wrtrigcfg[3] ;
    output \configRegister[20] ;
    input [7:0]memoryOut;
    output \configRegister[21] ;
    input n3670;
    output \stageMatch[3] ;
    output \stageRun[3] ;
    input n31_adj_5;
    input \stageRun[0] ;
    input \state[1] ;
    output n8384;
    input n5147;
    output \configRegister[26] ;
    input n5146;
    output \configRegister[24] ;
    input n5145;
    input n5144;
    input n5143;
    input n5142;
    input n5141;
    input n5140;
    input n5139;
    output \configRegister[15] ;
    input n5138;
    output \configRegister[14] ;
    input n5137;
    output \configRegister[13] ;
    input n5136;
    output \configRegister[12] ;
    input n5135;
    output \configRegister[11] ;
    input n5134;
    output \configRegister[10] ;
    input n5133;
    output \configRegister[9] ;
    input n5132;
    input n5131;
    input n5130;
    input n5129;
    input n5128;
    input n5127;
    input n5126;
    input n5125;
    input n5124;
    input n5123;
    input n5122;
    input n5121;
    input n5120;
    input n5119;
    input n5117;
    input n5116;
    input n5115;
    input n5114;
    input n5113;
    input n5112;
    input n5111;
    input n5110;
    input flagDemux;
    
    wire xtalClock_c /* synthesis SET_AS_NETWORK=xtalClock_c, is_clock=1 */ ;   // ../src/la.vhd(44[3:12])
    
    wire n1774;
    wire [15:0]counter;   // ../src/stage.vhd(80[8:15])
    
    wire n1765, n7921, n7922, n1773, n7920, n1772, n7919, n1766, 
        n4076;
    wire [1:0]state;   // ../src/stage.vhd(82[8:13])
    
    wire n770, n2778;
    wire [3:0]n756;
    
    wire n100, n2776, n8388, n1771, n7918;
    wire [7:0]shiftRegister_7__N_685;
    wire [7:0]shiftRegister;   // ../src/stage.vhd(75[30:43])
    
    wire match32Register_N_726, match32Register, n1770, n7917, n1769, 
        n7916, n28, n22, n2, n26, n1768, n7915, n1767, n7914, 
        n27, n9052, n25, n9102, serialChannelL16, n9096, serialChannelH16, 
        n1775, n1776, n1777, n1778, n1779, n1780, n1781;
    wire [31:0]configRegister;   // ../src/stage.vhd(74[8:22])
    
    wire n6157, n9099, configRegister_27__N_725, n8622;
    wire [7:0]intermediateRegister_7__N_677;
    wire [7:0]intermediateRegister;   // ../src/stage.vhd(75[8:28])
    
    wire n4645, n9093, n8844, n8326, n8521, n7, n4760, n4761, 
        n4762, n4763, n4766, n4764, n4765, n7_adj_1000, n11, n7928, 
        n7927, n7926, n7925, n7924, n7923;
    
    SB_LUT4 add_104_10_lut (.I0(\configRegister[8] ), .I1(counter[8]), .I2(n1765), 
            .I3(n7921), .O(n1774)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_10_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY add_104_10 (.CI(n7921), .I0(counter[8]), .I1(n1765), .CO(n7922));
    SB_LUT4 add_104_9_lut (.I0(\configRegister[7] ), .I1(counter[7]), .I2(n1765), 
            .I3(n7920), .O(n1773)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_9_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY add_104_9 (.CI(n7920), .I0(counter[7]), .I1(n1765), .CO(n7921));
    SB_LUT4 i4996_3_lut (.I0(\configRegister[27] ), .I1(\cmd[35] ), .I2(\wrtrigcfg[0] ), 
            .I3(GND_net), .O(n6156));   // ../src/core.vhd(161[31:40])
    defparam i4996_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_104_8_lut (.I0(\configRegister[6] ), .I1(counter[6]), .I2(n1765), 
            .I3(n7919), .O(n1772)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_8_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY add_104_8 (.CI(n7919), .I0(counter[6]), .I1(n1765), .CO(n7920));
    SB_DFFE counter__i0 (.Q(counter[0]), .C(xtalClock_c), .E(n4076), .D(n1766));   // ../src/stage.vhd(150[3] 180[10])
    SB_LUT4 i1669_4_lut (.I0(state[1]), .I1(n770), .I2(sampleReady), .I3(n31), 
            .O(n2778));   // ../src/stage.vhd(155[4] 179[13])
    defparam i1669_4_lut.LUT_INIT = 16'heece;
    SB_LUT4 i1667_4_lut (.I0(n756[1]), .I1(arm), .I2(n100), .I3(n756[0]), 
            .O(n2776));   // ../src/stage.vhd(155[4] 179[13])
    defparam i1667_4_lut.LUT_INIT = 16'hce0a;
    SB_DFFS state_FSM_i1 (.Q(n756[0]), .C(xtalClock_c), .D(n8388), .S(resetCmd));   // ../src/stage.vhd(155[4] 179[13])
    SB_LUT4 add_104_7_lut (.I0(\configRegister[5] ), .I1(counter[5]), .I2(n1765), 
            .I3(n7918), .O(n1771)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_7_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY add_104_7 (.CI(n7918), .I0(counter[5]), .I1(n1765), .CO(n7919));
    SB_DFFE shiftRegister_i0_i0 (.Q(shiftRegister[0]), .C(xtalClock_c), 
            .E(sampleReady), .D(shiftRegister_7__N_685[0]));   // ../src/stage.vhd(134[3] 144[10])
    SB_DFF match32Register_80 (.Q(match32Register), .C(xtalClock_c), .D(match32Register_N_726));   // ../src/stage.vhd(111[3] 117[10])
    SB_LUT4 add_104_6_lut (.I0(\configRegister[4] ), .I1(counter[4]), .I2(n1765), 
            .I3(n7917), .O(n1770)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_6_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY add_104_6 (.CI(n7917), .I0(counter[4]), .I1(n1765), .CO(n7918));
    SB_LUT4 add_104_5_lut (.I0(\configRegister[3] ), .I1(counter[3]), .I2(n1765), 
            .I3(n7916), .O(n1769)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_5_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY add_104_5 (.CI(n7916), .I0(counter[3]), .I1(n1765), .CO(n7917));
    SB_LUT4 i12_4_lut (.I0(counter[11]), .I1(counter[9]), .I2(counter[14]), 
            .I3(counter[15]), .O(n28));   // ../src/stage.vhd(170[10:38])
    defparam i12_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut (.I0(state[1]), .I1(n31), .I2(GND_net), .I3(GND_net), 
            .O(n22));   // ../src/stage.vhd(155[4] 179[13])
    defparam i1_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_4_lut (.I0(sampleReady), .I1(arm), .I2(n22), .I3(n756[0]), 
            .O(n8388));   // ../src/core.vhd(163[68:79])
    defparam i1_4_lut.LUT_INIT = 16'hb3a0;
    SB_LUT4 i1_2_lut_adj_74 (.I0(levelReg[0]), .I1(\configRegister[16] ), 
            .I2(GND_net), .I3(GND_net), .O(n2));   // ../src/stage.vhd(163[35:52])
    defparam i1_2_lut_adj_74.LUT_INIT = 16'h4444;
    SB_LUT4 i10_4_lut (.I0(counter[8]), .I1(counter[3]), .I2(counter[13]), 
            .I3(counter[5]), .O(n26));   // ../src/stage.vhd(170[10:38])
    defparam i10_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i44_4_lut (.I0(match32Register), .I1(n2), .I2(levelReg[1]), 
            .I3(\configRegister[17] ), .O(n100));   // ../src/stage.vhd(163[9:52])
    defparam i44_4_lut.LUT_INIT = 16'h20a2;
    SB_LUT4 add_104_4_lut (.I0(\configRegister[2] ), .I1(counter[2]), .I2(n1765), 
            .I3(n7915), .O(n1768)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_4_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY add_104_4 (.CI(n7915), .I0(counter[2]), .I1(n1765), .CO(n7916));
    SB_LUT4 i232_2_lut (.I0(n100), .I1(n756[1]), .I2(GND_net), .I3(GND_net), 
            .O(n770));   // ../src/stage.vhd(155[4] 179[13])
    defparam i232_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_75 (.I0(resetCmd), .I1(n770), .I2(n6713), .I3(state[1]), 
            .O(n4076));
    defparam i1_4_lut_adj_75.LUT_INIT = 16'h5044;
    SB_LUT4 add_104_3_lut (.I0(\configRegister[1] ), .I1(counter[1]), .I2(n1765), 
            .I3(n7914), .O(n1767)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_3_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 i11_4_lut (.I0(counter[10]), .I1(counter[2]), .I2(counter[12]), 
            .I3(counter[7]), .O(n27));   // ../src/stage.vhd(170[10:38])
    defparam i11_4_lut.LUT_INIT = 16'hfffe;
    SB_CARRY add_104_3 (.CI(n7914), .I0(counter[1]), .I1(n1765), .CO(n7915));
    SB_LUT4 add_104_2_lut (.I0(\configRegister[0] ), .I1(counter[0]), .I2(n9052), 
            .I3(VCC_net), .O(n1766)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_2_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_104_2 (.CI(VCC_net), .I0(counter[0]), .I1(n9052), .CO(n7914));
    SB_LUT4 i9_4_lut (.I0(counter[0]), .I1(counter[1]), .I2(counter[6]), 
            .I3(counter[4]), .O(n25));   // ../src/stage.vhd(170[10:38])
    defparam i9_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i7667_1_lut_2_lut_3_lut (.I0(state[1]), .I1(sampleReady), .I2(n31), 
            .I3(GND_net), .O(n9052));   // ../src/stage.vhd(155[4] 179[13])
    defparam i7667_1_lut_2_lut_3_lut.LUT_INIT = 16'h7f7f;
    SB_LUT4 i15_4_lut (.I0(n25), .I1(n27), .I2(n26), .I3(n28), .O(n31));   // ../src/stage.vhd(170[10:38])
    defparam i15_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 mux_746_i1_3_lut_4_lut (.I0(\configRegister[22] ), .I1(\configRegister[23] ), 
            .I2(n9102), .I3(serialChannelL16), .O(serialChannelL16));
    defparam mux_746_i1_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 mux_754_i1_3_lut_4_lut (.I0(\configRegister[22] ), .I1(\configRegister[23] ), 
            .I2(n9096), .I3(serialChannelH16), .O(serialChannelH16));
    defparam mux_754_i1_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_DFFE counter__i1 (.Q(counter[1]), .C(xtalClock_c), .E(n4076), .D(n1767));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFE counter__i2 (.Q(counter[2]), .C(xtalClock_c), .E(n4076), .D(n1768));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFE counter__i3 (.Q(counter[3]), .C(xtalClock_c), .E(n4076), .D(n1769));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFE counter__i4 (.Q(counter[4]), .C(xtalClock_c), .E(n4076), .D(n1770));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFE counter__i5 (.Q(counter[5]), .C(xtalClock_c), .E(n4076), .D(n1771));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFE counter__i6 (.Q(counter[6]), .C(xtalClock_c), .E(n4076), .D(n1772));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFE counter__i7 (.Q(counter[7]), .C(xtalClock_c), .E(n4076), .D(n1773));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFE counter__i8 (.Q(counter[8]), .C(xtalClock_c), .E(n4076), .D(n1774));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFE counter__i9 (.Q(counter[9]), .C(xtalClock_c), .E(n4076), .D(n1775));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFE counter__i10 (.Q(counter[10]), .C(xtalClock_c), .E(n4076), 
            .D(n1776));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFE counter__i11 (.Q(counter[11]), .C(xtalClock_c), .E(n4076), 
            .D(n1777));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFE counter__i12 (.Q(counter[12]), .C(xtalClock_c), .E(n4076), 
            .D(n1778));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFE counter__i13 (.Q(counter[13]), .C(xtalClock_c), .E(n4076), 
            .D(n1779));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFE counter__i14 (.Q(counter[14]), .C(xtalClock_c), .E(n4076), 
            .D(n1780));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFE counter__i15 (.Q(counter[15]), .C(xtalClock_c), .E(n4076), 
            .D(n1781));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFR state_FSM_i2 (.Q(n756[1]), .C(xtalClock_c), .D(n2776), .R(resetCmd));   // ../src/stage.vhd(155[4] 179[13])
    SB_DFFR state_FSM_i3 (.Q(state[1]), .C(xtalClock_c), .D(n2778), .R(resetCmd));   // ../src/stage.vhd(155[4] 179[13])
    SB_DFF configRegister__i1 (.Q(\configRegister[0] ), .C(xtalClock_c), 
           .D(n4811));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF valueRegister_i0_i0 (.Q(valueRegister[0]), .C(xtalClock_c), .D(n4810));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF maskRegister_i0_i0 (.Q(maskRegister[0]), .C(xtalClock_c), .D(n4806));   // ../src/stage.vhd(186[3] 196[10])
    SB_LUT4 i4997_3_lut (.I0(configRegister[27]), .I1(\cmd[35] ), .I2(\wrtrigcfg[3] ), 
            .I3(GND_net), .O(n6157));   // ../src/core.vhd(161[31:40])
    defparam i4997_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE shiftRegister_i0_i1 (.Q(shiftRegister[1]), .C(xtalClock_c), 
            .E(sampleReady), .D(shiftRegister_7__N_685[1]));   // ../src/stage.vhd(134[3] 144[10])
    SB_DFFE shiftRegister_i0_i2 (.Q(shiftRegister[2]), .C(xtalClock_c), 
            .E(sampleReady), .D(shiftRegister_7__N_685[2]));   // ../src/stage.vhd(134[3] 144[10])
    SB_DFFE shiftRegister_i0_i3 (.Q(shiftRegister[3]), .C(xtalClock_c), 
            .E(sampleReady), .D(shiftRegister_7__N_685[3]));   // ../src/stage.vhd(134[3] 144[10])
    SB_DFFE shiftRegister_i0_i4 (.Q(shiftRegister[4]), .C(xtalClock_c), 
            .E(sampleReady), .D(shiftRegister_7__N_685[4]));   // ../src/stage.vhd(134[3] 144[10])
    SB_DFFE shiftRegister_i0_i5 (.Q(shiftRegister[5]), .C(xtalClock_c), 
            .E(sampleReady), .D(shiftRegister_7__N_685[5]));   // ../src/stage.vhd(134[3] 144[10])
    SB_DFFE shiftRegister_i0_i6 (.Q(shiftRegister[6]), .C(xtalClock_c), 
            .E(sampleReady), .D(shiftRegister_7__N_685[6]));   // ../src/stage.vhd(134[3] 144[10])
    SB_DFFE shiftRegister_i0_i7 (.Q(shiftRegister[7]), .C(xtalClock_c), 
            .E(sampleReady), .D(shiftRegister_7__N_685[7]));   // ../src/stage.vhd(134[3] 144[10])
    SB_LUT4 configRegister_20__bdd_4_lut (.I0(\configRegister[20] ), .I1(memoryOut[2]), 
            .I2(memoryOut[3]), .I3(\configRegister[21] ), .O(n9099));
    defparam configRegister_20__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 n9099_bdd_4_lut (.I0(n9099), .I1(memoryOut[1]), .I2(memoryOut[0]), 
            .I3(\configRegister[21] ), .O(n9102));
    defparam n9099_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFESR match_84 (.Q(\stageMatch[3] ), .C(xtalClock_c), .E(n3670), 
            .D(configRegister_27__N_725), .R(n8622));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFSR intermediateRegister_i0 (.Q(intermediateRegister[0]), .C(xtalClock_c), 
            .D(intermediateRegister_7__N_677[0]), .R(n4645));   // ../src/stage.vhd(99[3] 101[10])
    SB_LUT4 configRegister_20__bdd_4_lut_7706 (.I0(\configRegister[20] ), 
            .I1(memoryOut[6]), .I2(memoryOut[7]), .I3(\configRegister[21] ), 
            .O(n9093));
    defparam configRegister_20__bdd_4_lut_7706.LUT_INIT = 16'he4aa;
    SB_LUT4 n9093_bdd_4_lut (.I0(n9093), .I1(memoryOut[5]), .I2(memoryOut[4]), 
            .I3(\configRegister[21] ), .O(n9096));
    defparam n9093_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i7564_4_lut (.I0(n31), .I1(state[1]), .I2(sampleReady), .I3(configRegister[27]), 
            .O(n8844));   // ../src/core.vhd(163[68:79])
    defparam i7564_4_lut.LUT_INIT = 16'h4000;
    SB_LUT4 i11_3_lut (.I0(n8844), .I1(\stageRun[3] ), .I2(resetCmd), 
            .I3(GND_net), .O(n8326));   // ../src/core.vhd(163[68:79])
    defparam i11_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF run_83 (.Q(\stageRun[3] ), .C(xtalClock_c), .D(n8326));   // ../src/stage.vhd(150[3] 180[10])
    SB_LUT4 i1_2_lut_adj_76 (.I0(n31_adj_5), .I1(sampleReady), .I2(GND_net), 
            .I3(GND_net), .O(n8521));
    defparam i1_2_lut_adj_76.LUT_INIT = 16'h4444;
    SB_LUT4 i18_4_lut (.I0(\stageRun[0] ), .I1(n8521), .I2(n3670), .I3(\configRegister[27] ), 
            .O(n7));
    defparam i18_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_3_lut (.I0(resetCmd), .I1(n7), .I2(\state[1] ), .I3(GND_net), 
            .O(n8384));
    defparam i1_3_lut.LUT_INIT = 16'hc8c8;
    SB_DFF configRegister__i25 (.Q(configRegister[27]), .C(xtalClock_c), 
           .D(n6157));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i24 (.Q(\configRegister[26] ), .C(xtalClock_c), 
           .D(n5147));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i23 (.Q(\configRegister[24] ), .C(xtalClock_c), 
           .D(n5146));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i22 (.Q(\configRegister[23] ), .C(xtalClock_c), 
           .D(n5145));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i21 (.Q(\configRegister[22] ), .C(xtalClock_c), 
           .D(n5144));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i20 (.Q(\configRegister[21] ), .C(xtalClock_c), 
           .D(n5143));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i19 (.Q(\configRegister[20] ), .C(xtalClock_c), 
           .D(n5142));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i18 (.Q(\configRegister[17] ), .C(xtalClock_c), 
           .D(n5141));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i17 (.Q(\configRegister[16] ), .C(xtalClock_c), 
           .D(n5140));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i16 (.Q(\configRegister[15] ), .C(xtalClock_c), 
           .D(n5139));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i15 (.Q(\configRegister[14] ), .C(xtalClock_c), 
           .D(n5138));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i14 (.Q(\configRegister[13] ), .C(xtalClock_c), 
           .D(n5137));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i13 (.Q(\configRegister[12] ), .C(xtalClock_c), 
           .D(n5136));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i12 (.Q(\configRegister[11] ), .C(xtalClock_c), 
           .D(n5135));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i11 (.Q(\configRegister[10] ), .C(xtalClock_c), 
           .D(n5134));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i10 (.Q(\configRegister[9] ), .C(xtalClock_c), 
           .D(n5133));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i9 (.Q(\configRegister[8] ), .C(xtalClock_c), 
           .D(n5132));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i8 (.Q(\configRegister[7] ), .C(xtalClock_c), 
           .D(n5131));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i7 (.Q(\configRegister[6] ), .C(xtalClock_c), 
           .D(n5130));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i6 (.Q(\configRegister[5] ), .C(xtalClock_c), 
           .D(n5129));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i5 (.Q(\configRegister[4] ), .C(xtalClock_c), 
           .D(n5128));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i4 (.Q(\configRegister[3] ), .C(xtalClock_c), 
           .D(n5127));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i3 (.Q(\configRegister[2] ), .C(xtalClock_c), 
           .D(n5126));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i2 (.Q(\configRegister[1] ), .C(xtalClock_c), 
           .D(n5125));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF valueRegister_i0_i7 (.Q(valueRegister[7]), .C(xtalClock_c), .D(n5124));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF valueRegister_i0_i6 (.Q(valueRegister[6]), .C(xtalClock_c), .D(n5123));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF valueRegister_i0_i5 (.Q(valueRegister[5]), .C(xtalClock_c), .D(n5122));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF valueRegister_i0_i4 (.Q(valueRegister[4]), .C(xtalClock_c), .D(n5121));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF valueRegister_i0_i3 (.Q(valueRegister[3]), .C(xtalClock_c), .D(n5120));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF valueRegister_i0_i2 (.Q(valueRegister[2]), .C(xtalClock_c), .D(n5119));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF valueRegister_i0_i1 (.Q(valueRegister[1]), .C(xtalClock_c), .D(n5117));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF maskRegister_i0_i7 (.Q(maskRegister[7]), .C(xtalClock_c), .D(n5116));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF maskRegister_i0_i6 (.Q(maskRegister[6]), .C(xtalClock_c), .D(n5115));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF maskRegister_i0_i5 (.Q(maskRegister[5]), .C(xtalClock_c), .D(n5114));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF maskRegister_i0_i4 (.Q(maskRegister[4]), .C(xtalClock_c), .D(n5113));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF maskRegister_i0_i3 (.Q(maskRegister[3]), .C(xtalClock_c), .D(n5112));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF maskRegister_i0_i2 (.Q(maskRegister[2]), .C(xtalClock_c), .D(n5111));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF maskRegister_i0_i1 (.Q(maskRegister[1]), .C(xtalClock_c), .D(n5110));   // ../src/stage.vhd(186[3] 196[10])
    SB_LUT4 i890_2_lut_3_lut (.I0(state[1]), .I1(sampleReady), .I2(n31), 
            .I3(GND_net), .O(n1765));   // ../src/stage.vhd(155[4] 179[13])
    defparam i890_2_lut_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i3601_1_lut (.I0(maskRegister[1]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n4760));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3601_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 xor_7_i2_4_lut (.I0(memoryOut[1]), .I1(valueRegister[1]), .I2(shiftRegister[1]), 
            .I3(\configRegister[26] ), .O(intermediateRegister_7__N_677[1]));   // ../src/stage.vhd(100[29:38])
    defparam xor_7_i2_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 i3602_1_lut (.I0(maskRegister[2]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n4761));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3602_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 xor_7_i3_4_lut (.I0(memoryOut[2]), .I1(valueRegister[2]), .I2(shiftRegister[2]), 
            .I3(\configRegister[26] ), .O(intermediateRegister_7__N_677[2]));   // ../src/stage.vhd(100[29:38])
    defparam xor_7_i3_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 i3603_1_lut (.I0(maskRegister[3]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n4762));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3603_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 xor_7_i4_4_lut (.I0(memoryOut[3]), .I1(valueRegister[3]), .I2(shiftRegister[3]), 
            .I3(\configRegister[26] ), .O(intermediateRegister_7__N_677[3]));   // ../src/stage.vhd(100[29:38])
    defparam xor_7_i4_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 i3604_1_lut (.I0(maskRegister[4]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n4763));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3604_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 xor_7_i5_4_lut (.I0(memoryOut[4]), .I1(valueRegister[4]), .I2(shiftRegister[4]), 
            .I3(\configRegister[26] ), .O(intermediateRegister_7__N_677[4]));   // ../src/stage.vhd(100[29:38])
    defparam xor_7_i5_4_lut.LUT_INIT = 16'h3c66;
    SB_DFFSR intermediateRegister_i7 (.Q(intermediateRegister[7]), .C(xtalClock_c), 
            .D(intermediateRegister_7__N_677[7]), .R(n4766));   // ../src/stage.vhd(99[3] 101[10])
    SB_LUT4 i3605_1_lut (.I0(maskRegister[5]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n4764));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3605_1_lut.LUT_INIT = 16'h5555;
    SB_DFFSR intermediateRegister_i6 (.Q(intermediateRegister[6]), .C(xtalClock_c), 
            .D(intermediateRegister_7__N_677[6]), .R(n4765));   // ../src/stage.vhd(99[3] 101[10])
    SB_DFFSR intermediateRegister_i5 (.Q(intermediateRegister[5]), .C(xtalClock_c), 
            .D(intermediateRegister_7__N_677[5]), .R(n4764));   // ../src/stage.vhd(99[3] 101[10])
    SB_LUT4 xor_7_i6_4_lut (.I0(memoryOut[5]), .I1(valueRegister[5]), .I2(shiftRegister[5]), 
            .I3(\configRegister[26] ), .O(intermediateRegister_7__N_677[5]));   // ../src/stage.vhd(100[29:38])
    defparam xor_7_i6_4_lut.LUT_INIT = 16'h3c66;
    SB_DFFSR intermediateRegister_i4 (.Q(intermediateRegister[4]), .C(xtalClock_c), 
            .D(intermediateRegister_7__N_677[4]), .R(n4763));   // ../src/stage.vhd(99[3] 101[10])
    SB_DFFSR intermediateRegister_i3 (.Q(intermediateRegister[3]), .C(xtalClock_c), 
            .D(intermediateRegister_7__N_677[3]), .R(n4762));   // ../src/stage.vhd(99[3] 101[10])
    SB_DFFSR intermediateRegister_i2 (.Q(intermediateRegister[2]), .C(xtalClock_c), 
            .D(intermediateRegister_7__N_677[2]), .R(n4761));   // ../src/stage.vhd(99[3] 101[10])
    SB_DFFSR intermediateRegister_i1 (.Q(intermediateRegister[1]), .C(xtalClock_c), 
            .D(intermediateRegister_7__N_677[1]), .R(n4760));   // ../src/stage.vhd(99[3] 101[10])
    SB_LUT4 i3606_1_lut (.I0(maskRegister[6]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n4765));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3606_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 xor_7_i7_4_lut (.I0(memoryOut[6]), .I1(valueRegister[6]), .I2(shiftRegister[6]), 
            .I3(\configRegister[26] ), .O(intermediateRegister_7__N_677[6]));   // ../src/stage.vhd(100[29:38])
    defparam xor_7_i7_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 i3486_1_lut (.I0(maskRegister[0]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n4645));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3486_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i3607_1_lut (.I0(maskRegister[7]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n4766));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3607_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 xor_7_i1_4_lut (.I0(memoryOut[0]), .I1(valueRegister[0]), .I2(shiftRegister[0]), 
            .I3(\configRegister[26] ), .O(intermediateRegister_7__N_677[0]));   // ../src/stage.vhd(100[29:38])
    defparam xor_7_i1_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 xor_7_i8_4_lut (.I0(memoryOut[7]), .I1(valueRegister[7]), .I2(shiftRegister[7]), 
            .I3(\configRegister[26] ), .O(intermediateRegister_7__N_677[7]));   // ../src/stage.vhd(100[29:38])
    defparam xor_7_i8_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 i7644_4_lut (.I0(sampleReady), .I1(resetCmd), .I2(n31), .I3(state[1]), 
            .O(n8622));
    defparam i7644_4_lut.LUT_INIT = 16'h3133;
    SB_LUT4 configRegister_27__I_0_1_lut (.I0(configRegister[27]), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(configRegister_27__N_725));   // ../src/stage.vhd(172[17:29])
    defparam configRegister_27__I_0_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i3_4_lut (.I0(intermediateRegister[0]), .I1(intermediateRegister[2]), 
            .I2(intermediateRegister[1]), .I3(intermediateRegister[3]), 
            .O(n7_adj_1000));   // ../src/stage.vhd(105[23:85])
    defparam i3_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i3_4_lut_adj_77 (.I0(intermediateRegister[4]), .I1(intermediateRegister[6]), 
            .I2(intermediateRegister[5]), .I3(intermediateRegister[7]), 
            .O(n11));   // ../src/stage.vhd(105[23:85])
    defparam i3_4_lut_adj_77.LUT_INIT = 16'hfffe;
    SB_LUT4 match32Register_I_0_3_lut (.I0(n11), .I1(flagDemux), .I2(n7_adj_1000), 
            .I3(GND_net), .O(match32Register_N_726));   // ../src/stage.vhd(112[4] 116[11])
    defparam match32Register_I_0_3_lut.LUT_INIT = 16'h4d4d;
    SB_LUT4 add_104_17_lut (.I0(\configRegister[15] ), .I1(counter[15]), 
            .I2(n1765), .I3(n7928), .O(n1781)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_17_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 add_104_16_lut (.I0(\configRegister[14] ), .I1(counter[14]), 
            .I2(n1765), .I3(n7927), .O(n1780)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_16_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY add_104_16 (.CI(n7927), .I0(counter[14]), .I1(n1765), .CO(n7928));
    SB_LUT4 add_104_15_lut (.I0(\configRegister[13] ), .I1(counter[13]), 
            .I2(n1765), .I3(n7926), .O(n1779)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_15_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY add_104_15 (.CI(n7926), .I0(counter[13]), .I1(n1765), .CO(n7927));
    SB_LUT4 add_104_14_lut (.I0(\configRegister[12] ), .I1(counter[12]), 
            .I2(n1765), .I3(n7925), .O(n1778)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_14_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY add_104_14 (.CI(n7925), .I0(counter[12]), .I1(n1765), .CO(n7926));
    SB_LUT4 add_104_13_lut (.I0(\configRegister[11] ), .I1(counter[11]), 
            .I2(n1765), .I3(n7924), .O(n1777)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_13_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY add_104_13 (.CI(n7924), .I0(counter[11]), .I1(n1765), .CO(n7925));
    SB_LUT4 add_104_12_lut (.I0(\configRegister[10] ), .I1(counter[10]), 
            .I2(n1765), .I3(n7923), .O(n1776)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_12_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY add_104_12 (.CI(n7923), .I0(counter[10]), .I1(n1765), .CO(n7924));
    SB_LUT4 add_104_11_lut (.I0(\configRegister[9] ), .I1(counter[9]), .I2(n1765), 
            .I3(n7922), .O(n1775)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_11_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY add_104_11 (.CI(n7922), .I0(counter[9]), .I1(n1765), .CO(n7923));
    SB_LUT4 i1657_4_lut (.I0(serialChannelL16), .I1(serialChannelH16), .I2(\configRegister[24] ), 
            .I3(flagDemux), .O(shiftRegister_7__N_685[0]));   // ../src/stage.vhd(136[5] 142[12])
    defparam i1657_4_lut.LUT_INIT = 16'haaca;
    SB_LUT4 mux_35_i8_3_lut (.I0(shiftRegister[6]), .I1(shiftRegister[5]), 
            .I2(flagDemux), .I3(GND_net), .O(shiftRegister_7__N_685[7]));   // ../src/stage.vhd(136[5] 142[12])
    defparam mux_35_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_35_i7_3_lut (.I0(shiftRegister[5]), .I1(shiftRegister[4]), 
            .I2(flagDemux), .I3(GND_net), .O(shiftRegister_7__N_685[6]));   // ../src/stage.vhd(136[5] 142[12])
    defparam mux_35_i7_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_35_i6_3_lut (.I0(shiftRegister[4]), .I1(shiftRegister[3]), 
            .I2(flagDemux), .I3(GND_net), .O(shiftRegister_7__N_685[5]));   // ../src/stage.vhd(136[5] 142[12])
    defparam mux_35_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_35_i5_3_lut (.I0(shiftRegister[3]), .I1(shiftRegister[2]), 
            .I2(flagDemux), .I3(GND_net), .O(shiftRegister_7__N_685[4]));   // ../src/stage.vhd(136[5] 142[12])
    defparam mux_35_i5_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_35_i4_3_lut (.I0(shiftRegister[2]), .I1(shiftRegister[1]), 
            .I2(flagDemux), .I3(GND_net), .O(shiftRegister_7__N_685[3]));   // ../src/stage.vhd(136[5] 142[12])
    defparam mux_35_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_35_i3_3_lut (.I0(shiftRegister[1]), .I1(shiftRegister[0]), 
            .I2(flagDemux), .I3(GND_net), .O(shiftRegister_7__N_685[2]));   // ../src/stage.vhd(136[5] 142[12])
    defparam mux_35_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_35_i2_3_lut (.I0(shiftRegister[0]), .I1(serialChannelH16), 
            .I2(flagDemux), .I3(GND_net), .O(shiftRegister_7__N_685[1]));   // ../src/stage.vhd(136[5] 142[12])
    defparam mux_35_i2_3_lut.LUT_INIT = 16'hcaca;
    
endmodule
//
// Verilog Description of module \stage(8)_U0 
//

module \stage(8)_U0  (xtalClock_c, resetCmd, flagDemux, GND_net, \configRegister[24] , 
            sampleReady, \state[1] , n1639, \configRegister[15] , n8518, 
            arm, \configRegister[14] , \configRegister[13] , \configRegister[12] , 
            \configRegister[11] , \configRegister[10] , n4805, \configRegister[0] , 
            n4804, valueRegister, n4803, maskRegister, \configRegister[9] , 
            memoryOut, \configRegister[26] , n3670, \stageMatch[2] , 
            \configRegister[20] , \configRegister[21] , \configRegister[8] , 
            \configRegister[7] , n8342, \stageRun[2] , \configRegister[6] , 
            n5109, \configRegister[27] , n5108, n5107, n5106, \configRegister[23] , 
            n5105, \configRegister[22] , n5104, n5103, n5102, \configRegister[17] , 
            n5101, \configRegister[16] , n5100, n5099, n5098, n5097, 
            n5096, n5095, n5094, n5093, n5092, n5091, n5090, \configRegister[5] , 
            n5089, \configRegister[4] , n5088, \configRegister[3] , 
            n5087, \configRegister[2] , n5086, \configRegister[1] , 
            n5085, n5084, n5083, n5082, n5081, n5080, n5079, n5078, 
            n5077, n5076, n5075, n5074, n5073, n5071, n31, n9054, 
            VCC_net, levelReg);
    input xtalClock_c;
    input resetCmd;
    input flagDemux;
    input GND_net;
    output \configRegister[24] ;
    input sampleReady;
    output \state[1] ;
    input n1639;
    output \configRegister[15] ;
    output n8518;
    input arm;
    output \configRegister[14] ;
    output \configRegister[13] ;
    output \configRegister[12] ;
    output \configRegister[11] ;
    output \configRegister[10] ;
    input n4805;
    output \configRegister[0] ;
    input n4804;
    output [7:0]valueRegister;
    input n4803;
    output [7:0]maskRegister;
    output \configRegister[9] ;
    input [7:0]memoryOut;
    output \configRegister[26] ;
    input n3670;
    output \stageMatch[2] ;
    output \configRegister[20] ;
    output \configRegister[21] ;
    output \configRegister[8] ;
    output \configRegister[7] ;
    input n8342;
    output \stageRun[2] ;
    output \configRegister[6] ;
    input n5109;
    output \configRegister[27] ;
    input n5108;
    input n5107;
    input n5106;
    output \configRegister[23] ;
    input n5105;
    output \configRegister[22] ;
    input n5104;
    input n5103;
    input n5102;
    output \configRegister[17] ;
    input n5101;
    output \configRegister[16] ;
    input n5100;
    input n5099;
    input n5098;
    input n5097;
    input n5096;
    input n5095;
    input n5094;
    input n5093;
    input n5092;
    input n5091;
    input n5090;
    output \configRegister[5] ;
    input n5089;
    output \configRegister[4] ;
    input n5088;
    output \configRegister[3] ;
    input n5087;
    output \configRegister[2] ;
    input n5086;
    output \configRegister[1] ;
    input n5085;
    input n5084;
    input n5083;
    input n5082;
    input n5081;
    input n5080;
    input n5079;
    input n5078;
    input n5077;
    input n5076;
    input n5075;
    input n5074;
    input n5073;
    input n5071;
    output n31;
    input n9054;
    input VCC_net;
    input [1:0]levelReg;
    
    wire xtalClock_c /* synthesis SET_AS_NETWORK=xtalClock_c, is_clock=1 */ ;   // ../src/la.vhd(44[3:12])
    
    wire n2726;
    wire [3:0]n653;
    wire [7:0]shiftRegister;   // ../src/stage.vhd(75[30:43])
    wire [7:0]shiftRegister_7__N_685;
    wire [7:0]intermediateRegister;   // ../src/stage.vhd(75[8:28])
    
    wire n7, n7_adj_996, match32Register_N_726, serialChannelH16, serialChannelL16, 
        match32Register, n1640, n4114;
    wire [15:0]counter;   // ../src/stage.vhd(80[8:15])
    
    wire n2696, n2698, n1655, n7913, n1654, n7912, n1653, n7911, 
        n1652, n7910, n1651, n7909, n1650, n7908, n99, n667, 
        n1641, n1642, n1643, n1644, n1645, n1646, n1647, n1648, 
        n1649, n7907, n4753;
    wire [7:0]intermediateRegister_7__N_677;
    
    wire configRegister_27__N_725, n3, n4643, n9087, n9090, n9081, 
        n9084, n7906, n4754, n4755, n7905, n7904, n4756, n4757, 
        n4758, n100, n4759, n7903, n7902, n7901, n7900, n7899, 
        n28, n26, n27, n25, n8808;
    
    SB_DFFS state_FSM_i1 (.Q(n653[0]), .C(xtalClock_c), .D(n2726), .S(resetCmd));   // ../src/stage.vhd(155[4] 179[13])
    SB_LUT4 mux_35_i8_3_lut (.I0(shiftRegister[6]), .I1(shiftRegister[5]), 
            .I2(flagDemux), .I3(GND_net), .O(shiftRegister_7__N_685[7]));   // ../src/stage.vhd(136[5] 142[12])
    defparam mux_35_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_35_i7_3_lut (.I0(shiftRegister[5]), .I1(shiftRegister[4]), 
            .I2(flagDemux), .I3(GND_net), .O(shiftRegister_7__N_685[6]));   // ../src/stage.vhd(136[5] 142[12])
    defparam mux_35_i7_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_35_i6_3_lut (.I0(shiftRegister[4]), .I1(shiftRegister[3]), 
            .I2(flagDemux), .I3(GND_net), .O(shiftRegister_7__N_685[5]));   // ../src/stage.vhd(136[5] 142[12])
    defparam mux_35_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_35_i5_3_lut (.I0(shiftRegister[3]), .I1(shiftRegister[2]), 
            .I2(flagDemux), .I3(GND_net), .O(shiftRegister_7__N_685[4]));   // ../src/stage.vhd(136[5] 142[12])
    defparam mux_35_i5_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3_4_lut (.I0(intermediateRegister[0]), .I1(intermediateRegister[2]), 
            .I2(intermediateRegister[1]), .I3(intermediateRegister[3]), 
            .O(n7));   // ../src/stage.vhd(105[23:85])
    defparam i3_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 mux_35_i4_3_lut (.I0(shiftRegister[2]), .I1(shiftRegister[1]), 
            .I2(flagDemux), .I3(GND_net), .O(shiftRegister_7__N_685[3]));   // ../src/stage.vhd(136[5] 142[12])
    defparam mux_35_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3_4_lut_adj_72 (.I0(intermediateRegister[4]), .I1(intermediateRegister[6]), 
            .I2(intermediateRegister[5]), .I3(intermediateRegister[7]), 
            .O(n7_adj_996));   // ../src/stage.vhd(106[23:90])
    defparam i3_4_lut_adj_72.LUT_INIT = 16'hfffe;
    SB_LUT4 mux_35_i3_3_lut (.I0(shiftRegister[1]), .I1(shiftRegister[0]), 
            .I2(flagDemux), .I3(GND_net), .O(shiftRegister_7__N_685[2]));   // ../src/stage.vhd(136[5] 142[12])
    defparam mux_35_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 match32Register_I_0_3_lut (.I0(n7_adj_996), .I1(flagDemux), 
            .I2(n7), .I3(GND_net), .O(match32Register_N_726));   // ../src/stage.vhd(112[4] 116[11])
    defparam match32Register_I_0_3_lut.LUT_INIT = 16'h4d4d;
    SB_LUT4 mux_35_i2_3_lut (.I0(shiftRegister[0]), .I1(serialChannelH16), 
            .I2(flagDemux), .I3(GND_net), .O(shiftRegister_7__N_685[1]));   // ../src/stage.vhd(136[5] 142[12])
    defparam mux_35_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1643_4_lut (.I0(serialChannelL16), .I1(serialChannelH16), .I2(\configRegister[24] ), 
            .I3(flagDemux), .O(shiftRegister_7__N_685[0]));   // ../src/stage.vhd(136[5] 142[12])
    defparam i1643_4_lut.LUT_INIT = 16'haaca;
    SB_DFFE shiftRegister_i0_i0 (.Q(shiftRegister[0]), .C(xtalClock_c), 
            .E(sampleReady), .D(shiftRegister_7__N_685[0]));   // ../src/stage.vhd(134[3] 144[10])
    SB_DFF match32Register_80 (.Q(match32Register), .C(xtalClock_c), .D(match32Register_N_726));   // ../src/stage.vhd(111[3] 117[10])
    SB_DFFE counter__i0 (.Q(counter[0]), .C(xtalClock_c), .E(n4114), .D(n1640));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFR state_FSM_i3 (.Q(\state[1] ), .C(xtalClock_c), .D(n2696), 
            .R(resetCmd));   // ../src/stage.vhd(155[4] 179[13])
    SB_DFFR state_FSM_i2 (.Q(n653[1]), .C(xtalClock_c), .D(n2698), .R(resetCmd));   // ../src/stage.vhd(155[4] 179[13])
    SB_LUT4 add_104_17_lut (.I0(\configRegister[15] ), .I1(counter[15]), 
            .I2(n1639), .I3(n7913), .O(n1655)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_17_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 i1617_3_lut_4_lut (.I0(\state[1] ), .I1(n8518), .I2(arm), 
            .I3(n653[0]), .O(n2726));   // ../src/stage.vhd(155[4] 179[13])
    defparam i1617_3_lut_4_lut.LUT_INIT = 16'h8f88;
    SB_LUT4 add_104_16_lut (.I0(\configRegister[14] ), .I1(counter[14]), 
            .I2(n1639), .I3(n7912), .O(n1654)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_16_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY add_104_16 (.CI(n7912), .I0(counter[14]), .I1(n1639), .CO(n7913));
    SB_LUT4 add_104_15_lut (.I0(\configRegister[13] ), .I1(counter[13]), 
            .I2(n1639), .I3(n7911), .O(n1653)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_15_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY add_104_15 (.CI(n7911), .I0(counter[13]), .I1(n1639), .CO(n7912));
    SB_LUT4 add_104_14_lut (.I0(\configRegister[12] ), .I1(counter[12]), 
            .I2(n1639), .I3(n7910), .O(n1652)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_14_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY add_104_14 (.CI(n7910), .I0(counter[12]), .I1(n1639), .CO(n7911));
    SB_LUT4 add_104_13_lut (.I0(\configRegister[11] ), .I1(counter[11]), 
            .I2(n1639), .I3(n7909), .O(n1651)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_13_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY add_104_13 (.CI(n7909), .I0(counter[11]), .I1(n1639), .CO(n7910));
    SB_LUT4 add_104_12_lut (.I0(\configRegister[10] ), .I1(counter[10]), 
            .I2(n1639), .I3(n7908), .O(n1650)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_12_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY add_104_12 (.CI(n7908), .I0(counter[10]), .I1(n1639), .CO(n7909));
    SB_DFF configRegister__i1 (.Q(\configRegister[0] ), .C(xtalClock_c), 
           .D(n4805));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF valueRegister_i0_i0 (.Q(valueRegister[0]), .C(xtalClock_c), .D(n4804));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFFE shiftRegister_i0_i1 (.Q(shiftRegister[1]), .C(xtalClock_c), 
            .E(sampleReady), .D(shiftRegister_7__N_685[1]));   // ../src/stage.vhd(134[3] 144[10])
    SB_DFFE shiftRegister_i0_i2 (.Q(shiftRegister[2]), .C(xtalClock_c), 
            .E(sampleReady), .D(shiftRegister_7__N_685[2]));   // ../src/stage.vhd(134[3] 144[10])
    SB_DFFE shiftRegister_i0_i3 (.Q(shiftRegister[3]), .C(xtalClock_c), 
            .E(sampleReady), .D(shiftRegister_7__N_685[3]));   // ../src/stage.vhd(134[3] 144[10])
    SB_DFFE shiftRegister_i0_i4 (.Q(shiftRegister[4]), .C(xtalClock_c), 
            .E(sampleReady), .D(shiftRegister_7__N_685[4]));   // ../src/stage.vhd(134[3] 144[10])
    SB_DFFE shiftRegister_i0_i5 (.Q(shiftRegister[5]), .C(xtalClock_c), 
            .E(sampleReady), .D(shiftRegister_7__N_685[5]));   // ../src/stage.vhd(134[3] 144[10])
    SB_DFFE shiftRegister_i0_i6 (.Q(shiftRegister[6]), .C(xtalClock_c), 
            .E(sampleReady), .D(shiftRegister_7__N_685[6]));   // ../src/stage.vhd(134[3] 144[10])
    SB_DFFE shiftRegister_i0_i7 (.Q(shiftRegister[7]), .C(xtalClock_c), 
            .E(sampleReady), .D(shiftRegister_7__N_685[7]));   // ../src/stage.vhd(134[3] 144[10])
    SB_DFF maskRegister_i0_i0 (.Q(maskRegister[0]), .C(xtalClock_c), .D(n4803));   // ../src/stage.vhd(186[3] 196[10])
    SB_LUT4 i199_2_lut_3_lut (.I0(match32Register), .I1(n99), .I2(n653[1]), 
            .I3(GND_net), .O(n667));   // ../src/stage.vhd(155[4] 179[13])
    defparam i199_2_lut_3_lut.LUT_INIT = 16'h8080;
    SB_DFFE counter__i1 (.Q(counter[1]), .C(xtalClock_c), .E(n4114), .D(n1641));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFE counter__i2 (.Q(counter[2]), .C(xtalClock_c), .E(n4114), .D(n1642));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFE counter__i3 (.Q(counter[3]), .C(xtalClock_c), .E(n4114), .D(n1643));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFE counter__i4 (.Q(counter[4]), .C(xtalClock_c), .E(n4114), .D(n1644));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFE counter__i5 (.Q(counter[5]), .C(xtalClock_c), .E(n4114), .D(n1645));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFE counter__i6 (.Q(counter[6]), .C(xtalClock_c), .E(n4114), .D(n1646));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFE counter__i7 (.Q(counter[7]), .C(xtalClock_c), .E(n4114), .D(n1647));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFE counter__i8 (.Q(counter[8]), .C(xtalClock_c), .E(n4114), .D(n1648));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFE counter__i9 (.Q(counter[9]), .C(xtalClock_c), .E(n4114), .D(n1649));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFE counter__i10 (.Q(counter[10]), .C(xtalClock_c), .E(n4114), 
            .D(n1650));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFE counter__i11 (.Q(counter[11]), .C(xtalClock_c), .E(n4114), 
            .D(n1651));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFE counter__i12 (.Q(counter[12]), .C(xtalClock_c), .E(n4114), 
            .D(n1652));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFE counter__i13 (.Q(counter[13]), .C(xtalClock_c), .E(n4114), 
            .D(n1653));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFE counter__i14 (.Q(counter[14]), .C(xtalClock_c), .E(n4114), 
            .D(n1654));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFE counter__i15 (.Q(counter[15]), .C(xtalClock_c), .E(n4114), 
            .D(n1655));   // ../src/stage.vhd(150[3] 180[10])
    SB_LUT4 add_104_11_lut (.I0(\configRegister[9] ), .I1(counter[9]), .I2(n1639), 
            .I3(n7907), .O(n1649)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_11_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY add_104_11 (.CI(n7907), .I0(counter[9]), .I1(n1639), .CO(n7908));
    SB_LUT4 i3594_1_lut (.I0(maskRegister[1]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n4753));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3594_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 xor_7_i2_4_lut (.I0(memoryOut[1]), .I1(valueRegister[1]), .I2(shiftRegister[1]), 
            .I3(\configRegister[26] ), .O(intermediateRegister_7__N_677[1]));   // ../src/stage.vhd(100[29:38])
    defparam xor_7_i2_4_lut.LUT_INIT = 16'h3c66;
    SB_DFFESR match_84 (.Q(\stageMatch[2] ), .C(xtalClock_c), .E(n3670), 
            .D(configRegister_27__N_725), .R(n3));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFSR intermediateRegister_i0 (.Q(intermediateRegister[0]), .C(xtalClock_c), 
            .D(intermediateRegister_7__N_677[0]), .R(n4643));   // ../src/stage.vhd(99[3] 101[10])
    SB_LUT4 configRegister_20__bdd_4_lut (.I0(\configRegister[20] ), .I1(memoryOut[6]), 
            .I2(memoryOut[7]), .I3(\configRegister[21] ), .O(n9087));
    defparam configRegister_20__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 n9087_bdd_4_lut (.I0(n9087), .I1(memoryOut[5]), .I2(memoryOut[4]), 
            .I3(\configRegister[21] ), .O(n9090));
    defparam n9087_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 configRegister_20__bdd_4_lut_7697 (.I0(\configRegister[20] ), 
            .I1(memoryOut[2]), .I2(memoryOut[3]), .I3(\configRegister[21] ), 
            .O(n9081));
    defparam configRegister_20__bdd_4_lut_7697.LUT_INIT = 16'he4aa;
    SB_LUT4 n9081_bdd_4_lut (.I0(n9081), .I1(memoryOut[1]), .I2(memoryOut[0]), 
            .I3(\configRegister[21] ), .O(n9084));
    defparam n9081_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 add_104_10_lut (.I0(\configRegister[8] ), .I1(counter[8]), .I2(n1639), 
            .I3(n7906), .O(n1648)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_10_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY add_104_10 (.CI(n7906), .I0(counter[8]), .I1(n1639), .CO(n7907));
    SB_LUT4 i3595_1_lut (.I0(maskRegister[2]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n4754));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3595_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 xor_7_i3_4_lut (.I0(memoryOut[2]), .I1(valueRegister[2]), .I2(shiftRegister[2]), 
            .I3(\configRegister[26] ), .O(intermediateRegister_7__N_677[2]));   // ../src/stage.vhd(100[29:38])
    defparam xor_7_i3_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 i3596_1_lut (.I0(maskRegister[3]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n4755));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3596_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 add_104_9_lut (.I0(\configRegister[7] ), .I1(counter[7]), .I2(n1639), 
            .I3(n7905), .O(n1647)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_9_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 xor_7_i4_4_lut (.I0(memoryOut[3]), .I1(valueRegister[3]), .I2(shiftRegister[3]), 
            .I3(\configRegister[26] ), .O(intermediateRegister_7__N_677[3]));   // ../src/stage.vhd(100[29:38])
    defparam xor_7_i4_4_lut.LUT_INIT = 16'h3c66;
    SB_CARRY add_104_9 (.CI(n7905), .I0(counter[7]), .I1(n1639), .CO(n7906));
    SB_DFF run_83 (.Q(\stageRun[2] ), .C(xtalClock_c), .D(n8342));   // ../src/stage.vhd(150[3] 180[10])
    SB_LUT4 add_104_8_lut (.I0(\configRegister[6] ), .I1(counter[6]), .I2(n1639), 
            .I3(n7904), .O(n1646)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_8_lut.LUT_INIT = 16'hCA3A;
    SB_DFF configRegister__i25 (.Q(\configRegister[27] ), .C(xtalClock_c), 
           .D(n5109));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i24 (.Q(\configRegister[26] ), .C(xtalClock_c), 
           .D(n5108));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i23 (.Q(\configRegister[24] ), .C(xtalClock_c), 
           .D(n5107));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i22 (.Q(\configRegister[23] ), .C(xtalClock_c), 
           .D(n5106));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i21 (.Q(\configRegister[22] ), .C(xtalClock_c), 
           .D(n5105));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i20 (.Q(\configRegister[21] ), .C(xtalClock_c), 
           .D(n5104));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i19 (.Q(\configRegister[20] ), .C(xtalClock_c), 
           .D(n5103));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i18 (.Q(\configRegister[17] ), .C(xtalClock_c), 
           .D(n5102));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i17 (.Q(\configRegister[16] ), .C(xtalClock_c), 
           .D(n5101));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i16 (.Q(\configRegister[15] ), .C(xtalClock_c), 
           .D(n5100));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i15 (.Q(\configRegister[14] ), .C(xtalClock_c), 
           .D(n5099));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i14 (.Q(\configRegister[13] ), .C(xtalClock_c), 
           .D(n5098));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i13 (.Q(\configRegister[12] ), .C(xtalClock_c), 
           .D(n5097));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i12 (.Q(\configRegister[11] ), .C(xtalClock_c), 
           .D(n5096));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i11 (.Q(\configRegister[10] ), .C(xtalClock_c), 
           .D(n5095));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i10 (.Q(\configRegister[9] ), .C(xtalClock_c), 
           .D(n5094));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i9 (.Q(\configRegister[8] ), .C(xtalClock_c), 
           .D(n5093));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i8 (.Q(\configRegister[7] ), .C(xtalClock_c), 
           .D(n5092));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i7 (.Q(\configRegister[6] ), .C(xtalClock_c), 
           .D(n5091));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i6 (.Q(\configRegister[5] ), .C(xtalClock_c), 
           .D(n5090));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i5 (.Q(\configRegister[4] ), .C(xtalClock_c), 
           .D(n5089));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i4 (.Q(\configRegister[3] ), .C(xtalClock_c), 
           .D(n5088));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i3 (.Q(\configRegister[2] ), .C(xtalClock_c), 
           .D(n5087));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i2 (.Q(\configRegister[1] ), .C(xtalClock_c), 
           .D(n5086));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF valueRegister_i0_i7 (.Q(valueRegister[7]), .C(xtalClock_c), .D(n5085));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF valueRegister_i0_i6 (.Q(valueRegister[6]), .C(xtalClock_c), .D(n5084));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF valueRegister_i0_i5 (.Q(valueRegister[5]), .C(xtalClock_c), .D(n5083));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF valueRegister_i0_i4 (.Q(valueRegister[4]), .C(xtalClock_c), .D(n5082));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF valueRegister_i0_i3 (.Q(valueRegister[3]), .C(xtalClock_c), .D(n5081));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF valueRegister_i0_i2 (.Q(valueRegister[2]), .C(xtalClock_c), .D(n5080));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF valueRegister_i0_i1 (.Q(valueRegister[1]), .C(xtalClock_c), .D(n5079));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF maskRegister_i0_i7 (.Q(maskRegister[7]), .C(xtalClock_c), .D(n5078));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF maskRegister_i0_i6 (.Q(maskRegister[6]), .C(xtalClock_c), .D(n5077));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF maskRegister_i0_i5 (.Q(maskRegister[5]), .C(xtalClock_c), .D(n5076));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF maskRegister_i0_i4 (.Q(maskRegister[4]), .C(xtalClock_c), .D(n5075));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF maskRegister_i0_i3 (.Q(maskRegister[3]), .C(xtalClock_c), .D(n5074));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF maskRegister_i0_i2 (.Q(maskRegister[2]), .C(xtalClock_c), .D(n5073));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF maskRegister_i0_i1 (.Q(maskRegister[1]), .C(xtalClock_c), .D(n5071));   // ../src/stage.vhd(186[3] 196[10])
    SB_LUT4 i3597_1_lut (.I0(maskRegister[4]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n4756));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3597_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY add_104_8 (.CI(n7904), .I0(counter[6]), .I1(n1639), .CO(n7905));
    SB_LUT4 xor_7_i5_4_lut (.I0(memoryOut[4]), .I1(valueRegister[4]), .I2(shiftRegister[4]), 
            .I3(\configRegister[26] ), .O(intermediateRegister_7__N_677[4]));   // ../src/stage.vhd(100[29:38])
    defparam xor_7_i5_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 mux_730_i1_3_lut_4_lut (.I0(\configRegister[22] ), .I1(\configRegister[23] ), 
            .I2(n9084), .I3(serialChannelL16), .O(serialChannelL16));
    defparam mux_730_i1_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i3598_1_lut (.I0(maskRegister[5]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n4757));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3598_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 mux_738_i1_3_lut_4_lut (.I0(\configRegister[22] ), .I1(\configRegister[23] ), 
            .I2(n9090), .I3(serialChannelH16), .O(serialChannelH16));
    defparam mux_738_i1_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 xor_7_i6_4_lut (.I0(memoryOut[5]), .I1(valueRegister[5]), .I2(shiftRegister[5]), 
            .I3(\configRegister[26] ), .O(intermediateRegister_7__N_677[5]));   // ../src/stage.vhd(100[29:38])
    defparam xor_7_i6_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 i3599_1_lut (.I0(maskRegister[6]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n4758));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3599_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i1590_4_lut (.I0(n653[1]), .I1(arm), .I2(n100), .I3(n653[0]), 
            .O(n2698));   // ../src/stage.vhd(155[4] 179[13])
    defparam i1590_4_lut.LUT_INIT = 16'hce0a;
    SB_LUT4 i44_2_lut (.I0(match32Register), .I1(n99), .I2(GND_net), .I3(GND_net), 
            .O(n100));   // ../src/stage.vhd(163[9:52])
    defparam i44_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 xor_7_i7_4_lut (.I0(memoryOut[6]), .I1(valueRegister[6]), .I2(shiftRegister[6]), 
            .I3(\configRegister[26] ), .O(intermediateRegister_7__N_677[6]));   // ../src/stage.vhd(100[29:38])
    defparam xor_7_i7_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 i1_4_lut (.I0(n667), .I1(\state[1] ), .I2(sampleReady), .I3(n31), 
            .O(n2696));   // ../src/stage.vhd(155[4] 179[13])
    defparam i1_4_lut.LUT_INIT = 16'heeae;
    SB_LUT4 i3600_1_lut (.I0(maskRegister[7]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n4759));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3600_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 xor_7_i8_4_lut (.I0(memoryOut[7]), .I1(valueRegister[7]), .I2(shiftRegister[7]), 
            .I3(\configRegister[26] ), .O(intermediateRegister_7__N_677[7]));   // ../src/stage.vhd(100[29:38])
    defparam xor_7_i8_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 add_104_7_lut (.I0(\configRegister[5] ), .I1(counter[5]), .I2(n1639), 
            .I3(n7903), .O(n1645)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_7_lut.LUT_INIT = 16'hCA3A;
    SB_DFFSR intermediateRegister_i7 (.Q(intermediateRegister[7]), .C(xtalClock_c), 
            .D(intermediateRegister_7__N_677[7]), .R(n4759));   // ../src/stage.vhd(99[3] 101[10])
    SB_LUT4 i3484_1_lut (.I0(maskRegister[0]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n4643));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3484_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 xor_7_i1_4_lut (.I0(memoryOut[0]), .I1(valueRegister[0]), .I2(shiftRegister[0]), 
            .I3(\configRegister[26] ), .O(intermediateRegister_7__N_677[0]));   // ../src/stage.vhd(100[29:38])
    defparam xor_7_i1_4_lut.LUT_INIT = 16'h3c66;
    SB_DFFSR intermediateRegister_i6 (.Q(intermediateRegister[6]), .C(xtalClock_c), 
            .D(intermediateRegister_7__N_677[6]), .R(n4758));   // ../src/stage.vhd(99[3] 101[10])
    SB_DFFSR intermediateRegister_i5 (.Q(intermediateRegister[5]), .C(xtalClock_c), 
            .D(intermediateRegister_7__N_677[5]), .R(n4757));   // ../src/stage.vhd(99[3] 101[10])
    SB_DFFSR intermediateRegister_i4 (.Q(intermediateRegister[4]), .C(xtalClock_c), 
            .D(intermediateRegister_7__N_677[4]), .R(n4756));   // ../src/stage.vhd(99[3] 101[10])
    SB_DFFSR intermediateRegister_i3 (.Q(intermediateRegister[3]), .C(xtalClock_c), 
            .D(intermediateRegister_7__N_677[3]), .R(n4755));   // ../src/stage.vhd(99[3] 101[10])
    SB_DFFSR intermediateRegister_i2 (.Q(intermediateRegister[2]), .C(xtalClock_c), 
            .D(intermediateRegister_7__N_677[2]), .R(n4754));   // ../src/stage.vhd(99[3] 101[10])
    SB_DFFSR intermediateRegister_i1 (.Q(intermediateRegister[1]), .C(xtalClock_c), 
            .D(intermediateRegister_7__N_677[1]), .R(n4753));   // ../src/stage.vhd(99[3] 101[10])
    SB_CARRY add_104_7 (.CI(n7903), .I0(counter[5]), .I1(n1639), .CO(n7904));
    SB_LUT4 add_104_6_lut (.I0(\configRegister[4] ), .I1(counter[4]), .I2(n1639), 
            .I3(n7902), .O(n1644)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_6_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY add_104_6 (.CI(n7902), .I0(counter[4]), .I1(n1639), .CO(n7903));
    SB_LUT4 add_104_5_lut (.I0(\configRegister[3] ), .I1(counter[3]), .I2(n1639), 
            .I3(n7901), .O(n1643)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_5_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY add_104_5 (.CI(n7901), .I0(counter[3]), .I1(n1639), .CO(n7902));
    SB_LUT4 add_104_4_lut (.I0(\configRegister[2] ), .I1(counter[2]), .I2(n1639), 
            .I3(n7900), .O(n1642)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_4_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY add_104_4 (.CI(n7900), .I0(counter[2]), .I1(n1639), .CO(n7901));
    SB_LUT4 add_104_3_lut (.I0(\configRegister[1] ), .I1(counter[1]), .I2(n1639), 
            .I3(n7899), .O(n1641)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_3_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY add_104_3 (.CI(n7899), .I0(counter[1]), .I1(n1639), .CO(n7900));
    SB_LUT4 configRegister_27__I_0_1_lut (.I0(\configRegister[27] ), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(configRegister_27__N_725));   // ../src/stage.vhd(172[17:29])
    defparam configRegister_27__I_0_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 add_104_2_lut (.I0(\configRegister[0] ), .I1(counter[0]), .I2(n9054), 
            .I3(VCC_net), .O(n1640)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_2_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_104_2 (.CI(VCC_net), .I0(counter[0]), .I1(n9054), .CO(n7899));
    SB_LUT4 i7621_2_lut_3_lut_4_lut (.I0(\state[1] ), .I1(sampleReady), 
            .I2(n31), .I3(resetCmd), .O(n3));   // ../src/stage.vhd(155[4] 179[13])
    defparam i7621_2_lut_3_lut_4_lut.LUT_INIT = 16'h00f7;
    SB_LUT4 i12_4_lut (.I0(counter[11]), .I1(counter[9]), .I2(counter[14]), 
            .I3(counter[15]), .O(n28));   // ../src/stage.vhd(170[10:38])
    defparam i12_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i10_4_lut (.I0(counter[8]), .I1(counter[3]), .I2(counter[13]), 
            .I3(counter[5]), .O(n26));   // ../src/stage.vhd(170[10:38])
    defparam i10_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i11_4_lut (.I0(counter[10]), .I1(counter[2]), .I2(counter[12]), 
            .I3(counter[7]), .O(n27));   // ../src/stage.vhd(170[10:38])
    defparam i11_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i9_4_lut (.I0(counter[0]), .I1(counter[1]), .I2(counter[6]), 
            .I3(counter[4]), .O(n25));   // ../src/stage.vhd(170[10:38])
    defparam i9_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i15_4_lut (.I0(n25), .I1(n27), .I2(n26), .I3(n28), .O(n31));   // ../src/stage.vhd(170[10:38])
    defparam i15_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut (.I0(sampleReady), .I1(n31), .I2(GND_net), .I3(GND_net), 
            .O(n8518));   // ../src/stage.vhd(155[4] 179[13])
    defparam i1_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 LessThan_42_i4_4_lut (.I0(levelReg[0]), .I1(levelReg[1]), .I2(\configRegister[17] ), 
            .I3(\configRegister[16] ), .O(n99));   // ../src/stage.vhd(163[35:52])
    defparam LessThan_42_i4_4_lut.LUT_INIT = 16'h8ecf;
    SB_LUT4 i7501_2_lut (.I0(n31), .I1(sampleReady), .I2(GND_net), .I3(GND_net), 
            .O(n8808));
    defparam i7501_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_73 (.I0(resetCmd), .I1(n667), .I2(n8808), .I3(\state[1] ), 
            .O(n4114));
    defparam i1_4_lut_adj_73.LUT_INIT = 16'h5044;
    
endmodule
//
// Verilog Description of module \stage(8)_U1 
//

module \stage(8)_U1  (flagDemux, GND_net, xtalClock_c, resetCmd, sampleReady, 
            \configRegister[24] , arm, n8837, maskRegister, n4800, 
            \configRegister[0] , n4799, valueRegister, n4798, memoryOut, 
            \configRegister[26] , n3670, \stageMatch[1] , \configRegister[20] , 
            \configRegister[21] , n5193, \stageRun[1] , n6097, \configRegister[27] , 
            n5066, n5065, n5064, \configRegister[23] , n5063, \configRegister[22] , 
            n5062, n5061, n5060, \configRegister[17] , n5059, \configRegister[16] , 
            n5058, \configRegister[15] , n5057, \configRegister[14] , 
            n5056, \configRegister[13] , n5055, \configRegister[12] , 
            n5054, \configRegister[11] , n5053, \configRegister[10] , 
            n5052, \configRegister[9] , n5051, \configRegister[8] , 
            n5050, \configRegister[7] , n5049, \configRegister[6] , 
            n5048, \configRegister[5] , n5047, \configRegister[4] , 
            n5046, \configRegister[3] , n5045, \configRegister[2] , 
            n5044, \configRegister[1] , n5043, n5042, n5041, n5040, 
            n5039, n5038, n5037, n5036, n5035, n5034, n5033, n5032, 
            n5031, n5030, levelReg, VCC_net);
    input flagDemux;
    input GND_net;
    input xtalClock_c;
    input resetCmd;
    input sampleReady;
    output \configRegister[24] ;
    input arm;
    output n8837;
    output [7:0]maskRegister;
    input n4800;
    output \configRegister[0] ;
    input n4799;
    output [7:0]valueRegister;
    input n4798;
    input [7:0]memoryOut;
    output \configRegister[26] ;
    output n3670;
    output \stageMatch[1] ;
    output \configRegister[20] ;
    output \configRegister[21] ;
    input n5193;
    output \stageRun[1] ;
    input n6097;
    output \configRegister[27] ;
    input n5066;
    input n5065;
    input n5064;
    output \configRegister[23] ;
    input n5063;
    output \configRegister[22] ;
    input n5062;
    input n5061;
    input n5060;
    output \configRegister[17] ;
    input n5059;
    output \configRegister[16] ;
    input n5058;
    output \configRegister[15] ;
    input n5057;
    output \configRegister[14] ;
    input n5056;
    output \configRegister[13] ;
    input n5055;
    output \configRegister[12] ;
    input n5054;
    output \configRegister[11] ;
    input n5053;
    output \configRegister[10] ;
    input n5052;
    output \configRegister[9] ;
    input n5051;
    output \configRegister[8] ;
    input n5050;
    output \configRegister[7] ;
    input n5049;
    output \configRegister[6] ;
    input n5048;
    output \configRegister[5] ;
    input n5047;
    output \configRegister[4] ;
    input n5046;
    output \configRegister[3] ;
    input n5045;
    output \configRegister[2] ;
    input n5044;
    output \configRegister[1] ;
    input n5043;
    input n5042;
    input n5041;
    input n5040;
    input n5039;
    input n5038;
    input n5037;
    input n5036;
    input n5035;
    input n5034;
    input n5033;
    input n5032;
    input n5031;
    input n5030;
    input [1:0]levelReg;
    input VCC_net;
    
    wire xtalClock_c /* synthesis SET_AS_NETWORK=xtalClock_c, is_clock=1 */ ;   // ../src/la.vhd(44[3:12])
    wire [7:0]shiftRegister;   // ../src/stage.vhd(75[30:43])
    wire [7:0]shiftRegister_7__N_685;
    
    wire n2694;
    wire [3:0]n550;
    
    wire serialChannelH16;
    wire [7:0]intermediateRegister;   // ../src/stage.vhd(75[8:28])
    
    wire n14, n11, match32Register_N_726, match32Register, serialChannelL16, 
        n1663, n4144;
    wire [15:0]counter;   // ../src/stage.vhd(80[8:15])
    wire [1:0]state;   // ../src/stage.vhd(82[8:13])
    
    wire n564, n31, n2680, n100, n2690, n28, n26, n27, n25, 
        n8626, n4746;
    wire [7:0]intermediateRegister_7__N_677;
    
    wire n4747, n4748, n1664, n4749, n1665, n1666, n1667, n1668, 
        n1669, n1670, n1671, n1672, n1673, n1674, n1675, n1676, 
        n1677, n1678, n4750, n4751, n4752, configRegister_27__N_725, 
        n4642, n9075, n9078, n9069, n9072, n1662, n7898, n7897, 
        n7896, n2, n6675, n7895, n7894, n7893, n7892, n7891, 
        n7890, n7889, n7888, n7887, n7886, n7885, n7884, n9055;
    
    SB_LUT4 mux_35_i8_3_lut (.I0(shiftRegister[6]), .I1(shiftRegister[5]), 
            .I2(flagDemux), .I3(GND_net), .O(shiftRegister_7__N_685[7]));   // ../src/stage.vhd(136[5] 142[12])
    defparam mux_35_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_35_i7_3_lut (.I0(shiftRegister[5]), .I1(shiftRegister[4]), 
            .I2(flagDemux), .I3(GND_net), .O(shiftRegister_7__N_685[6]));   // ../src/stage.vhd(136[5] 142[12])
    defparam mux_35_i7_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_35_i6_3_lut (.I0(shiftRegister[4]), .I1(shiftRegister[3]), 
            .I2(flagDemux), .I3(GND_net), .O(shiftRegister_7__N_685[5]));   // ../src/stage.vhd(136[5] 142[12])
    defparam mux_35_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_35_i5_3_lut (.I0(shiftRegister[3]), .I1(shiftRegister[2]), 
            .I2(flagDemux), .I3(GND_net), .O(shiftRegister_7__N_685[4]));   // ../src/stage.vhd(136[5] 142[12])
    defparam mux_35_i5_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_35_i4_3_lut (.I0(shiftRegister[2]), .I1(shiftRegister[1]), 
            .I2(flagDemux), .I3(GND_net), .O(shiftRegister_7__N_685[3]));   // ../src/stage.vhd(136[5] 142[12])
    defparam mux_35_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_35_i3_3_lut (.I0(shiftRegister[1]), .I1(shiftRegister[0]), 
            .I2(flagDemux), .I3(GND_net), .O(shiftRegister_7__N_685[2]));   // ../src/stage.vhd(136[5] 142[12])
    defparam mux_35_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFS state_FSM_i1 (.Q(n550[0]), .C(xtalClock_c), .D(n2694), .S(resetCmd));   // ../src/stage.vhd(155[4] 179[13])
    SB_LUT4 mux_35_i2_3_lut (.I0(shiftRegister[0]), .I1(serialChannelH16), 
            .I2(flagDemux), .I3(GND_net), .O(shiftRegister_7__N_685[1]));   // ../src/stage.vhd(136[5] 142[12])
    defparam mux_35_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3_4_lut (.I0(intermediateRegister[0]), .I1(intermediateRegister[2]), 
            .I2(intermediateRegister[1]), .I3(intermediateRegister[3]), 
            .O(n14));   // ../src/stage.vhd(105[23:85])
    defparam i3_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i3_4_lut_adj_71 (.I0(intermediateRegister[4]), .I1(intermediateRegister[6]), 
            .I2(intermediateRegister[5]), .I3(intermediateRegister[7]), 
            .O(n11));   // ../src/stage.vhd(105[23:85])
    defparam i3_4_lut_adj_71.LUT_INIT = 16'hfffe;
    SB_LUT4 match32Register_I_0_3_lut (.I0(n11), .I1(flagDemux), .I2(n14), 
            .I3(GND_net), .O(match32Register_N_726));   // ../src/stage.vhd(112[4] 116[11])
    defparam match32Register_I_0_3_lut.LUT_INIT = 16'h4d4d;
    SB_DFFE shiftRegister_i0_i0 (.Q(shiftRegister[0]), .C(xtalClock_c), 
            .E(sampleReady), .D(shiftRegister_7__N_685[0]));   // ../src/stage.vhd(134[3] 144[10])
    SB_DFF match32Register_80 (.Q(match32Register), .C(xtalClock_c), .D(match32Register_N_726));   // ../src/stage.vhd(111[3] 117[10])
    SB_LUT4 i1619_4_lut (.I0(serialChannelL16), .I1(serialChannelH16), .I2(\configRegister[24] ), 
            .I3(flagDemux), .O(shiftRegister_7__N_685[0]));   // ../src/stage.vhd(136[5] 142[12])
    defparam i1619_4_lut.LUT_INIT = 16'haaca;
    SB_DFFE counter__i0 (.Q(counter[0]), .C(xtalClock_c), .E(n4144), .D(n1663));   // ../src/stage.vhd(150[3] 180[10])
    SB_LUT4 i1572_4_lut (.I0(state[1]), .I1(n564), .I2(sampleReady), .I3(n31), 
            .O(n2680));   // ../src/stage.vhd(155[4] 179[13])
    defparam i1572_4_lut.LUT_INIT = 16'heece;
    SB_LUT4 i1582_4_lut (.I0(n550[1]), .I1(arm), .I2(n100), .I3(n550[0]), 
            .O(n2690));   // ../src/stage.vhd(155[4] 179[13])
    defparam i1582_4_lut.LUT_INIT = 16'hce0a;
    SB_LUT4 i12_4_lut (.I0(counter[11]), .I1(counter[9]), .I2(counter[14]), 
            .I3(counter[15]), .O(n28));   // ../src/stage.vhd(170[10:38])
    defparam i12_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i10_4_lut (.I0(counter[8]), .I1(counter[3]), .I2(counter[13]), 
            .I3(counter[5]), .O(n26));   // ../src/stage.vhd(170[10:38])
    defparam i10_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i11_4_lut (.I0(counter[10]), .I1(counter[2]), .I2(counter[12]), 
            .I3(counter[7]), .O(n27));   // ../src/stage.vhd(170[10:38])
    defparam i11_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i9_4_lut (.I0(counter[0]), .I1(counter[1]), .I2(counter[6]), 
            .I3(counter[4]), .O(n25));   // ../src/stage.vhd(170[10:38])
    defparam i9_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i15_4_lut (.I0(n25), .I1(n27), .I2(n26), .I3(n28), .O(n31));   // ../src/stage.vhd(170[10:38])
    defparam i15_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1586_3_lut (.I0(arm), .I1(n8837), .I2(n550[0]), .I3(GND_net), 
            .O(n2694));   // ../src/stage.vhd(155[4] 179[13])
    defparam i1586_3_lut.LUT_INIT = 16'hdcdc;
    SB_LUT4 i7651_2_lut_4_lut (.I0(resetCmd), .I1(sampleReady), .I2(n31), 
            .I3(state[1]), .O(n8626));
    defparam i7651_2_lut_4_lut.LUT_INIT = 16'h5155;
    SB_DFFR state_FSM_i2 (.Q(n550[1]), .C(xtalClock_c), .D(n2690), .R(resetCmd));   // ../src/stage.vhd(155[4] 179[13])
    SB_DFFR state_FSM_i3 (.Q(state[1]), .C(xtalClock_c), .D(n2680), .R(resetCmd));   // ../src/stage.vhd(155[4] 179[13])
    SB_DFFE shiftRegister_i0_i1 (.Q(shiftRegister[1]), .C(xtalClock_c), 
            .E(sampleReady), .D(shiftRegister_7__N_685[1]));   // ../src/stage.vhd(134[3] 144[10])
    SB_DFFE shiftRegister_i0_i2 (.Q(shiftRegister[2]), .C(xtalClock_c), 
            .E(sampleReady), .D(shiftRegister_7__N_685[2]));   // ../src/stage.vhd(134[3] 144[10])
    SB_DFFE shiftRegister_i0_i3 (.Q(shiftRegister[3]), .C(xtalClock_c), 
            .E(sampleReady), .D(shiftRegister_7__N_685[3]));   // ../src/stage.vhd(134[3] 144[10])
    SB_DFFE shiftRegister_i0_i4 (.Q(shiftRegister[4]), .C(xtalClock_c), 
            .E(sampleReady), .D(shiftRegister_7__N_685[4]));   // ../src/stage.vhd(134[3] 144[10])
    SB_DFFE shiftRegister_i0_i5 (.Q(shiftRegister[5]), .C(xtalClock_c), 
            .E(sampleReady), .D(shiftRegister_7__N_685[5]));   // ../src/stage.vhd(134[3] 144[10])
    SB_DFFE shiftRegister_i0_i6 (.Q(shiftRegister[6]), .C(xtalClock_c), 
            .E(sampleReady), .D(shiftRegister_7__N_685[6]));   // ../src/stage.vhd(134[3] 144[10])
    SB_DFFE shiftRegister_i0_i7 (.Q(shiftRegister[7]), .C(xtalClock_c), 
            .E(sampleReady), .D(shiftRegister_7__N_685[7]));   // ../src/stage.vhd(134[3] 144[10])
    SB_LUT4 i3587_1_lut (.I0(maskRegister[1]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n4746));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3587_1_lut.LUT_INIT = 16'h5555;
    SB_DFF configRegister__i1 (.Q(\configRegister[0] ), .C(xtalClock_c), 
           .D(n4800));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF valueRegister_i0_i0 (.Q(valueRegister[0]), .C(xtalClock_c), .D(n4799));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF maskRegister_i0_i0 (.Q(maskRegister[0]), .C(xtalClock_c), .D(n4798));   // ../src/stage.vhd(186[3] 196[10])
    SB_LUT4 xor_7_i2_4_lut (.I0(memoryOut[1]), .I1(valueRegister[1]), .I2(shiftRegister[1]), 
            .I3(\configRegister[26] ), .O(intermediateRegister_7__N_677[1]));   // ../src/stage.vhd(100[29:38])
    defparam xor_7_i2_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 i3588_1_lut (.I0(maskRegister[2]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n4747));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3588_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 xor_7_i3_4_lut (.I0(memoryOut[2]), .I1(valueRegister[2]), .I2(shiftRegister[2]), 
            .I3(\configRegister[26] ), .O(intermediateRegister_7__N_677[2]));   // ../src/stage.vhd(100[29:38])
    defparam xor_7_i3_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 i3589_1_lut (.I0(maskRegister[3]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n4748));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3589_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 xor_7_i4_4_lut (.I0(memoryOut[3]), .I1(valueRegister[3]), .I2(shiftRegister[3]), 
            .I3(\configRegister[26] ), .O(intermediateRegister_7__N_677[3]));   // ../src/stage.vhd(100[29:38])
    defparam xor_7_i4_4_lut.LUT_INIT = 16'h3c66;
    SB_DFFE counter__i1 (.Q(counter[1]), .C(xtalClock_c), .E(n4144), .D(n1664));   // ../src/stage.vhd(150[3] 180[10])
    SB_LUT4 i3590_1_lut (.I0(maskRegister[4]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n4749));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3590_1_lut.LUT_INIT = 16'h5555;
    SB_DFFE counter__i2 (.Q(counter[2]), .C(xtalClock_c), .E(n4144), .D(n1665));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFE counter__i3 (.Q(counter[3]), .C(xtalClock_c), .E(n4144), .D(n1666));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFE counter__i4 (.Q(counter[4]), .C(xtalClock_c), .E(n4144), .D(n1667));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFE counter__i5 (.Q(counter[5]), .C(xtalClock_c), .E(n4144), .D(n1668));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFE counter__i6 (.Q(counter[6]), .C(xtalClock_c), .E(n4144), .D(n1669));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFE counter__i7 (.Q(counter[7]), .C(xtalClock_c), .E(n4144), .D(n1670));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFE counter__i8 (.Q(counter[8]), .C(xtalClock_c), .E(n4144), .D(n1671));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFE counter__i9 (.Q(counter[9]), .C(xtalClock_c), .E(n4144), .D(n1672));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFE counter__i10 (.Q(counter[10]), .C(xtalClock_c), .E(n4144), 
            .D(n1673));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFE counter__i11 (.Q(counter[11]), .C(xtalClock_c), .E(n4144), 
            .D(n1674));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFE counter__i12 (.Q(counter[12]), .C(xtalClock_c), .E(n4144), 
            .D(n1675));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFE counter__i13 (.Q(counter[13]), .C(xtalClock_c), .E(n4144), 
            .D(n1676));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFE counter__i14 (.Q(counter[14]), .C(xtalClock_c), .E(n4144), 
            .D(n1677));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFE counter__i15 (.Q(counter[15]), .C(xtalClock_c), .E(n4144), 
            .D(n1678));   // ../src/stage.vhd(150[3] 180[10])
    SB_LUT4 xor_7_i5_4_lut (.I0(memoryOut[4]), .I1(valueRegister[4]), .I2(shiftRegister[4]), 
            .I3(\configRegister[26] ), .O(intermediateRegister_7__N_677[4]));   // ../src/stage.vhd(100[29:38])
    defparam xor_7_i5_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 i3591_1_lut (.I0(maskRegister[5]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n4750));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3591_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 xor_7_i6_4_lut (.I0(memoryOut[5]), .I1(valueRegister[5]), .I2(shiftRegister[5]), 
            .I3(\configRegister[26] ), .O(intermediateRegister_7__N_677[5]));   // ../src/stage.vhd(100[29:38])
    defparam xor_7_i6_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 i3592_1_lut (.I0(maskRegister[6]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n4751));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3592_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 xor_7_i7_4_lut (.I0(memoryOut[6]), .I1(valueRegister[6]), .I2(shiftRegister[6]), 
            .I3(\configRegister[26] ), .O(intermediateRegister_7__N_677[6]));   // ../src/stage.vhd(100[29:38])
    defparam xor_7_i7_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 i3593_1_lut (.I0(maskRegister[7]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n4752));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3593_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 xor_7_i8_4_lut (.I0(memoryOut[7]), .I1(valueRegister[7]), .I2(shiftRegister[7]), 
            .I3(\configRegister[26] ), .O(intermediateRegister_7__N_677[7]));   // ../src/stage.vhd(100[29:38])
    defparam xor_7_i8_4_lut.LUT_INIT = 16'h3c66;
    SB_DFFESR match_84 (.Q(\stageMatch[1] ), .C(xtalClock_c), .E(n3670), 
            .D(configRegister_27__N_725), .R(n8626));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFSR intermediateRegister_i0 (.Q(intermediateRegister[0]), .C(xtalClock_c), 
            .D(intermediateRegister_7__N_677[0]), .R(n4642));   // ../src/stage.vhd(99[3] 101[10])
    SB_LUT4 configRegister_20__bdd_4_lut (.I0(\configRegister[20] ), .I1(memoryOut[6]), 
            .I2(memoryOut[7]), .I3(\configRegister[21] ), .O(n9075));
    defparam configRegister_20__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 n9075_bdd_4_lut (.I0(n9075), .I1(memoryOut[5]), .I2(memoryOut[4]), 
            .I3(\configRegister[21] ), .O(n9078));
    defparam n9075_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 configRegister_20__bdd_4_lut_7688 (.I0(\configRegister[20] ), 
            .I1(memoryOut[2]), .I2(memoryOut[3]), .I3(\configRegister[21] ), 
            .O(n9069));
    defparam configRegister_20__bdd_4_lut_7688.LUT_INIT = 16'he4aa;
    SB_LUT4 n9069_bdd_4_lut (.I0(n9069), .I1(memoryOut[1]), .I2(memoryOut[0]), 
            .I3(\configRegister[21] ), .O(n9072));
    defparam n9069_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFF run_83 (.Q(\stageRun[1] ), .C(xtalClock_c), .D(n5193));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFF configRegister__i25 (.Q(\configRegister[27] ), .C(xtalClock_c), 
           .D(n6097));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i24 (.Q(\configRegister[26] ), .C(xtalClock_c), 
           .D(n5066));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i23 (.Q(\configRegister[24] ), .C(xtalClock_c), 
           .D(n5065));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i22 (.Q(\configRegister[23] ), .C(xtalClock_c), 
           .D(n5064));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i21 (.Q(\configRegister[22] ), .C(xtalClock_c), 
           .D(n5063));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i20 (.Q(\configRegister[21] ), .C(xtalClock_c), 
           .D(n5062));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i19 (.Q(\configRegister[20] ), .C(xtalClock_c), 
           .D(n5061));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i18 (.Q(\configRegister[17] ), .C(xtalClock_c), 
           .D(n5060));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i17 (.Q(\configRegister[16] ), .C(xtalClock_c), 
           .D(n5059));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i16 (.Q(\configRegister[15] ), .C(xtalClock_c), 
           .D(n5058));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i15 (.Q(\configRegister[14] ), .C(xtalClock_c), 
           .D(n5057));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i14 (.Q(\configRegister[13] ), .C(xtalClock_c), 
           .D(n5056));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i13 (.Q(\configRegister[12] ), .C(xtalClock_c), 
           .D(n5055));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i12 (.Q(\configRegister[11] ), .C(xtalClock_c), 
           .D(n5054));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i11 (.Q(\configRegister[10] ), .C(xtalClock_c), 
           .D(n5053));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i10 (.Q(\configRegister[9] ), .C(xtalClock_c), 
           .D(n5052));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i9 (.Q(\configRegister[8] ), .C(xtalClock_c), 
           .D(n5051));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i8 (.Q(\configRegister[7] ), .C(xtalClock_c), 
           .D(n5050));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i7 (.Q(\configRegister[6] ), .C(xtalClock_c), 
           .D(n5049));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i6 (.Q(\configRegister[5] ), .C(xtalClock_c), 
           .D(n5048));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i5 (.Q(\configRegister[4] ), .C(xtalClock_c), 
           .D(n5047));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i4 (.Q(\configRegister[3] ), .C(xtalClock_c), 
           .D(n5046));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i3 (.Q(\configRegister[2] ), .C(xtalClock_c), 
           .D(n5045));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i2 (.Q(\configRegister[1] ), .C(xtalClock_c), 
           .D(n5044));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF valueRegister_i0_i7 (.Q(valueRegister[7]), .C(xtalClock_c), .D(n5043));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF valueRegister_i0_i6 (.Q(valueRegister[6]), .C(xtalClock_c), .D(n5042));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF valueRegister_i0_i5 (.Q(valueRegister[5]), .C(xtalClock_c), .D(n5041));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF valueRegister_i0_i4 (.Q(valueRegister[4]), .C(xtalClock_c), .D(n5040));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF valueRegister_i0_i3 (.Q(valueRegister[3]), .C(xtalClock_c), .D(n5039));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF valueRegister_i0_i2 (.Q(valueRegister[2]), .C(xtalClock_c), .D(n5038));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF valueRegister_i0_i1 (.Q(valueRegister[1]), .C(xtalClock_c), .D(n5037));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF maskRegister_i0_i7 (.Q(maskRegister[7]), .C(xtalClock_c), .D(n5036));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF maskRegister_i0_i6 (.Q(maskRegister[6]), .C(xtalClock_c), .D(n5035));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF maskRegister_i0_i5 (.Q(maskRegister[5]), .C(xtalClock_c), .D(n5034));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF maskRegister_i0_i4 (.Q(maskRegister[4]), .C(xtalClock_c), .D(n5033));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF maskRegister_i0_i3 (.Q(maskRegister[3]), .C(xtalClock_c), .D(n5032));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF maskRegister_i0_i2 (.Q(maskRegister[2]), .C(xtalClock_c), .D(n5031));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF maskRegister_i0_i1 (.Q(maskRegister[1]), .C(xtalClock_c), .D(n5030));   // ../src/stage.vhd(186[3] 196[10])
    SB_LUT4 i3483_1_lut (.I0(maskRegister[0]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n4642));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3483_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 xor_7_i1_4_lut (.I0(memoryOut[0]), .I1(valueRegister[0]), .I2(shiftRegister[0]), 
            .I3(\configRegister[26] ), .O(intermediateRegister_7__N_677[0]));   // ../src/stage.vhd(100[29:38])
    defparam xor_7_i1_4_lut.LUT_INIT = 16'h3c66;
    SB_DFFSR intermediateRegister_i7 (.Q(intermediateRegister[7]), .C(xtalClock_c), 
            .D(intermediateRegister_7__N_677[7]), .R(n4752));   // ../src/stage.vhd(99[3] 101[10])
    SB_DFFSR intermediateRegister_i6 (.Q(intermediateRegister[6]), .C(xtalClock_c), 
            .D(intermediateRegister_7__N_677[6]), .R(n4751));   // ../src/stage.vhd(99[3] 101[10])
    SB_DFFSR intermediateRegister_i5 (.Q(intermediateRegister[5]), .C(xtalClock_c), 
            .D(intermediateRegister_7__N_677[5]), .R(n4750));   // ../src/stage.vhd(99[3] 101[10])
    SB_DFFSR intermediateRegister_i4 (.Q(intermediateRegister[4]), .C(xtalClock_c), 
            .D(intermediateRegister_7__N_677[4]), .R(n4749));   // ../src/stage.vhd(99[3] 101[10])
    SB_DFFSR intermediateRegister_i3 (.Q(intermediateRegister[3]), .C(xtalClock_c), 
            .D(intermediateRegister_7__N_677[3]), .R(n4748));   // ../src/stage.vhd(99[3] 101[10])
    SB_DFFSR intermediateRegister_i2 (.Q(intermediateRegister[2]), .C(xtalClock_c), 
            .D(intermediateRegister_7__N_677[2]), .R(n4747));   // ../src/stage.vhd(99[3] 101[10])
    SB_LUT4 configRegister_27__I_0_1_lut (.I0(\configRegister[27] ), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(configRegister_27__N_725));   // ../src/stage.vhd(172[17:29])
    defparam configRegister_27__I_0_1_lut.LUT_INIT = 16'h5555;
    SB_DFFSR intermediateRegister_i1 (.Q(intermediateRegister[1]), .C(xtalClock_c), 
            .D(intermediateRegister_7__N_677[1]), .R(n4746));   // ../src/stage.vhd(99[3] 101[10])
    SB_LUT4 add_104_17_lut (.I0(\configRegister[15] ), .I1(counter[15]), 
            .I2(n1662), .I3(n7898), .O(n1678)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_17_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 add_104_16_lut (.I0(\configRegister[14] ), .I1(counter[14]), 
            .I2(n1662), .I3(n7897), .O(n1677)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_16_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY add_104_16 (.CI(n7897), .I0(counter[14]), .I1(n1662), .CO(n7898));
    SB_LUT4 add_104_15_lut (.I0(\configRegister[13] ), .I1(counter[13]), 
            .I2(n1662), .I3(n7896), .O(n1676)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_15_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY add_104_15 (.CI(n7896), .I0(counter[13]), .I1(n1662), .CO(n7897));
    SB_LUT4 i1_2_lut (.I0(levelReg[0]), .I1(\configRegister[16] ), .I2(GND_net), 
            .I3(GND_net), .O(n2));   // ../src/stage.vhd(163[35:52])
    defparam i1_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i44_4_lut (.I0(match32Register), .I1(n2), .I2(levelReg[1]), 
            .I3(\configRegister[17] ), .O(n100));   // ../src/stage.vhd(163[9:52])
    defparam i44_4_lut.LUT_INIT = 16'h20a2;
    SB_LUT4 i5511_2_lut (.I0(n31), .I1(sampleReady), .I2(GND_net), .I3(GND_net), 
            .O(n6675));
    defparam i5511_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i166_2_lut (.I0(n100), .I1(n550[1]), .I2(GND_net), .I3(GND_net), 
            .O(n564));   // ../src/stage.vhd(155[4] 179[13])
    defparam i166_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 add_104_14_lut (.I0(\configRegister[12] ), .I1(counter[12]), 
            .I2(n1662), .I3(n7895), .O(n1675)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_14_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY add_104_14 (.CI(n7895), .I0(counter[12]), .I1(n1662), .CO(n7896));
    SB_LUT4 add_104_13_lut (.I0(\configRegister[11] ), .I1(counter[11]), 
            .I2(n1662), .I3(n7894), .O(n1674)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_13_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 i1_1_lut (.I0(resetCmd), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n3670));
    defparam i1_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i834_2_lut_3_lut (.I0(state[1]), .I1(n31), .I2(sampleReady), 
            .I3(GND_net), .O(n1662));   // ../src/stage.vhd(155[4] 179[13])
    defparam i834_2_lut_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i1_4_lut (.I0(resetCmd), .I1(n564), .I2(n6675), .I3(state[1]), 
            .O(n4144));
    defparam i1_4_lut.LUT_INIT = 16'h5044;
    SB_CARRY add_104_13 (.CI(n7894), .I0(counter[11]), .I1(n1662), .CO(n7895));
    SB_LUT4 add_104_12_lut (.I0(\configRegister[10] ), .I1(counter[10]), 
            .I2(n1662), .I3(n7893), .O(n1673)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_12_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY add_104_12 (.CI(n7893), .I0(counter[10]), .I1(n1662), .CO(n7894));
    SB_LUT4 add_104_11_lut (.I0(\configRegister[9] ), .I1(counter[9]), .I2(n1662), 
            .I3(n7892), .O(n1672)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_11_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY add_104_11 (.CI(n7892), .I0(counter[9]), .I1(n1662), .CO(n7893));
    SB_LUT4 add_104_10_lut (.I0(\configRegister[8] ), .I1(counter[8]), .I2(n1662), 
            .I3(n7891), .O(n1671)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_10_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY add_104_10 (.CI(n7891), .I0(counter[8]), .I1(n1662), .CO(n7892));
    SB_LUT4 add_104_9_lut (.I0(\configRegister[7] ), .I1(counter[7]), .I2(n1662), 
            .I3(n7890), .O(n1670)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_9_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY add_104_9 (.CI(n7890), .I0(counter[7]), .I1(n1662), .CO(n7891));
    SB_LUT4 add_104_8_lut (.I0(\configRegister[6] ), .I1(counter[6]), .I2(n1662), 
            .I3(n7889), .O(n1669)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_8_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY add_104_8 (.CI(n7889), .I0(counter[6]), .I1(n1662), .CO(n7890));
    SB_LUT4 add_104_7_lut (.I0(\configRegister[5] ), .I1(counter[5]), .I2(n1662), 
            .I3(n7888), .O(n1668)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_7_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY add_104_7 (.CI(n7888), .I0(counter[5]), .I1(n1662), .CO(n7889));
    SB_LUT4 add_104_6_lut (.I0(\configRegister[4] ), .I1(counter[4]), .I2(n1662), 
            .I3(n7887), .O(n1667)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_6_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY add_104_6 (.CI(n7887), .I0(counter[4]), .I1(n1662), .CO(n7888));
    SB_LUT4 add_104_5_lut (.I0(\configRegister[3] ), .I1(counter[3]), .I2(n1662), 
            .I3(n7886), .O(n1666)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_5_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY add_104_5 (.CI(n7886), .I0(counter[3]), .I1(n1662), .CO(n7887));
    SB_LUT4 add_104_4_lut (.I0(\configRegister[2] ), .I1(counter[2]), .I2(n1662), 
            .I3(n7885), .O(n1665)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_4_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY add_104_4 (.CI(n7885), .I0(counter[2]), .I1(n1662), .CO(n7886));
    SB_LUT4 add_104_3_lut (.I0(\configRegister[1] ), .I1(counter[1]), .I2(n1662), 
            .I3(n7884), .O(n1664)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_3_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY add_104_3 (.CI(n7884), .I0(counter[1]), .I1(n1662), .CO(n7885));
    SB_LUT4 add_104_2_lut (.I0(\configRegister[0] ), .I1(counter[0]), .I2(n9055), 
            .I3(VCC_net), .O(n1663)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_2_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_104_2 (.CI(VCC_net), .I0(counter[0]), .I1(n9055), .CO(n7884));
    SB_LUT4 i7670_1_lut (.I0(n1662), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n9055));   // ../src/stage.vhd(155[4] 179[13])
    defparam i7670_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i7561_2_lut_3_lut (.I0(sampleReady), .I1(n31), .I2(state[1]), 
            .I3(GND_net), .O(n8837));   // ../src/stage.vhd(155[4] 179[13])
    defparam i7561_2_lut_3_lut.LUT_INIT = 16'h2020;
    SB_LUT4 mux_714_i1_3_lut_4_lut (.I0(\configRegister[22] ), .I1(\configRegister[23] ), 
            .I2(n9072), .I3(serialChannelL16), .O(serialChannelL16));
    defparam mux_714_i1_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 mux_722_i1_3_lut_4_lut (.I0(\configRegister[22] ), .I1(\configRegister[23] ), 
            .I2(n9078), .I3(serialChannelH16), .O(serialChannelH16));
    defparam mux_722_i1_3_lut_4_lut.LUT_INIT = 16'hfe10;
    
endmodule
//
// Verilog Description of module \stage(8)_U2 
//

module \stage(8)_U2  (n1705, \configRegister[11] , \configRegister[10] , 
            \configRegister[9] , \configRegister[27] , GND_net, sampleReady, 
            xtalClock_c, resetCmd, \configRegister[22] , \configRegister[23] , 
            \configRegister[8] , \configRegister[7] , \configRegister[6] , 
            \state[1] , n31, arm, flagDemux, \configRegister[5] , 
            \configRegister[4] , \configRegister[3] , \configRegister[2] , 
            n8515, levelReg, \configRegister[16] , \configRegister[17] , 
            \configRegister[24] , \configRegister[1] , n9053, VCC_net, 
            \configRegister[0] , maskRegister, memoryOut, valueRegister, 
            \configRegister[26] , n4797, n4793, \configRegister[20] , 
            \configRegister[21] , n4789, n8384, \stageRun[0] , n6156, 
            n5028, n5027, n5026, n5025, n5024, n5023, n5022, n5021, 
            n5020, \configRegister[15] , n5019, \configRegister[14] , 
            n5018, \configRegister[13] , n5017, \configRegister[12] , 
            n5016, n5015, n5014, n5013, n5012, n5011, n5010, n5009, 
            n5008, n5007, n5006, n5005, n5004, n5003, n5002, n5001, 
            n5000, n4997, n4937, n4936, n4935, n4934, n4933, n4932, 
            n4931, n3670, \stageMatch[0] );
    input n1705;
    output \configRegister[11] ;
    output \configRegister[10] ;
    output \configRegister[9] ;
    output \configRegister[27] ;
    input GND_net;
    input sampleReady;
    input xtalClock_c;
    input resetCmd;
    output \configRegister[22] ;
    output \configRegister[23] ;
    output \configRegister[8] ;
    output \configRegister[7] ;
    output \configRegister[6] ;
    output \state[1] ;
    output n31;
    input arm;
    input flagDemux;
    output \configRegister[5] ;
    output \configRegister[4] ;
    output \configRegister[3] ;
    output \configRegister[2] ;
    input n8515;
    input [1:0]levelReg;
    output \configRegister[16] ;
    output \configRegister[17] ;
    output \configRegister[24] ;
    output \configRegister[1] ;
    input n9053;
    input VCC_net;
    output \configRegister[0] ;
    output [7:0]maskRegister;
    input [7:0]memoryOut;
    output [7:0]valueRegister;
    output \configRegister[26] ;
    input n4797;
    input n4793;
    output \configRegister[20] ;
    output \configRegister[21] ;
    input n4789;
    input n8384;
    output \stageRun[0] ;
    input n6156;
    input n5028;
    input n5027;
    input n5026;
    input n5025;
    input n5024;
    input n5023;
    input n5022;
    input n5021;
    input n5020;
    output \configRegister[15] ;
    input n5019;
    output \configRegister[14] ;
    input n5018;
    output \configRegister[13] ;
    input n5017;
    output \configRegister[12] ;
    input n5016;
    input n5015;
    input n5014;
    input n5013;
    input n5012;
    input n5011;
    input n5010;
    input n5009;
    input n5008;
    input n5007;
    input n5006;
    input n5005;
    input n5004;
    input n5003;
    input n5002;
    input n5001;
    input n5000;
    input n4997;
    input n4937;
    input n4936;
    input n4935;
    input n4934;
    input n4933;
    input n4932;
    input n4931;
    input n3670;
    output \stageMatch[0] ;
    
    wire xtalClock_c /* synthesis SET_AS_NETWORK=xtalClock_c, is_clock=1 */ ;   // ../src/la.vhd(44[3:12])
    
    wire n1717;
    wire [15:0]counter;   // ../src/stage.vhd(80[8:15])
    
    wire n7879, n7880, n1716, n7878, n1715, n7877, configRegister_27__N_725;
    wire [7:0]shiftRegister_7__N_685;
    wire [7:0]shiftRegister;   // ../src/stage.vhd(75[30:43])
    
    wire n1706, n4044, n2712;
    wire [3:0]n447;
    
    wire n9114, serialChannelL16, n1714, n7876, match32Register_N_726, 
        match32Register, n9108, serialChannelH16, n1713, n7875, n1712, 
        n7874, n461, n2708, n100, n2710, n1711, n7873;
    wire [7:0]intermediateRegister;   // ../src/stage.vhd(75[8:28])
    
    wire n7, n11, n1710, n7872, n1709, n7871, n1708, n7870, 
        n2, n8753, n1707, n7869, n4739;
    wire [7:0]intermediateRegister_7__N_677;
    
    wire n1718, n1719, n1720, n1721, n4740, n4741, n4742, n4743, 
        n4744, n4745, n9111, n9105, n4641, n28, n26, n27, n25, 
        n4, n7883, n7882, n7881;
    
    SB_LUT4 add_104_13_lut (.I0(\configRegister[11] ), .I1(counter[11]), 
            .I2(n1705), .I3(n7879), .O(n1717)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_13_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY add_104_13 (.CI(n7879), .I0(counter[11]), .I1(n1705), .CO(n7880));
    SB_LUT4 add_104_12_lut (.I0(\configRegister[10] ), .I1(counter[10]), 
            .I2(n1705), .I3(n7878), .O(n1716)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_12_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY add_104_12 (.CI(n7878), .I0(counter[10]), .I1(n1705), .CO(n7879));
    SB_LUT4 add_104_11_lut (.I0(\configRegister[9] ), .I1(counter[9]), .I2(n1705), 
            .I3(n7877), .O(n1715)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_11_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 configRegister_27__I_0_1_lut (.I0(\configRegister[27] ), .I1(GND_net), 
            .I2(GND_net), .I3(GND_net), .O(configRegister_27__N_725));   // ../src/stage.vhd(172[17:29])
    defparam configRegister_27__I_0_1_lut.LUT_INIT = 16'h5555;
    SB_DFFE shiftRegister_i0_i0 (.Q(shiftRegister[0]), .C(xtalClock_c), 
            .E(sampleReady), .D(shiftRegister_7__N_685[0]));   // ../src/stage.vhd(134[3] 144[10])
    SB_DFFE counter__i0 (.Q(counter[0]), .C(xtalClock_c), .E(n4044), .D(n1706));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFS state_FSM_i1 (.Q(n447[0]), .C(xtalClock_c), .D(n2712), .S(resetCmd));   // ../src/stage.vhd(155[4] 179[13])
    SB_LUT4 mux_762_i1_3_lut_4_lut (.I0(\configRegister[22] ), .I1(\configRegister[23] ), 
            .I2(n9114), .I3(serialChannelL16), .O(serialChannelL16));
    defparam mux_762_i1_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_CARRY add_104_11 (.CI(n7877), .I0(counter[9]), .I1(n1705), .CO(n7878));
    SB_LUT4 add_104_10_lut (.I0(\configRegister[8] ), .I1(counter[8]), .I2(n1705), 
            .I3(n7876), .O(n1714)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_10_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY add_104_10 (.CI(n7876), .I0(counter[8]), .I1(n1705), .CO(n7877));
    SB_DFF match32Register_80 (.Q(match32Register), .C(xtalClock_c), .D(match32Register_N_726));   // ../src/stage.vhd(111[3] 117[10])
    SB_LUT4 mux_706_i1_3_lut_4_lut (.I0(\configRegister[22] ), .I1(\configRegister[23] ), 
            .I2(n9108), .I3(serialChannelH16), .O(serialChannelH16));
    defparam mux_706_i1_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 add_104_9_lut (.I0(\configRegister[7] ), .I1(counter[7]), .I2(n1705), 
            .I3(n7875), .O(n1713)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_9_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY add_104_9 (.CI(n7875), .I0(counter[7]), .I1(n1705), .CO(n7876));
    SB_LUT4 add_104_8_lut (.I0(\configRegister[6] ), .I1(counter[6]), .I2(n1705), 
            .I3(n7874), .O(n1712)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_8_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 i1599_4_lut (.I0(\state[1] ), .I1(n461), .I2(sampleReady), 
            .I3(n31), .O(n2708));   // ../src/stage.vhd(155[4] 179[13])
    defparam i1599_4_lut.LUT_INIT = 16'heece;
    SB_CARRY add_104_8 (.CI(n7874), .I0(counter[6]), .I1(n1705), .CO(n7875));
    SB_LUT4 i1601_4_lut (.I0(n447[1]), .I1(arm), .I2(n100), .I3(n447[0]), 
            .O(n2710));   // ../src/stage.vhd(155[4] 179[13])
    defparam i1601_4_lut.LUT_INIT = 16'hce0a;
    SB_LUT4 mux_35_i8_3_lut (.I0(shiftRegister[6]), .I1(shiftRegister[5]), 
            .I2(flagDemux), .I3(GND_net), .O(shiftRegister_7__N_685[7]));   // ../src/stage.vhd(136[5] 142[12])
    defparam mux_35_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_35_i7_3_lut (.I0(shiftRegister[5]), .I1(shiftRegister[4]), 
            .I2(flagDemux), .I3(GND_net), .O(shiftRegister_7__N_685[6]));   // ../src/stage.vhd(136[5] 142[12])
    defparam mux_35_i7_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_35_i6_3_lut (.I0(shiftRegister[4]), .I1(shiftRegister[3]), 
            .I2(flagDemux), .I3(GND_net), .O(shiftRegister_7__N_685[5]));   // ../src/stage.vhd(136[5] 142[12])
    defparam mux_35_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_35_i5_3_lut (.I0(shiftRegister[3]), .I1(shiftRegister[2]), 
            .I2(flagDemux), .I3(GND_net), .O(shiftRegister_7__N_685[4]));   // ../src/stage.vhd(136[5] 142[12])
    defparam mux_35_i5_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_35_i4_3_lut (.I0(shiftRegister[2]), .I1(shiftRegister[1]), 
            .I2(flagDemux), .I3(GND_net), .O(shiftRegister_7__N_685[3]));   // ../src/stage.vhd(136[5] 142[12])
    defparam mux_35_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_35_i3_3_lut (.I0(shiftRegister[1]), .I1(shiftRegister[0]), 
            .I2(flagDemux), .I3(GND_net), .O(shiftRegister_7__N_685[2]));   // ../src/stage.vhd(136[5] 142[12])
    defparam mux_35_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_35_i2_3_lut (.I0(shiftRegister[0]), .I1(serialChannelH16), 
            .I2(flagDemux), .I3(GND_net), .O(shiftRegister_7__N_685[1]));   // ../src/stage.vhd(136[5] 142[12])
    defparam mux_35_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_104_7_lut (.I0(\configRegister[5] ), .I1(counter[5]), .I2(n1705), 
            .I3(n7873), .O(n1711)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_7_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY add_104_7 (.CI(n7873), .I0(counter[5]), .I1(n1705), .CO(n7874));
    SB_LUT4 i3_4_lut (.I0(intermediateRegister[0]), .I1(intermediateRegister[2]), 
            .I2(intermediateRegister[1]), .I3(intermediateRegister[3]), 
            .O(n7));   // ../src/stage.vhd(105[23:85])
    defparam i3_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i3_4_lut_adj_70 (.I0(intermediateRegister[4]), .I1(intermediateRegister[6]), 
            .I2(intermediateRegister[5]), .I3(intermediateRegister[7]), 
            .O(n11));   // ../src/stage.vhd(105[23:85])
    defparam i3_4_lut_adj_70.LUT_INIT = 16'hfffe;
    SB_LUT4 match32Register_I_0_3_lut (.I0(n11), .I1(flagDemux), .I2(n7), 
            .I3(GND_net), .O(match32Register_N_726));   // ../src/stage.vhd(112[4] 116[11])
    defparam match32Register_I_0_3_lut.LUT_INIT = 16'h4d4d;
    SB_LUT4 add_104_6_lut (.I0(\configRegister[4] ), .I1(counter[4]), .I2(n1705), 
            .I3(n7872), .O(n1710)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_6_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY add_104_6 (.CI(n7872), .I0(counter[4]), .I1(n1705), .CO(n7873));
    SB_LUT4 add_104_5_lut (.I0(\configRegister[3] ), .I1(counter[3]), .I2(n1705), 
            .I3(n7871), .O(n1709)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_5_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY add_104_5 (.CI(n7871), .I0(counter[3]), .I1(n1705), .CO(n7872));
    SB_LUT4 add_104_4_lut (.I0(\configRegister[2] ), .I1(counter[2]), .I2(n1705), 
            .I3(n7870), .O(n1708)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_4_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 i1603_4_lut (.I0(n447[0]), .I1(n31), .I2(arm), .I3(n8515), 
            .O(n2712));   // ../src/stage.vhd(155[4] 179[13])
    defparam i1603_4_lut.LUT_INIT = 16'h3b0a;
    SB_CARRY add_104_4 (.CI(n7870), .I0(counter[2]), .I1(n1705), .CO(n7871));
    SB_LUT4 i1_2_lut (.I0(levelReg[0]), .I1(\configRegister[16] ), .I2(GND_net), 
            .I3(GND_net), .O(n2));   // ../src/stage.vhd(163[35:52])
    defparam i1_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i44_4_lut (.I0(match32Register), .I1(n2), .I2(levelReg[1]), 
            .I3(\configRegister[17] ), .O(n100));   // ../src/stage.vhd(163[9:52])
    defparam i44_4_lut.LUT_INIT = 16'h20a2;
    SB_LUT4 i133_2_lut (.I0(n100), .I1(n447[1]), .I2(GND_net), .I3(GND_net), 
            .O(n461));   // ../src/stage.vhd(155[4] 179[13])
    defparam i133_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i7508_2_lut (.I0(n31), .I1(sampleReady), .I2(GND_net), .I3(GND_net), 
            .O(n8753));
    defparam i7508_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut (.I0(resetCmd), .I1(n461), .I2(n8753), .I3(\state[1] ), 
            .O(n4044));
    defparam i1_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 i1611_4_lut (.I0(serialChannelL16), .I1(serialChannelH16), .I2(\configRegister[24] ), 
            .I3(flagDemux), .O(shiftRegister_7__N_685[0]));   // ../src/stage.vhd(136[5] 142[12])
    defparam i1611_4_lut.LUT_INIT = 16'haaca;
    SB_LUT4 add_104_3_lut (.I0(\configRegister[1] ), .I1(counter[1]), .I2(n1705), 
            .I3(n7869), .O(n1707)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_3_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY add_104_3 (.CI(n7869), .I0(counter[1]), .I1(n1705), .CO(n7870));
    SB_LUT4 add_104_2_lut (.I0(\configRegister[0] ), .I1(counter[0]), .I2(n9053), 
            .I3(VCC_net), .O(n1706)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_2_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_104_2 (.CI(VCC_net), .I0(counter[0]), .I1(n9053), .CO(n7869));
    SB_DFFE shiftRegister_i0_i1 (.Q(shiftRegister[1]), .C(xtalClock_c), 
            .E(sampleReady), .D(shiftRegister_7__N_685[1]));   // ../src/stage.vhd(134[3] 144[10])
    SB_LUT4 i3580_1_lut (.I0(maskRegister[1]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n4739));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3580_1_lut.LUT_INIT = 16'h5555;
    SB_DFFE shiftRegister_i0_i2 (.Q(shiftRegister[2]), .C(xtalClock_c), 
            .E(sampleReady), .D(shiftRegister_7__N_685[2]));   // ../src/stage.vhd(134[3] 144[10])
    SB_DFFE shiftRegister_i0_i3 (.Q(shiftRegister[3]), .C(xtalClock_c), 
            .E(sampleReady), .D(shiftRegister_7__N_685[3]));   // ../src/stage.vhd(134[3] 144[10])
    SB_DFFE shiftRegister_i0_i4 (.Q(shiftRegister[4]), .C(xtalClock_c), 
            .E(sampleReady), .D(shiftRegister_7__N_685[4]));   // ../src/stage.vhd(134[3] 144[10])
    SB_DFFE shiftRegister_i0_i5 (.Q(shiftRegister[5]), .C(xtalClock_c), 
            .E(sampleReady), .D(shiftRegister_7__N_685[5]));   // ../src/stage.vhd(134[3] 144[10])
    SB_DFFE shiftRegister_i0_i6 (.Q(shiftRegister[6]), .C(xtalClock_c), 
            .E(sampleReady), .D(shiftRegister_7__N_685[6]));   // ../src/stage.vhd(134[3] 144[10])
    SB_DFFE shiftRegister_i0_i7 (.Q(shiftRegister[7]), .C(xtalClock_c), 
            .E(sampleReady), .D(shiftRegister_7__N_685[7]));   // ../src/stage.vhd(134[3] 144[10])
    SB_DFFE counter__i1 (.Q(counter[1]), .C(xtalClock_c), .E(n4044), .D(n1707));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFE counter__i2 (.Q(counter[2]), .C(xtalClock_c), .E(n4044), .D(n1708));   // ../src/stage.vhd(150[3] 180[10])
    SB_LUT4 xor_7_i2_4_lut (.I0(memoryOut[1]), .I1(valueRegister[1]), .I2(shiftRegister[1]), 
            .I3(\configRegister[26] ), .O(intermediateRegister_7__N_677[1]));   // ../src/stage.vhd(100[29:38])
    defparam xor_7_i2_4_lut.LUT_INIT = 16'h3c66;
    SB_DFFE counter__i3 (.Q(counter[3]), .C(xtalClock_c), .E(n4044), .D(n1709));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFE counter__i4 (.Q(counter[4]), .C(xtalClock_c), .E(n4044), .D(n1710));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFE counter__i5 (.Q(counter[5]), .C(xtalClock_c), .E(n4044), .D(n1711));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFE counter__i6 (.Q(counter[6]), .C(xtalClock_c), .E(n4044), .D(n1712));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFE counter__i7 (.Q(counter[7]), .C(xtalClock_c), .E(n4044), .D(n1713));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFE counter__i8 (.Q(counter[8]), .C(xtalClock_c), .E(n4044), .D(n1714));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFE counter__i9 (.Q(counter[9]), .C(xtalClock_c), .E(n4044), .D(n1715));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFE counter__i10 (.Q(counter[10]), .C(xtalClock_c), .E(n4044), 
            .D(n1716));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFE counter__i11 (.Q(counter[11]), .C(xtalClock_c), .E(n4044), 
            .D(n1717));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFE counter__i12 (.Q(counter[12]), .C(xtalClock_c), .E(n4044), 
            .D(n1718));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFE counter__i13 (.Q(counter[13]), .C(xtalClock_c), .E(n4044), 
            .D(n1719));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFE counter__i14 (.Q(counter[14]), .C(xtalClock_c), .E(n4044), 
            .D(n1720));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFE counter__i15 (.Q(counter[15]), .C(xtalClock_c), .E(n4044), 
            .D(n1721));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFFR state_FSM_i2 (.Q(n447[1]), .C(xtalClock_c), .D(n2710), .R(resetCmd));   // ../src/stage.vhd(155[4] 179[13])
    SB_DFFR state_FSM_i3 (.Q(\state[1] ), .C(xtalClock_c), .D(n2708), 
            .R(resetCmd));   // ../src/stage.vhd(155[4] 179[13])
    SB_LUT4 i3581_1_lut (.I0(maskRegister[2]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n4740));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3581_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 xor_7_i3_4_lut (.I0(memoryOut[2]), .I1(valueRegister[2]), .I2(shiftRegister[2]), 
            .I3(\configRegister[26] ), .O(intermediateRegister_7__N_677[2]));   // ../src/stage.vhd(100[29:38])
    defparam xor_7_i3_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 i3582_1_lut (.I0(maskRegister[3]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n4741));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3582_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 xor_7_i4_4_lut (.I0(memoryOut[3]), .I1(valueRegister[3]), .I2(shiftRegister[3]), 
            .I3(\configRegister[26] ), .O(intermediateRegister_7__N_677[3]));   // ../src/stage.vhd(100[29:38])
    defparam xor_7_i4_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 i3583_1_lut (.I0(maskRegister[4]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n4742));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3583_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 xor_7_i5_4_lut (.I0(memoryOut[4]), .I1(valueRegister[4]), .I2(shiftRegister[4]), 
            .I3(\configRegister[26] ), .O(intermediateRegister_7__N_677[4]));   // ../src/stage.vhd(100[29:38])
    defparam xor_7_i5_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 i3584_1_lut (.I0(maskRegister[5]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n4743));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3584_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 xor_7_i6_4_lut (.I0(memoryOut[5]), .I1(valueRegister[5]), .I2(shiftRegister[5]), 
            .I3(\configRegister[26] ), .O(intermediateRegister_7__N_677[5]));   // ../src/stage.vhd(100[29:38])
    defparam xor_7_i6_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 i3585_1_lut (.I0(maskRegister[6]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n4744));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3585_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 xor_7_i7_4_lut (.I0(memoryOut[6]), .I1(valueRegister[6]), .I2(shiftRegister[6]), 
            .I3(\configRegister[26] ), .O(intermediateRegister_7__N_677[6]));   // ../src/stage.vhd(100[29:38])
    defparam xor_7_i7_4_lut.LUT_INIT = 16'h3c66;
    SB_LUT4 i3586_1_lut (.I0(maskRegister[7]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n4745));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3586_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 xor_7_i8_4_lut (.I0(memoryOut[7]), .I1(valueRegister[7]), .I2(shiftRegister[7]), 
            .I3(\configRegister[26] ), .O(intermediateRegister_7__N_677[7]));   // ../src/stage.vhd(100[29:38])
    defparam xor_7_i8_4_lut.LUT_INIT = 16'h3c66;
    SB_DFF configRegister__i1 (.Q(\configRegister[0] ), .C(xtalClock_c), 
           .D(n4797));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF valueRegister_i0_i0 (.Q(valueRegister[0]), .C(xtalClock_c), .D(n4793));   // ../src/stage.vhd(186[3] 196[10])
    SB_LUT4 configRegister_20__bdd_4_lut (.I0(\configRegister[20] ), .I1(memoryOut[2]), 
            .I2(memoryOut[3]), .I3(\configRegister[21] ), .O(n9111));
    defparam configRegister_20__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 n9111_bdd_4_lut (.I0(n9111), .I1(memoryOut[1]), .I2(memoryOut[0]), 
            .I3(\configRegister[21] ), .O(n9114));
    defparam n9111_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 configRegister_20__bdd_4_lut_7715 (.I0(\configRegister[20] ), 
            .I1(memoryOut[6]), .I2(memoryOut[7]), .I3(\configRegister[21] ), 
            .O(n9105));
    defparam configRegister_20__bdd_4_lut_7715.LUT_INIT = 16'he4aa;
    SB_LUT4 n9105_bdd_4_lut (.I0(n9105), .I1(memoryOut[5]), .I2(memoryOut[4]), 
            .I3(\configRegister[21] ), .O(n9108));
    defparam n9105_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFF maskRegister_i0_i0 (.Q(maskRegister[0]), .C(xtalClock_c), .D(n4789));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFFSR intermediateRegister_i0 (.Q(intermediateRegister[0]), .C(xtalClock_c), 
            .D(intermediateRegister_7__N_677[0]), .R(n4641));   // ../src/stage.vhd(99[3] 101[10])
    SB_LUT4 i12_4_lut (.I0(counter[11]), .I1(counter[9]), .I2(counter[14]), 
            .I3(counter[15]), .O(n28));   // ../src/stage.vhd(170[10:38])
    defparam i12_4_lut.LUT_INIT = 16'hfffe;
    SB_DFF run_83 (.Q(\stageRun[0] ), .C(xtalClock_c), .D(n8384));   // ../src/stage.vhd(150[3] 180[10])
    SB_DFF configRegister__i25 (.Q(\configRegister[27] ), .C(xtalClock_c), 
           .D(n6156));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i24 (.Q(\configRegister[26] ), .C(xtalClock_c), 
           .D(n5028));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i23 (.Q(\configRegister[24] ), .C(xtalClock_c), 
           .D(n5027));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i22 (.Q(\configRegister[23] ), .C(xtalClock_c), 
           .D(n5026));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i21 (.Q(\configRegister[22] ), .C(xtalClock_c), 
           .D(n5025));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i20 (.Q(\configRegister[21] ), .C(xtalClock_c), 
           .D(n5024));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i19 (.Q(\configRegister[20] ), .C(xtalClock_c), 
           .D(n5023));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i18 (.Q(\configRegister[17] ), .C(xtalClock_c), 
           .D(n5022));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i17 (.Q(\configRegister[16] ), .C(xtalClock_c), 
           .D(n5021));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i16 (.Q(\configRegister[15] ), .C(xtalClock_c), 
           .D(n5020));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i15 (.Q(\configRegister[14] ), .C(xtalClock_c), 
           .D(n5019));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i14 (.Q(\configRegister[13] ), .C(xtalClock_c), 
           .D(n5018));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i13 (.Q(\configRegister[12] ), .C(xtalClock_c), 
           .D(n5017));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i12 (.Q(\configRegister[11] ), .C(xtalClock_c), 
           .D(n5016));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i11 (.Q(\configRegister[10] ), .C(xtalClock_c), 
           .D(n5015));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i10 (.Q(\configRegister[9] ), .C(xtalClock_c), 
           .D(n5014));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i9 (.Q(\configRegister[8] ), .C(xtalClock_c), 
           .D(n5013));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i8 (.Q(\configRegister[7] ), .C(xtalClock_c), 
           .D(n5012));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i7 (.Q(\configRegister[6] ), .C(xtalClock_c), 
           .D(n5011));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i6 (.Q(\configRegister[5] ), .C(xtalClock_c), 
           .D(n5010));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i5 (.Q(\configRegister[4] ), .C(xtalClock_c), 
           .D(n5009));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i4 (.Q(\configRegister[3] ), .C(xtalClock_c), 
           .D(n5008));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i3 (.Q(\configRegister[2] ), .C(xtalClock_c), 
           .D(n5007));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF configRegister__i2 (.Q(\configRegister[1] ), .C(xtalClock_c), 
           .D(n5006));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF valueRegister_i0_i7 (.Q(valueRegister[7]), .C(xtalClock_c), .D(n5005));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF valueRegister_i0_i6 (.Q(valueRegister[6]), .C(xtalClock_c), .D(n5004));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF valueRegister_i0_i5 (.Q(valueRegister[5]), .C(xtalClock_c), .D(n5003));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF valueRegister_i0_i4 (.Q(valueRegister[4]), .C(xtalClock_c), .D(n5002));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF valueRegister_i0_i3 (.Q(valueRegister[3]), .C(xtalClock_c), .D(n5001));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF valueRegister_i0_i2 (.Q(valueRegister[2]), .C(xtalClock_c), .D(n5000));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF valueRegister_i0_i1 (.Q(valueRegister[1]), .C(xtalClock_c), .D(n4997));   // ../src/stage.vhd(186[3] 196[10])
    SB_LUT4 i10_4_lut (.I0(counter[8]), .I1(counter[3]), .I2(counter[13]), 
            .I3(counter[5]), .O(n26));   // ../src/stage.vhd(170[10:38])
    defparam i10_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i11_4_lut (.I0(counter[10]), .I1(counter[2]), .I2(counter[12]), 
            .I3(counter[7]), .O(n27));   // ../src/stage.vhd(170[10:38])
    defparam i11_4_lut.LUT_INIT = 16'hfffe;
    SB_DFF maskRegister_i0_i7 (.Q(maskRegister[7]), .C(xtalClock_c), .D(n4937));   // ../src/stage.vhd(186[3] 196[10])
    SB_LUT4 i3482_1_lut (.I0(maskRegister[0]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n4641));   // ../src/stage.vhd(186[3] 196[10])
    defparam i3482_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 xor_7_i1_4_lut (.I0(memoryOut[0]), .I1(valueRegister[0]), .I2(shiftRegister[0]), 
            .I3(\configRegister[26] ), .O(intermediateRegister_7__N_677[0]));   // ../src/stage.vhd(100[29:38])
    defparam xor_7_i1_4_lut.LUT_INIT = 16'h3c66;
    SB_DFF maskRegister_i0_i6 (.Q(maskRegister[6]), .C(xtalClock_c), .D(n4936));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF maskRegister_i0_i5 (.Q(maskRegister[5]), .C(xtalClock_c), .D(n4935));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF maskRegister_i0_i4 (.Q(maskRegister[4]), .C(xtalClock_c), .D(n4934));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF maskRegister_i0_i3 (.Q(maskRegister[3]), .C(xtalClock_c), .D(n4933));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF maskRegister_i0_i2 (.Q(maskRegister[2]), .C(xtalClock_c), .D(n4932));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFF maskRegister_i0_i1 (.Q(maskRegister[1]), .C(xtalClock_c), .D(n4931));   // ../src/stage.vhd(186[3] 196[10])
    SB_DFFSR intermediateRegister_i7 (.Q(intermediateRegister[7]), .C(xtalClock_c), 
            .D(intermediateRegister_7__N_677[7]), .R(n4745));   // ../src/stage.vhd(99[3] 101[10])
    SB_DFFSR intermediateRegister_i6 (.Q(intermediateRegister[6]), .C(xtalClock_c), 
            .D(intermediateRegister_7__N_677[6]), .R(n4744));   // ../src/stage.vhd(99[3] 101[10])
    SB_DFFSR intermediateRegister_i5 (.Q(intermediateRegister[5]), .C(xtalClock_c), 
            .D(intermediateRegister_7__N_677[5]), .R(n4743));   // ../src/stage.vhd(99[3] 101[10])
    SB_DFFSR intermediateRegister_i4 (.Q(intermediateRegister[4]), .C(xtalClock_c), 
            .D(intermediateRegister_7__N_677[4]), .R(n4742));   // ../src/stage.vhd(99[3] 101[10])
    SB_DFFSR intermediateRegister_i3 (.Q(intermediateRegister[3]), .C(xtalClock_c), 
            .D(intermediateRegister_7__N_677[3]), .R(n4741));   // ../src/stage.vhd(99[3] 101[10])
    SB_DFFSR intermediateRegister_i2 (.Q(intermediateRegister[2]), .C(xtalClock_c), 
            .D(intermediateRegister_7__N_677[2]), .R(n4740));   // ../src/stage.vhd(99[3] 101[10])
    SB_DFFSR intermediateRegister_i1 (.Q(intermediateRegister[1]), .C(xtalClock_c), 
            .D(intermediateRegister_7__N_677[1]), .R(n4739));   // ../src/stage.vhd(99[3] 101[10])
    SB_LUT4 i9_4_lut (.I0(counter[0]), .I1(counter[1]), .I2(counter[6]), 
            .I3(counter[4]), .O(n25));   // ../src/stage.vhd(170[10:38])
    defparam i9_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i15_4_lut (.I0(n25), .I1(n27), .I2(n26), .I3(n28), .O(n31));   // ../src/stage.vhd(170[10:38])
    defparam i15_4_lut.LUT_INIT = 16'hfffe;
    SB_DFFESR match_84 (.Q(\stageMatch[0] ), .C(xtalClock_c), .E(n3670), 
            .D(configRegister_27__N_725), .R(n4));   // ../src/stage.vhd(150[3] 180[10])
    SB_LUT4 add_104_17_lut (.I0(\configRegister[15] ), .I1(counter[15]), 
            .I2(n1705), .I3(n7883), .O(n1721)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_17_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 add_104_16_lut (.I0(\configRegister[14] ), .I1(counter[14]), 
            .I2(n1705), .I3(n7882), .O(n1720)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_16_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY add_104_16 (.CI(n7882), .I0(counter[14]), .I1(n1705), .CO(n7883));
    SB_LUT4 add_104_15_lut (.I0(\configRegister[13] ), .I1(counter[13]), 
            .I2(n1705), .I3(n7881), .O(n1719)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_15_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY add_104_15 (.CI(n7881), .I0(counter[13]), .I1(n1705), .CO(n7882));
    SB_LUT4 add_104_14_lut (.I0(\configRegister[12] ), .I1(counter[12]), 
            .I2(n1705), .I3(n7880), .O(n1718)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_14_lut.LUT_INIT = 16'hCA3A;
    SB_CARRY add_104_14 (.CI(n7880), .I0(counter[12]), .I1(n1705), .CO(n7881));
    SB_LUT4 i7666_3_lut_4_lut (.I0(resetCmd), .I1(\state[1] ), .I2(n31), 
            .I3(sampleReady), .O(n4));   // ../src/core.vhd(163[68:79])
    defparam i7666_3_lut_4_lut.LUT_INIT = 16'h5155;
    
endmodule
//
// Verilog Description of module \sync(8) 
//

module \sync(8)  (input_c_0, xtalClock_c, syncedInput, GND_net, flagDemux, 
            flagFilter, flagInverted, input_c_1, input_c_2, input_c_3, 
            input_c_4, input_c_5, input_c_6, input_c_7);
    input input_c_0;
    input xtalClock_c;
    output [7:0]syncedInput;
    input GND_net;
    input flagDemux;
    input flagFilter;
    input flagInverted;
    input input_c_1;
    input input_c_2;
    input input_c_3;
    input input_c_4;
    input input_c_5;
    input input_c_6;
    input input_c_7;
    
    wire xtalClock_c /* synthesis SET_AS_NETWORK=xtalClock_c, is_clock=1 */ ;   // ../src/la.vhd(44[3:12])
    wire [7:0]synchronizedInput180;   // ../src/sync.vhd(70[58:78])
    wire [7:0]output_7__N_445;
    wire [7:0]demuxedInput;   // ../src/sync.vhd(70[25:37])
    
    wire n2791, n2566, n2789, n2787, n2793;
    wire [7:0]synchronizedInput;   // ../src/sync.vhd(70[39:56])
    
    wire n2564, n9129;
    wire [7:0]filteredInput;   // ../src/sync.vhd(70[10:23])
    
    wire n9117, n9063, n9057;
    
    SB_DFFN synchronizedInput180_i0 (.Q(synchronizedInput180[0]), .C(xtalClock_c), 
            .D(input_c_0));   // ../src/sync.vhd(101[3] 103[10])
    SB_DFF output_i0 (.Q(syncedInput[0]), .C(xtalClock_c), .D(output_7__N_445[0]));   // ../src/sync.vhd(109[3] 123[10])
    SB_DFF synchronizedInput_i0 (.Q(demuxedInput[0]), .C(xtalClock_c), .D(input_c_0));   // ../src/sync.vhd(98[3] 100[10])
    SB_LUT4 i1683_3_lut (.I0(demuxedInput[3]), .I1(n2791), .I2(n2566), 
            .I3(GND_net), .O(output_7__N_445[3]));
    defparam i1683_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1681_3_lut (.I0(demuxedInput[2]), .I1(n2789), .I2(n2566), 
            .I3(GND_net), .O(output_7__N_445[2]));
    defparam i1681_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1679_3_lut (.I0(demuxedInput[1]), .I1(n2787), .I2(n2566), 
            .I3(GND_net), .O(output_7__N_445[1]));
    defparam i1679_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1459_3_lut (.I0(flagDemux), .I1(flagFilter), .I2(flagInverted), 
            .I3(GND_net), .O(n2566));
    defparam i1459_3_lut.LUT_INIT = 16'h5454;
    SB_LUT4 i1685_3_lut (.I0(demuxedInput[0]), .I1(n2793), .I2(n2566), 
            .I3(GND_net), .O(output_7__N_445[0]));
    defparam i1685_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFN synchronizedInput180_i1 (.Q(synchronizedInput180[1]), .C(xtalClock_c), 
            .D(input_c_1));   // ../src/sync.vhd(101[3] 103[10])
    SB_DFFN synchronizedInput180_i2 (.Q(synchronizedInput180[2]), .C(xtalClock_c), 
            .D(input_c_2));   // ../src/sync.vhd(101[3] 103[10])
    SB_DFFN synchronizedInput180_i3 (.Q(synchronizedInput180[3]), .C(xtalClock_c), 
            .D(input_c_3));   // ../src/sync.vhd(101[3] 103[10])
    SB_DFFN synchronizedInput180_i4 (.Q(synchronizedInput180[4]), .C(xtalClock_c), 
            .D(input_c_4));   // ../src/sync.vhd(101[3] 103[10])
    SB_DFFN synchronizedInput180_i5 (.Q(synchronizedInput180[5]), .C(xtalClock_c), 
            .D(input_c_5));   // ../src/sync.vhd(101[3] 103[10])
    SB_DFFN synchronizedInput180_i6 (.Q(synchronizedInput180[6]), .C(xtalClock_c), 
            .D(input_c_6));   // ../src/sync.vhd(101[3] 103[10])
    SB_DFFN synchronizedInput180_i7 (.Q(synchronizedInput180[7]), .C(xtalClock_c), 
            .D(input_c_7));   // ../src/sync.vhd(101[3] 103[10])
    SB_DFF output_i1 (.Q(syncedInput[1]), .C(xtalClock_c), .D(output_7__N_445[1]));   // ../src/sync.vhd(109[3] 123[10])
    SB_DFF output_i2 (.Q(syncedInput[2]), .C(xtalClock_c), .D(output_7__N_445[2]));   // ../src/sync.vhd(109[3] 123[10])
    SB_DFF output_i3 (.Q(syncedInput[3]), .C(xtalClock_c), .D(output_7__N_445[3]));   // ../src/sync.vhd(109[3] 123[10])
    SB_DFF output_i4 (.Q(syncedInput[4]), .C(xtalClock_c), .D(output_7__N_445[4]));   // ../src/sync.vhd(109[3] 123[10])
    SB_DFF output_i5 (.Q(syncedInput[5]), .C(xtalClock_c), .D(output_7__N_445[5]));   // ../src/sync.vhd(109[3] 123[10])
    SB_DFF output_i6 (.Q(syncedInput[6]), .C(xtalClock_c), .D(output_7__N_445[6]));   // ../src/sync.vhd(109[3] 123[10])
    SB_DFF output_i7 (.Q(syncedInput[7]), .C(xtalClock_c), .D(output_7__N_445[7]));   // ../src/sync.vhd(109[3] 123[10])
    SB_DFF synchronizedInput_i1 (.Q(demuxedInput[1]), .C(xtalClock_c), .D(input_c_1));   // ../src/sync.vhd(98[3] 100[10])
    SB_DFF synchronizedInput_i2 (.Q(demuxedInput[2]), .C(xtalClock_c), .D(input_c_2));   // ../src/sync.vhd(98[3] 100[10])
    SB_DFF synchronizedInput_i3 (.Q(demuxedInput[3]), .C(xtalClock_c), .D(input_c_3));   // ../src/sync.vhd(98[3] 100[10])
    SB_DFF synchronizedInput_i4 (.Q(synchronizedInput[4]), .C(xtalClock_c), 
           .D(input_c_4));   // ../src/sync.vhd(98[3] 100[10])
    SB_DFF synchronizedInput_i5 (.Q(synchronizedInput[5]), .C(xtalClock_c), 
           .D(input_c_5));   // ../src/sync.vhd(98[3] 100[10])
    SB_DFF synchronizedInput_i6 (.Q(synchronizedInput[6]), .C(xtalClock_c), 
           .D(input_c_6));   // ../src/sync.vhd(98[3] 100[10])
    SB_DFF synchronizedInput_i7 (.Q(synchronizedInput[7]), .C(xtalClock_c), 
           .D(input_c_7));   // ../src/sync.vhd(98[3] 100[10])
    SB_LUT4 n2566_bdd_4_lut (.I0(n2566), .I1(synchronizedInput[6]), .I2(synchronizedInput180[6]), 
            .I3(n2564), .O(n9129));
    defparam n2566_bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 n9129_bdd_4_lut (.I0(n9129), .I1(filteredInput[6]), .I2(demuxedInput[6]), 
            .I3(n2564), .O(output_7__N_445[6]));
    defparam n9129_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 n2566_bdd_4_lut_7729 (.I0(n2566), .I1(synchronizedInput[7]), 
            .I2(synchronizedInput180[7]), .I3(n2564), .O(n9117));
    defparam n2566_bdd_4_lut_7729.LUT_INIT = 16'he4aa;
    SB_LUT4 n9117_bdd_4_lut (.I0(n9117), .I1(filteredInput[7]), .I2(demuxedInput[7]), 
            .I3(n2564), .O(output_7__N_445[7]));
    defparam n9117_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 n2566_bdd_4_lut_7720 (.I0(n2566), .I1(synchronizedInput[5]), 
            .I2(synchronizedInput180[5]), .I3(n2564), .O(n9063));
    defparam n2566_bdd_4_lut_7720.LUT_INIT = 16'he4aa;
    SB_LUT4 n9063_bdd_4_lut (.I0(n9063), .I1(filteredInput[5]), .I2(demuxedInput[5]), 
            .I3(n2564), .O(output_7__N_445[5]));
    defparam n9063_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i5524_1_lut_2_lut (.I0(flagDemux), .I1(flagFilter), .I2(GND_net), 
            .I3(GND_net), .O(n2564));
    defparam i5524_1_lut_2_lut.LUT_INIT = 16'h1111;
    SB_LUT4 i1682_3_lut_4_lut (.I0(flagDemux), .I1(flagFilter), .I2(synchronizedInput180[3]), 
            .I3(filteredInput[3]), .O(n2791));
    defparam i1682_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 i1680_3_lut_4_lut (.I0(flagDemux), .I1(flagFilter), .I2(synchronizedInput180[2]), 
            .I3(filteredInput[2]), .O(n2789));
    defparam i1680_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 n2566_bdd_4_lut_7679 (.I0(n2566), .I1(synchronizedInput[4]), 
            .I2(synchronizedInput180[4]), .I3(n2564), .O(n9057));
    defparam n2566_bdd_4_lut_7679.LUT_INIT = 16'he4aa;
    SB_LUT4 i1678_3_lut_4_lut (.I0(flagDemux), .I1(flagFilter), .I2(synchronizedInput180[1]), 
            .I3(filteredInput[1]), .O(n2787));
    defparam i1678_3_lut_4_lut.LUT_INIT = 16'hfe10;
    SB_LUT4 n9057_bdd_4_lut (.I0(n9057), .I1(filteredInput[4]), .I2(demuxedInput[4]), 
            .I3(n2564), .O(output_7__N_445[4]));
    defparam n9057_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1684_3_lut_4_lut (.I0(flagDemux), .I1(flagFilter), .I2(synchronizedInput180[0]), 
            .I3(filteredInput[0]), .O(n2793));
    defparam i1684_3_lut_4_lut.LUT_INIT = 16'hfe10;
    \filter(8)  Inst_filter (.filteredInput({filteredInput}), .xtalClock_c(xtalClock_c), 
            .demuxedInput({demuxedInput}), .GND_net(GND_net), .\synchronizedInput[4] (synchronizedInput[4]), 
            .\synchronizedInput[5] (synchronizedInput[5]), .\synchronizedInput[6] (synchronizedInput[6]), 
            .\synchronizedInput[7] (synchronizedInput[7]), .\synchronizedInput180[4] (synchronizedInput180[4]), 
            .\synchronizedInput180[5] (synchronizedInput180[5]), .\synchronizedInput180[6] (synchronizedInput180[6]), 
            .\synchronizedInput180[7] (synchronizedInput180[7]));   // ../src/sync.vhd(85[15:21])
    \demux(8)  Inst_demux (.\synchronizedInput180[2] (synchronizedInput180[2]), 
            .\demuxedInput[6] (demuxedInput[6]), .xtalClock_c(xtalClock_c), 
            .\synchronizedInput180[1] (synchronizedInput180[1]), .\demuxedInput[5] (demuxedInput[5]), 
            .\synchronizedInput180[0] (synchronizedInput180[0]), .\demuxedInput[4] (demuxedInput[4]), 
            .\synchronizedInput180[3] (synchronizedInput180[3]), .\demuxedInput[7] (demuxedInput[7]));   // ../src/sync.vhd(75[14:19])
    
endmodule
//
// Verilog Description of module \filter(8) 
//

module \filter(8)  (filteredInput, xtalClock_c, demuxedInput, GND_net, 
            \synchronizedInput[4] , \synchronizedInput[5] , \synchronizedInput[6] , 
            \synchronizedInput[7] , \synchronizedInput180[4] , \synchronizedInput180[5] , 
            \synchronizedInput180[6] , \synchronizedInput180[7] );
    output [7:0]filteredInput;
    input xtalClock_c;
    input [7:0]demuxedInput;
    input GND_net;
    input \synchronizedInput[4] ;
    input \synchronizedInput[5] ;
    input \synchronizedInput[6] ;
    input \synchronizedInput[7] ;
    input \synchronizedInput180[4] ;
    input \synchronizedInput180[5] ;
    input \synchronizedInput180[6] ;
    input \synchronizedInput180[7] ;
    
    wire xtalClock_c /* synthesis SET_AS_NETWORK=xtalClock_c, is_clock=1 */ ;   // ../src/la.vhd(44[3:12])
    
    wire output_7__N_485, n4637;
    wire [7:0]input360;   // ../src/filter.vhd(47[10:18])
    
    wire n4729, output_7__N_482, n4730, output_7__N_479, n4731, output_7__N_476;
    wire [7:0]input180Delay;   // ../src/filter.vhd(47[20:33])
    
    wire n4732, output_7__N_473, n4733, output_7__N_470, n4734, output_7__N_467, 
        n4735, output_7__N_464;
    
    SB_DFFSR result_i0 (.Q(filteredInput[0]), .C(xtalClock_c), .D(output_7__N_485), 
            .R(n4637));   // ../src/filter.vhd(53[3] 62[10])
    SB_DFF input360_i0 (.Q(input360[0]), .C(xtalClock_c), .D(demuxedInput[0]));   // ../src/filter.vhd(53[3] 62[10])
    SB_LUT4 i3570_1_lut (.I0(demuxedInput[5]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n4729));   // ../src/filter.vhd(53[3] 62[10])
    defparam i3570_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i2_3_lut (.I0(demuxedInput[1]), .I1(input360[1]), .I2(filteredInput[1]), 
            .I3(GND_net), .O(output_7__N_482));   // ../src/filter.vhd(56[19:55])
    defparam i2_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i3571_1_lut (.I0(demuxedInput[6]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n4730));   // ../src/filter.vhd(53[3] 62[10])
    defparam i3571_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i2_3_lut_adj_63 (.I0(demuxedInput[2]), .I1(input360[2]), .I2(filteredInput[2]), 
            .I3(GND_net), .O(output_7__N_479));   // ../src/filter.vhd(56[19:55])
    defparam i2_3_lut_adj_63.LUT_INIT = 16'hfefe;
    SB_LUT4 i3572_1_lut (.I0(demuxedInput[7]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n4731));   // ../src/filter.vhd(53[3] 62[10])
    defparam i3572_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i2_3_lut_adj_64 (.I0(demuxedInput[3]), .I1(input360[3]), .I2(filteredInput[3]), 
            .I3(GND_net), .O(output_7__N_476));   // ../src/filter.vhd(56[19:55])
    defparam i2_3_lut_adj_64.LUT_INIT = 16'hfefe;
    SB_LUT4 i3573_1_lut (.I0(input180Delay[4]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n4732));   // ../src/filter.vhd(53[3] 62[10])
    defparam i3573_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i2_3_lut_adj_65 (.I0(\synchronizedInput[4] ), .I1(input360[4]), 
            .I2(filteredInput[4]), .I3(GND_net), .O(output_7__N_473));   // ../src/filter.vhd(56[19:55])
    defparam i2_3_lut_adj_65.LUT_INIT = 16'hfefe;
    SB_LUT4 i3574_1_lut (.I0(input180Delay[5]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n4733));   // ../src/filter.vhd(53[3] 62[10])
    defparam i3574_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i2_3_lut_adj_66 (.I0(\synchronizedInput[5] ), .I1(input360[5]), 
            .I2(filteredInput[5]), .I3(GND_net), .O(output_7__N_470));   // ../src/filter.vhd(56[19:55])
    defparam i2_3_lut_adj_66.LUT_INIT = 16'hfefe;
    SB_LUT4 i3575_1_lut (.I0(input180Delay[6]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n4734));   // ../src/filter.vhd(53[3] 62[10])
    defparam i3575_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i3478_1_lut (.I0(demuxedInput[4]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n4637));   // ../src/filter.vhd(53[3] 62[10])
    defparam i3478_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i2_3_lut_adj_67 (.I0(demuxedInput[0]), .I1(input360[0]), .I2(filteredInput[0]), 
            .I3(GND_net), .O(output_7__N_485));   // ../src/filter.vhd(56[19:55])
    defparam i2_3_lut_adj_67.LUT_INIT = 16'hfefe;
    SB_LUT4 i2_3_lut_adj_68 (.I0(\synchronizedInput[6] ), .I1(input360[6]), 
            .I2(filteredInput[6]), .I3(GND_net), .O(output_7__N_467));   // ../src/filter.vhd(56[19:55])
    defparam i2_3_lut_adj_68.LUT_INIT = 16'hfefe;
    SB_LUT4 i3576_1_lut (.I0(input180Delay[7]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n4735));   // ../src/filter.vhd(53[3] 62[10])
    defparam i3576_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i2_3_lut_adj_69 (.I0(\synchronizedInput[7] ), .I1(input360[7]), 
            .I2(filteredInput[7]), .I3(GND_net), .O(output_7__N_464));   // ../src/filter.vhd(56[19:55])
    defparam i2_3_lut_adj_69.LUT_INIT = 16'hfefe;
    SB_DFF input360_i1 (.Q(input360[1]), .C(xtalClock_c), .D(demuxedInput[1]));   // ../src/filter.vhd(53[3] 62[10])
    SB_DFF input360_i2 (.Q(input360[2]), .C(xtalClock_c), .D(demuxedInput[2]));   // ../src/filter.vhd(53[3] 62[10])
    SB_DFF input360_i3 (.Q(input360[3]), .C(xtalClock_c), .D(demuxedInput[3]));   // ../src/filter.vhd(53[3] 62[10])
    SB_DFF input360_i4 (.Q(input360[4]), .C(xtalClock_c), .D(\synchronizedInput[4] ));   // ../src/filter.vhd(53[3] 62[10])
    SB_DFF input360_i5 (.Q(input360[5]), .C(xtalClock_c), .D(\synchronizedInput[5] ));   // ../src/filter.vhd(53[3] 62[10])
    SB_DFF input360_i6 (.Q(input360[6]), .C(xtalClock_c), .D(\synchronizedInput[6] ));   // ../src/filter.vhd(53[3] 62[10])
    SB_DFF input360_i7 (.Q(input360[7]), .C(xtalClock_c), .D(\synchronizedInput[7] ));   // ../src/filter.vhd(53[3] 62[10])
    SB_DFF input180Delay_i4 (.Q(input180Delay[4]), .C(xtalClock_c), .D(\synchronizedInput180[4] ));   // ../src/filter.vhd(53[3] 62[10])
    SB_DFF input180Delay_i5 (.Q(input180Delay[5]), .C(xtalClock_c), .D(\synchronizedInput180[5] ));   // ../src/filter.vhd(53[3] 62[10])
    SB_DFF input180Delay_i6 (.Q(input180Delay[6]), .C(xtalClock_c), .D(\synchronizedInput180[6] ));   // ../src/filter.vhd(53[3] 62[10])
    SB_DFF input180Delay_i7 (.Q(input180Delay[7]), .C(xtalClock_c), .D(\synchronizedInput180[7] ));   // ../src/filter.vhd(53[3] 62[10])
    SB_DFFSR result_i7 (.Q(filteredInput[7]), .C(xtalClock_c), .D(output_7__N_464), 
            .R(n4735));   // ../src/filter.vhd(53[3] 62[10])
    SB_DFFSR result_i6 (.Q(filteredInput[6]), .C(xtalClock_c), .D(output_7__N_467), 
            .R(n4734));   // ../src/filter.vhd(53[3] 62[10])
    SB_DFFSR result_i5 (.Q(filteredInput[5]), .C(xtalClock_c), .D(output_7__N_470), 
            .R(n4733));   // ../src/filter.vhd(53[3] 62[10])
    SB_DFFSR result_i4 (.Q(filteredInput[4]), .C(xtalClock_c), .D(output_7__N_473), 
            .R(n4732));   // ../src/filter.vhd(53[3] 62[10])
    SB_DFFSR result_i3 (.Q(filteredInput[3]), .C(xtalClock_c), .D(output_7__N_476), 
            .R(n4731));   // ../src/filter.vhd(53[3] 62[10])
    SB_DFFSR result_i2 (.Q(filteredInput[2]), .C(xtalClock_c), .D(output_7__N_479), 
            .R(n4730));   // ../src/filter.vhd(53[3] 62[10])
    SB_DFFSR result_i1 (.Q(filteredInput[1]), .C(xtalClock_c), .D(output_7__N_482), 
            .R(n4729));   // ../src/filter.vhd(53[3] 62[10])
    
endmodule
//
// Verilog Description of module \demux(8) 
//

module \demux(8)  (\synchronizedInput180[2] , \demuxedInput[6] , xtalClock_c, 
            \synchronizedInput180[1] , \demuxedInput[5] , \synchronizedInput180[0] , 
            \demuxedInput[4] , \synchronizedInput180[3] , \demuxedInput[7] );
    input \synchronizedInput180[2] ;
    output \demuxedInput[6] ;
    input xtalClock_c;
    input \synchronizedInput180[1] ;
    output \demuxedInput[5] ;
    input \synchronizedInput180[0] ;
    output \demuxedInput[4] ;
    input \synchronizedInput180[3] ;
    output \demuxedInput[7] ;
    
    wire xtalClock_c /* synthesis SET_AS_NETWORK=xtalClock_c, is_clock=1 */ ;   // ../src/la.vhd(44[3:12])
    
    SB_DFF output_6__12 (.Q(\demuxedInput[6] ), .C(xtalClock_c), .D(\synchronizedInput180[2] ));   // ../src/demux.vhd(51[3] 53[10])
    SB_DFF output_5__13 (.Q(\demuxedInput[5] ), .C(xtalClock_c), .D(\synchronizedInput180[1] ));   // ../src/demux.vhd(51[3] 53[10])
    SB_DFF output_4__14 (.Q(\demuxedInput[4] ), .C(xtalClock_c), .D(\synchronizedInput180[0] ));   // ../src/demux.vhd(51[3] 53[10])
    SB_DFF output_7__11 (.Q(\demuxedInput[7] ), .C(xtalClock_c), .D(\synchronizedInput180[3] ));   // ../src/demux.vhd(51[3] 53[10])
    
endmodule
//
// Verilog Description of module \sampler(8) 
//

module \sampler(8)  (ready50_N_581, wrDivider, GND_net, divider, xtalClock_c, 
            n4869, memoryOut, n4868, n4867, n4866, n4865, n4864, 
            n4863, n1639, n9054, n31, sampleReady, \state[1] , n1705, 
            n9053, n31_adj_2, \state[1]_adj_3 , n31_adj_4, n6713, 
            n4788, n8515, n4930, n4929, n4928, n4927, n4926, n4925, 
            n4924, n4923, n4922, n4921, n4920, n4919, n4918, n4917, 
            n4916, n4915, n4914, n4913, n4912, n4911, n4910, n4909, 
            n4908, n4775, ready50_c, VCC_net);
    output ready50_N_581;
    input wrDivider;
    input GND_net;
    output [23:0]divider;
    input xtalClock_c;
    input n4869;
    output [7:0]memoryOut;
    input n4868;
    input n4867;
    input n4866;
    input n4865;
    input n4864;
    input n4863;
    output n1639;
    output n9054;
    input n31;
    output sampleReady;
    input \state[1] ;
    output n1705;
    output n9053;
    input n31_adj_2;
    input \state[1]_adj_3 ;
    input n31_adj_4;
    output n6713;
    input n4788;
    output n8515;
    input n4930;
    input n4929;
    input n4928;
    input n4927;
    input n4926;
    input n4925;
    input n4924;
    input n4923;
    input n4922;
    input n4921;
    input n4920;
    input n4919;
    input n4918;
    input n4917;
    input n4916;
    input n4915;
    input n4914;
    input n4913;
    input n4912;
    input n4911;
    input n4910;
    input n4909;
    input n4908;
    input n4775;
    output ready50_c;
    input VCC_net;
    
    wire xtalClock_c /* synthesis SET_AS_NETWORK=xtalClock_c, is_clock=1 */ ;   // ../src/la.vhd(44[3:12])
    
    wire n1700;
    wire [23:0]counter;   // ../src/sampler.vhd(59[19:26])
    
    wire n8606, n3, n8656, n8588, n8592, n8590, n8596, n8604, 
        n8600, n8602, n8598, n8671, n8618, n8673, n8669, n8687;
    wire [23:0]n101;
    
    wire n983, n7970, n7969, n7968, n7967, n7966, n7965, n7964, 
        n7963, n7962, n7961, n7960, n7959, n7958, n7957, n7956, 
        n7955, n7954, n7953, n7952, n7951, n7950, n7949, n7948, 
        n32, n30, n31_adj_995, n29, n28, n26, n27, n25, n36, 
        n34, n35, n33, n44, n43, n45;
    
    SB_LUT4 i857_2_lut (.I0(ready50_N_581), .I1(wrDivider), .I2(GND_net), 
            .I3(GND_net), .O(n1700));   // ../src/sampler.vhd(70[4] 94[11])
    defparam i857_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i7288_4_lut (.I0(counter[5]), .I1(n8606), .I2(n3), .I3(divider[6]), 
            .O(n8656));
    defparam i7288_4_lut.LUT_INIT = 16'hfdfe;
    SB_LUT4 i7220_4_lut (.I0(counter[16]), .I1(counter[10]), .I2(divider[17]), 
            .I3(divider[11]), .O(n8588));
    defparam i7220_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i7224_4_lut (.I0(counter[7]), .I1(counter[4]), .I2(divider[8]), 
            .I3(divider[5]), .O(n8592));
    defparam i7224_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i7222_4_lut (.I0(counter[21]), .I1(counter[19]), .I2(divider[22]), 
            .I3(divider[20]), .O(n8590));
    defparam i7222_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i7228_4_lut (.I0(counter[13]), .I1(counter[9]), .I2(divider[14]), 
            .I3(divider[10]), .O(n8596));
    defparam i7228_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i7302_4_lut (.I0(n8604), .I1(n8600), .I2(n8602), .I3(n8598), 
            .O(n8671));
    defparam i7302_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i7304_4_lut (.I0(counter[22]), .I1(n8656), .I2(n8618), .I3(divider[23]), 
            .O(n8673));
    defparam i7304_4_lut.LUT_INIT = 16'hfdfe;
    SB_LUT4 i7300_4_lut (.I0(n8596), .I1(n8590), .I2(n8592), .I3(n8588), 
            .O(n8669));
    defparam i7300_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i7611_4_lut (.I0(n8669), .I1(ready50_N_581), .I2(n8673), .I3(n8671), 
            .O(n8687));
    defparam i7611_4_lut.LUT_INIT = 16'hcccd;
    SB_DFFSR counter_926__i0 (.Q(counter[0]), .C(xtalClock_c), .D(n101[0]), 
            .R(n1700));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/syn_unsi.vhd(118[20:31])
    SB_DFF sample_i0_i7 (.Q(memoryOut[7]), .C(xtalClock_c), .D(n4869));   // ../src/sampler.vhd(67[3] 95[10])
    SB_DFF sample_i0_i6 (.Q(memoryOut[6]), .C(xtalClock_c), .D(n4868));   // ../src/sampler.vhd(67[3] 95[10])
    SB_DFF sample_i0_i5 (.Q(memoryOut[5]), .C(xtalClock_c), .D(n4867));   // ../src/sampler.vhd(67[3] 95[10])
    SB_DFF sample_i0_i4 (.Q(memoryOut[4]), .C(xtalClock_c), .D(n4866));   // ../src/sampler.vhd(67[3] 95[10])
    SB_DFF sample_i0_i3 (.Q(memoryOut[3]), .C(xtalClock_c), .D(n4865));   // ../src/sampler.vhd(67[3] 95[10])
    SB_DFF sample_i0_i2 (.Q(memoryOut[2]), .C(xtalClock_c), .D(n4864));   // ../src/sampler.vhd(67[3] 95[10])
    SB_DFF sample_i0_i1 (.Q(memoryOut[1]), .C(xtalClock_c), .D(n4863));   // ../src/sampler.vhd(67[3] 95[10])
    SB_LUT4 i7669_1_lut (.I0(n1639), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n9054));   // ../src/sampler.vhd(67[3] 95[10])
    defparam i7669_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i1_2_lut_3_lut (.I0(n31), .I1(sampleReady), .I2(\state[1] ), 
            .I3(GND_net), .O(n1705));   // ../src/sampler.vhd(67[3] 95[10])
    defparam i1_2_lut_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i7668_1_lut_2_lut_3_lut (.I0(n31), .I1(sampleReady), .I2(\state[1] ), 
            .I3(GND_net), .O(n9053));   // ../src/sampler.vhd(67[3] 95[10])
    defparam i7668_1_lut_2_lut_3_lut.LUT_INIT = 16'h7f7f;
    SB_LUT4 i2_3_lut (.I0(n31_adj_2), .I1(\state[1]_adj_3 ), .I2(sampleReady), 
            .I3(GND_net), .O(n1639));   // ../src/sampler.vhd(67[3] 95[10])
    defparam i2_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i5549_2_lut (.I0(sampleReady), .I1(n31_adj_4), .I2(GND_net), 
            .I3(GND_net), .O(n6713));
    defparam i5549_2_lut.LUT_INIT = 16'h8888;
    SB_DFF ready_40 (.Q(sampleReady), .C(xtalClock_c), .D(n983));   // ../src/sampler.vhd(67[3] 95[10])
    SB_DFFSR counter_926__i1 (.Q(counter[1]), .C(xtalClock_c), .D(n101[1]), 
            .R(n1700));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/syn_unsi.vhd(118[20:31])
    SB_DFFSR counter_926__i2 (.Q(counter[2]), .C(xtalClock_c), .D(n101[2]), 
            .R(n1700));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/syn_unsi.vhd(118[20:31])
    SB_DFFSR counter_926__i3 (.Q(counter[3]), .C(xtalClock_c), .D(n101[3]), 
            .R(n1700));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/syn_unsi.vhd(118[20:31])
    SB_DFFSR counter_926__i4 (.Q(counter[4]), .C(xtalClock_c), .D(n101[4]), 
            .R(n1700));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/syn_unsi.vhd(118[20:31])
    SB_DFFSR counter_926__i5 (.Q(counter[5]), .C(xtalClock_c), .D(n101[5]), 
            .R(n1700));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/syn_unsi.vhd(118[20:31])
    SB_DFFSR counter_926__i6 (.Q(counter[6]), .C(xtalClock_c), .D(n101[6]), 
            .R(n1700));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/syn_unsi.vhd(118[20:31])
    SB_DFFSR counter_926__i7 (.Q(counter[7]), .C(xtalClock_c), .D(n101[7]), 
            .R(n1700));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/syn_unsi.vhd(118[20:31])
    SB_DFFSR counter_926__i8 (.Q(counter[8]), .C(xtalClock_c), .D(n101[8]), 
            .R(n1700));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/syn_unsi.vhd(118[20:31])
    SB_DFFSR counter_926__i9 (.Q(counter[9]), .C(xtalClock_c), .D(n101[9]), 
            .R(n1700));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/syn_unsi.vhd(118[20:31])
    SB_DFFSR counter_926__i10 (.Q(counter[10]), .C(xtalClock_c), .D(n101[10]), 
            .R(n1700));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/syn_unsi.vhd(118[20:31])
    SB_DFFSR counter_926__i11 (.Q(counter[11]), .C(xtalClock_c), .D(n101[11]), 
            .R(n1700));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/syn_unsi.vhd(118[20:31])
    SB_DFFSR counter_926__i12 (.Q(counter[12]), .C(xtalClock_c), .D(n101[12]), 
            .R(n1700));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/syn_unsi.vhd(118[20:31])
    SB_DFFSR counter_926__i13 (.Q(counter[13]), .C(xtalClock_c), .D(n101[13]), 
            .R(n1700));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/syn_unsi.vhd(118[20:31])
    SB_DFFSR counter_926__i14 (.Q(counter[14]), .C(xtalClock_c), .D(n101[14]), 
            .R(n1700));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/syn_unsi.vhd(118[20:31])
    SB_DFFSR counter_926__i15 (.Q(counter[15]), .C(xtalClock_c), .D(n101[15]), 
            .R(n1700));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/syn_unsi.vhd(118[20:31])
    SB_DFFSR counter_926__i16 (.Q(counter[16]), .C(xtalClock_c), .D(n101[16]), 
            .R(n1700));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/syn_unsi.vhd(118[20:31])
    SB_DFFSR counter_926__i17 (.Q(counter[17]), .C(xtalClock_c), .D(n101[17]), 
            .R(n1700));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/syn_unsi.vhd(118[20:31])
    SB_DFFSR counter_926__i18 (.Q(counter[18]), .C(xtalClock_c), .D(n101[18]), 
            .R(n1700));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/syn_unsi.vhd(118[20:31])
    SB_DFFSR counter_926__i19 (.Q(counter[19]), .C(xtalClock_c), .D(n101[19]), 
            .R(n1700));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/syn_unsi.vhd(118[20:31])
    SB_DFFSR counter_926__i20 (.Q(counter[20]), .C(xtalClock_c), .D(n101[20]), 
            .R(n1700));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/syn_unsi.vhd(118[20:31])
    SB_DFFSR counter_926__i21 (.Q(counter[21]), .C(xtalClock_c), .D(n101[21]), 
            .R(n1700));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/syn_unsi.vhd(118[20:31])
    SB_DFFSR counter_926__i22 (.Q(counter[22]), .C(xtalClock_c), .D(n101[22]), 
            .R(n1700));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/syn_unsi.vhd(118[20:31])
    SB_DFFSR counter_926__i23 (.Q(counter[23]), .C(xtalClock_c), .D(n101[23]), 
            .R(n1700));   // /home/omer/lscc/iCEcube2.2016.02/LSE/vhdl_packages/syn_unsi.vhd(118[20:31])
    SB_DFF divider_i0_i0 (.Q(divider[0]), .C(xtalClock_c), .D(n4788));   // ../src/sampler.vhd(67[3] 95[10])
    SB_LUT4 i1_2_lut (.I0(sampleReady), .I1(\state[1] ), .I2(GND_net), 
            .I3(GND_net), .O(n8515));   // ../src/sampler.vhd(67[3] 95[10])
    defparam i1_2_lut.LUT_INIT = 16'h8888;
    SB_DFF divider_i0_i23 (.Q(divider[23]), .C(xtalClock_c), .D(n4930));   // ../src/sampler.vhd(67[3] 95[10])
    SB_DFF divider_i0_i22 (.Q(divider[22]), .C(xtalClock_c), .D(n4929));   // ../src/sampler.vhd(67[3] 95[10])
    SB_DFF divider_i0_i21 (.Q(divider[21]), .C(xtalClock_c), .D(n4928));   // ../src/sampler.vhd(67[3] 95[10])
    SB_DFF divider_i0_i20 (.Q(divider[20]), .C(xtalClock_c), .D(n4927));   // ../src/sampler.vhd(67[3] 95[10])
    SB_DFF divider_i0_i19 (.Q(divider[19]), .C(xtalClock_c), .D(n4926));   // ../src/sampler.vhd(67[3] 95[10])
    SB_DFF divider_i0_i18 (.Q(divider[18]), .C(xtalClock_c), .D(n4925));   // ../src/sampler.vhd(67[3] 95[10])
    SB_DFF divider_i0_i17 (.Q(divider[17]), .C(xtalClock_c), .D(n4924));   // ../src/sampler.vhd(67[3] 95[10])
    SB_DFF divider_i0_i16 (.Q(divider[16]), .C(xtalClock_c), .D(n4923));   // ../src/sampler.vhd(67[3] 95[10])
    SB_DFF divider_i0_i15 (.Q(divider[15]), .C(xtalClock_c), .D(n4922));   // ../src/sampler.vhd(67[3] 95[10])
    SB_DFF divider_i0_i14 (.Q(divider[14]), .C(xtalClock_c), .D(n4921));   // ../src/sampler.vhd(67[3] 95[10])
    SB_DFF divider_i0_i13 (.Q(divider[13]), .C(xtalClock_c), .D(n4920));   // ../src/sampler.vhd(67[3] 95[10])
    SB_DFF divider_i0_i12 (.Q(divider[12]), .C(xtalClock_c), .D(n4919));   // ../src/sampler.vhd(67[3] 95[10])
    SB_DFF divider_i0_i11 (.Q(divider[11]), .C(xtalClock_c), .D(n4918));   // ../src/sampler.vhd(67[3] 95[10])
    SB_DFF divider_i0_i10 (.Q(divider[10]), .C(xtalClock_c), .D(n4917));   // ../src/sampler.vhd(67[3] 95[10])
    SB_DFF divider_i0_i9 (.Q(divider[9]), .C(xtalClock_c), .D(n4916));   // ../src/sampler.vhd(67[3] 95[10])
    SB_DFF divider_i0_i8 (.Q(divider[8]), .C(xtalClock_c), .D(n4915));   // ../src/sampler.vhd(67[3] 95[10])
    SB_DFF divider_i0_i7 (.Q(divider[7]), .C(xtalClock_c), .D(n4914));   // ../src/sampler.vhd(67[3] 95[10])
    SB_DFF divider_i0_i6 (.Q(divider[6]), .C(xtalClock_c), .D(n4913));   // ../src/sampler.vhd(67[3] 95[10])
    SB_DFF divider_i0_i5 (.Q(divider[5]), .C(xtalClock_c), .D(n4912));   // ../src/sampler.vhd(67[3] 95[10])
    SB_DFF divider_i0_i4 (.Q(divider[4]), .C(xtalClock_c), .D(n4911));   // ../src/sampler.vhd(67[3] 95[10])
    SB_DFF divider_i0_i3 (.Q(divider[3]), .C(xtalClock_c), .D(n4910));   // ../src/sampler.vhd(67[3] 95[10])
    SB_DFF divider_i0_i2 (.Q(divider[2]), .C(xtalClock_c), .D(n4909));   // ../src/sampler.vhd(67[3] 95[10])
    SB_DFF divider_i0_i1 (.Q(divider[1]), .C(xtalClock_c), .D(n4908));   // ../src/sampler.vhd(67[3] 95[10])
    SB_DFF sample_i0_i0 (.Q(memoryOut[0]), .C(xtalClock_c), .D(n4775));   // ../src/sampler.vhd(67[3] 95[10])
    SB_LUT4 counter_926_add_4_25_lut (.I0(GND_net), .I1(GND_net), .I2(counter[23]), 
            .I3(n7970), .O(n101[23])) /* synthesis syn_instantiated=1 */ ;
    defparam counter_926_add_4_25_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 counter_926_add_4_24_lut (.I0(GND_net), .I1(GND_net), .I2(counter[22]), 
            .I3(n7969), .O(n101[22])) /* synthesis syn_instantiated=1 */ ;
    defparam counter_926_add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_DFFE ready50_43 (.Q(ready50_c), .C(xtalClock_c), .E(n8687), .D(ready50_N_581));   // ../src/sampler.vhd(101[3] 107[10])
    SB_CARRY counter_926_add_4_24 (.CI(n7969), .I0(GND_net), .I1(counter[22]), 
            .CO(n7970));
    SB_LUT4 counter_926_add_4_23_lut (.I0(GND_net), .I1(GND_net), .I2(counter[21]), 
            .I3(n7968), .O(n101[21])) /* synthesis syn_instantiated=1 */ ;
    defparam counter_926_add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter_926_add_4_23 (.CI(n7968), .I0(GND_net), .I1(counter[21]), 
            .CO(n7969));
    SB_LUT4 counter_926_add_4_22_lut (.I0(GND_net), .I1(GND_net), .I2(counter[20]), 
            .I3(n7967), .O(n101[20])) /* synthesis syn_instantiated=1 */ ;
    defparam counter_926_add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter_926_add_4_22 (.CI(n7967), .I0(GND_net), .I1(counter[20]), 
            .CO(n7968));
    SB_LUT4 counter_926_add_4_21_lut (.I0(GND_net), .I1(GND_net), .I2(counter[19]), 
            .I3(n7966), .O(n101[19])) /* synthesis syn_instantiated=1 */ ;
    defparam counter_926_add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter_926_add_4_21 (.CI(n7966), .I0(GND_net), .I1(counter[19]), 
            .CO(n7967));
    SB_LUT4 counter_926_add_4_20_lut (.I0(GND_net), .I1(GND_net), .I2(counter[18]), 
            .I3(n7965), .O(n101[18])) /* synthesis syn_instantiated=1 */ ;
    defparam counter_926_add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter_926_add_4_20 (.CI(n7965), .I0(GND_net), .I1(counter[18]), 
            .CO(n7966));
    SB_LUT4 counter_926_add_4_19_lut (.I0(GND_net), .I1(GND_net), .I2(counter[17]), 
            .I3(n7964), .O(n101[17])) /* synthesis syn_instantiated=1 */ ;
    defparam counter_926_add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter_926_add_4_19 (.CI(n7964), .I0(GND_net), .I1(counter[17]), 
            .CO(n7965));
    SB_LUT4 counter_926_add_4_18_lut (.I0(GND_net), .I1(GND_net), .I2(counter[16]), 
            .I3(n7963), .O(n101[16])) /* synthesis syn_instantiated=1 */ ;
    defparam counter_926_add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter_926_add_4_18 (.CI(n7963), .I0(GND_net), .I1(counter[16]), 
            .CO(n7964));
    SB_LUT4 counter_926_add_4_17_lut (.I0(GND_net), .I1(GND_net), .I2(counter[15]), 
            .I3(n7962), .O(n101[15])) /* synthesis syn_instantiated=1 */ ;
    defparam counter_926_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter_926_add_4_17 (.CI(n7962), .I0(GND_net), .I1(counter[15]), 
            .CO(n7963));
    SB_LUT4 counter_926_add_4_16_lut (.I0(GND_net), .I1(GND_net), .I2(counter[14]), 
            .I3(n7961), .O(n101[14])) /* synthesis syn_instantiated=1 */ ;
    defparam counter_926_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter_926_add_4_16 (.CI(n7961), .I0(GND_net), .I1(counter[14]), 
            .CO(n7962));
    SB_LUT4 counter_926_add_4_15_lut (.I0(GND_net), .I1(GND_net), .I2(counter[13]), 
            .I3(n7960), .O(n101[13])) /* synthesis syn_instantiated=1 */ ;
    defparam counter_926_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter_926_add_4_15 (.CI(n7960), .I0(GND_net), .I1(counter[13]), 
            .CO(n7961));
    SB_LUT4 counter_926_add_4_14_lut (.I0(GND_net), .I1(GND_net), .I2(counter[12]), 
            .I3(n7959), .O(n101[12])) /* synthesis syn_instantiated=1 */ ;
    defparam counter_926_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter_926_add_4_14 (.CI(n7959), .I0(GND_net), .I1(counter[12]), 
            .CO(n7960));
    SB_LUT4 counter_926_add_4_13_lut (.I0(GND_net), .I1(GND_net), .I2(counter[11]), 
            .I3(n7958), .O(n101[11])) /* synthesis syn_instantiated=1 */ ;
    defparam counter_926_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter_926_add_4_13 (.CI(n7958), .I0(GND_net), .I1(counter[11]), 
            .CO(n7959));
    SB_LUT4 counter_926_add_4_12_lut (.I0(GND_net), .I1(GND_net), .I2(counter[10]), 
            .I3(n7957), .O(n101[10])) /* synthesis syn_instantiated=1 */ ;
    defparam counter_926_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter_926_add_4_12 (.CI(n7957), .I0(GND_net), .I1(counter[10]), 
            .CO(n7958));
    SB_LUT4 counter_926_add_4_11_lut (.I0(GND_net), .I1(GND_net), .I2(counter[9]), 
            .I3(n7956), .O(n101[9])) /* synthesis syn_instantiated=1 */ ;
    defparam counter_926_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter_926_add_4_11 (.CI(n7956), .I0(GND_net), .I1(counter[9]), 
            .CO(n7957));
    SB_LUT4 counter_926_add_4_10_lut (.I0(GND_net), .I1(GND_net), .I2(counter[8]), 
            .I3(n7955), .O(n101[8])) /* synthesis syn_instantiated=1 */ ;
    defparam counter_926_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter_926_add_4_10 (.CI(n7955), .I0(GND_net), .I1(counter[8]), 
            .CO(n7956));
    SB_LUT4 counter_926_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(counter[7]), 
            .I3(n7954), .O(n101[7])) /* synthesis syn_instantiated=1 */ ;
    defparam counter_926_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter_926_add_4_9 (.CI(n7954), .I0(GND_net), .I1(counter[7]), 
            .CO(n7955));
    SB_LUT4 counter_926_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(counter[6]), 
            .I3(n7953), .O(n101[6])) /* synthesis syn_instantiated=1 */ ;
    defparam counter_926_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter_926_add_4_8 (.CI(n7953), .I0(GND_net), .I1(counter[6]), 
            .CO(n7954));
    SB_LUT4 counter_926_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(counter[5]), 
            .I3(n7952), .O(n101[5])) /* synthesis syn_instantiated=1 */ ;
    defparam counter_926_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter_926_add_4_7 (.CI(n7952), .I0(GND_net), .I1(counter[5]), 
            .CO(n7953));
    SB_LUT4 counter_926_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(counter[4]), 
            .I3(n7951), .O(n101[4])) /* synthesis syn_instantiated=1 */ ;
    defparam counter_926_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter_926_add_4_6 (.CI(n7951), .I0(GND_net), .I1(counter[4]), 
            .CO(n7952));
    SB_LUT4 counter_926_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(counter[3]), 
            .I3(n7950), .O(n101[3])) /* synthesis syn_instantiated=1 */ ;
    defparam counter_926_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter_926_add_4_5 (.CI(n7950), .I0(GND_net), .I1(counter[3]), 
            .CO(n7951));
    SB_LUT4 counter_926_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(counter[2]), 
            .I3(n7949), .O(n101[2])) /* synthesis syn_instantiated=1 */ ;
    defparam counter_926_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter_926_add_4_4 (.CI(n7949), .I0(GND_net), .I1(counter[2]), 
            .CO(n7950));
    SB_LUT4 counter_926_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(counter[1]), 
            .I3(n7948), .O(n101[1])) /* synthesis syn_instantiated=1 */ ;
    defparam counter_926_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter_926_add_4_3 (.CI(n7948), .I0(GND_net), .I1(counter[1]), 
            .CO(n7949));
    SB_LUT4 counter_926_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(counter[0]), 
            .I3(VCC_net), .O(n101[0])) /* synthesis syn_instantiated=1 */ ;
    defparam counter_926_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY counter_926_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(counter[0]), 
            .CO(n7948));
    SB_LUT4 i7613_2_lut (.I0(wrDivider), .I1(ready50_N_581), .I2(GND_net), 
            .I3(GND_net), .O(n983));
    defparam i7613_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i8_4_lut (.I0(counter[16]), .I1(counter[14]), .I2(divider[16]), 
            .I3(divider[14]), .O(n32));   // ../src/sampler.vhd(85[10:27])
    defparam i8_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i6_4_lut (.I0(counter[4]), .I1(counter[2]), .I2(divider[4]), 
            .I3(divider[2]), .O(n30));   // ../src/sampler.vhd(85[10:27])
    defparam i6_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i7_4_lut (.I0(counter[21]), .I1(counter[19]), .I2(divider[21]), 
            .I3(divider[19]), .O(n31_adj_995));   // ../src/sampler.vhd(85[10:27])
    defparam i7_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i5_4_lut (.I0(counter[9]), .I1(counter[7]), .I2(divider[9]), 
            .I3(divider[7]), .O(n29));   // ../src/sampler.vhd(85[10:27])
    defparam i5_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i4_4_lut (.I0(counter[15]), .I1(counter[13]), .I2(divider[15]), 
            .I3(divider[13]), .O(n28));   // ../src/sampler.vhd(85[10:27])
    defparam i4_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i2_4_lut (.I0(counter[6]), .I1(counter[3]), .I2(divider[6]), 
            .I3(divider[3]), .O(n26));   // ../src/sampler.vhd(85[10:27])
    defparam i2_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i3_4_lut (.I0(counter[1]), .I1(counter[18]), .I2(divider[1]), 
            .I3(divider[18]), .O(n27));   // ../src/sampler.vhd(85[10:27])
    defparam i3_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i1_4_lut (.I0(counter[0]), .I1(counter[12]), .I2(divider[0]), 
            .I3(divider[12]), .O(n25));   // ../src/sampler.vhd(85[10:27])
    defparam i1_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i12_4_lut (.I0(counter[11]), .I1(counter[23]), .I2(divider[11]), 
            .I3(divider[23]), .O(n36));   // ../src/sampler.vhd(85[10:27])
    defparam i12_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i10_4_lut (.I0(counter[5]), .I1(counter[22]), .I2(divider[5]), 
            .I3(divider[22]), .O(n34));   // ../src/sampler.vhd(85[10:27])
    defparam i10_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i11_4_lut (.I0(counter[20]), .I1(counter[17]), .I2(divider[20]), 
            .I3(divider[17]), .O(n35));   // ../src/sampler.vhd(85[10:27])
    defparam i11_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i9_4_lut (.I0(counter[10]), .I1(counter[8]), .I2(divider[10]), 
            .I3(divider[8]), .O(n33));   // ../src/sampler.vhd(85[10:27])
    defparam i9_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i20_4_lut (.I0(n29), .I1(n31_adj_995), .I2(n30), .I3(n32), 
            .O(n44));   // ../src/sampler.vhd(85[10:27])
    defparam i20_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i19_4_lut (.I0(n25), .I1(n27), .I2(n26), .I3(n28), .O(n43));   // ../src/sampler.vhd(85[10:27])
    defparam i19_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i21_4_lut (.I0(n33), .I1(n35), .I2(n34), .I3(n36), .O(n45));   // ../src/sampler.vhd(85[10:27])
    defparam i21_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i7609_3_lut (.I0(n45), .I1(n43), .I2(n44), .I3(GND_net), 
            .O(ready50_N_581));   // ../src/sampler.vhd(85[10:27])
    defparam i7609_3_lut.LUT_INIT = 16'h0101;
    SB_LUT4 i7230_4_lut (.I0(counter[18]), .I1(counter[15]), .I2(divider[19]), 
            .I3(divider[16]), .O(n8598));
    defparam i7230_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i7234_4_lut (.I0(counter[8]), .I1(counter[6]), .I2(divider[9]), 
            .I3(divider[7]), .O(n8602));
    defparam i7234_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i7232_4_lut (.I0(counter[3]), .I1(counter[20]), .I2(divider[4]), 
            .I3(divider[21]), .O(n8600));
    defparam i7232_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i7236_4_lut (.I0(counter[14]), .I1(counter[12]), .I2(divider[15]), 
            .I3(divider[13]), .O(n8604));
    defparam i7236_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 counter_22__I_0_i3_2_lut (.I0(counter[2]), .I1(divider[3]), 
            .I2(GND_net), .I3(GND_net), .O(n3));   // ../src/sampler.vhd(104[10:53])
    defparam counter_22__I_0_i3_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i7238_4_lut (.I0(counter[1]), .I1(counter[17]), .I2(divider[2]), 
            .I3(divider[18]), .O(n8606));
    defparam i7238_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i7250_4_lut (.I0(counter[0]), .I1(counter[11]), .I2(divider[1]), 
            .I3(divider[12]), .O(n8618));
    defparam i7250_4_lut.LUT_INIT = 16'h7bde;
    
endmodule
//
// Verilog Description of module flags
//

module flags (n4844, flagFilter, xtalClock_c, n4843, flagDemux, n4842, 
            flagInverted);
    input n4844;
    output flagFilter;
    input xtalClock_c;
    input n4843;
    output flagDemux;
    input n4842;
    output flagInverted;
    
    wire xtalClock_c /* synthesis SET_AS_NETWORK=xtalClock_c, is_clock=1 */ ;   // ../src/la.vhd(44[3:12])
    
    SB_DFF filter_16 (.Q(flagFilter), .C(xtalClock_c), .D(n4844));   // ../src/flags.vhd(52[3] 57[10])
    SB_DFF demux_15 (.Q(flagDemux), .C(xtalClock_c), .D(n4843));   // ../src/flags.vhd(52[3] 57[10])
    SB_DFF inverted_18 (.Q(flagInverted), .C(xtalClock_c), .D(n4842));   // ../src/flags.vhd(52[3] 57[10])
    
endmodule
//
// Verilog Description of module decoder
//

module decoder (reset_N_440, resetCmd, xtalClock_c, n1917, wrtrigval_3__N_423, 
            wrtrigval, execute, executePrev, wrtrigcfg_3__N_427, wrtrigcfg, 
            wrtrigmask_3__N_416, wrtrigmask, arm_N_438, arm, n318, 
            n4, GND_net, wrFlags, wrsize_N_434, wrsize, wrspeed_N_432, 
            wrDivider, \configRegister[27] , \cmd[35] , n6097, \configRegister[27]_adj_1 , 
            n5109, \stageRun[2] , n8518, n3670, \state[1] , n8342, 
            \stageRun[1] , n8837, n5193, n5698, \cmd[6] , \nstate_2__N_241[0] , 
            n12);
    input reset_N_440;
    output resetCmd;
    input xtalClock_c;
    input n1917;
    input [3:0]wrtrigval_3__N_423;
    output [3:0]wrtrigval;
    input execute;
    output executePrev;
    input [3:0]wrtrigcfg_3__N_427;
    output [3:0]wrtrigcfg;
    input [3:0]wrtrigmask_3__N_416;
    output [3:0]wrtrigmask;
    input arm_N_438;
    output arm;
    input n318;
    output n4;
    input GND_net;
    output wrFlags;
    input wrsize_N_434;
    output wrsize;
    input wrspeed_N_432;
    output wrDivider;
    input \configRegister[27] ;
    input \cmd[35] ;
    output n6097;
    input \configRegister[27]_adj_1 ;
    output n5109;
    input \stageRun[2] ;
    input n8518;
    input n3670;
    input \state[1] ;
    output n8342;
    input \stageRun[1] ;
    input n8837;
    output n5193;
    input n5698;
    input \cmd[6] ;
    input \nstate_2__N_241[0] ;
    input n12;
    
    wire xtalClock_c /* synthesis SET_AS_NETWORK=xtalClock_c, is_clock=1 */ ;   // ../src/la.vhd(44[3:12])
    
    wire wrFlags_N_23, n6;
    
    SB_DFFSR reset_52 (.Q(resetCmd), .C(xtalClock_c), .D(reset_N_440), 
            .R(n1917));   // ../src/decoder.vhd(65[3] 96[10])
    SB_DFFSR wrtrigval__i0 (.Q(wrtrigval[0]), .C(xtalClock_c), .D(wrtrigval_3__N_423[0]), 
            .R(n1917));   // ../src/decoder.vhd(65[3] 96[10])
    SB_DFF executePrev_36 (.Q(executePrev), .C(xtalClock_c), .D(execute));   // ../src/eia232.vhd(121[3] 133[10])
    SB_DFFSR wrtrigcfg__i0 (.Q(wrtrigcfg[0]), .C(xtalClock_c), .D(wrtrigcfg_3__N_427[0]), 
            .R(n1917));   // ../src/decoder.vhd(65[3] 96[10])
    SB_DFFSR wrtrigmask__i0 (.Q(wrtrigmask[0]), .C(xtalClock_c), .D(wrtrigmask_3__N_416[0]), 
            .R(n1917));   // ../src/decoder.vhd(65[3] 96[10])
    SB_DFFSR arm_53 (.Q(arm), .C(xtalClock_c), .D(arm_N_438), .R(n1917));   // ../src/decoder.vhd(65[3] 96[10])
    SB_LUT4 i1_2_lut (.I0(resetCmd), .I1(n318), .I2(GND_net), .I3(GND_net), 
            .O(n4));   // ../src/core.vhd(163[68:79])
    defparam i1_2_lut.LUT_INIT = 16'heeee;
    SB_DFFSR wrFlags_35 (.Q(wrFlags), .C(xtalClock_c), .D(wrFlags_N_23), 
            .R(n1917));   // ../src/eia232.vhd(121[3] 133[10])
    SB_DFFSR wrsize_55 (.Q(wrsize), .C(xtalClock_c), .D(wrsize_N_434), 
            .R(n1917));   // ../src/decoder.vhd(65[3] 96[10])
    SB_DFFSR wrspeed_54 (.Q(wrDivider), .C(xtalClock_c), .D(wrspeed_N_432), 
            .R(n1917));   // ../src/decoder.vhd(65[3] 96[10])
    SB_LUT4 i4936_3_lut (.I0(\configRegister[27] ), .I1(\cmd[35] ), .I2(wrtrigcfg[1]), 
            .I3(GND_net), .O(n6097));   // ../src/core.vhd(161[31:40])
    defparam i4936_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4935_3_lut (.I0(\configRegister[27]_adj_1 ), .I1(\cmd[35] ), 
            .I2(wrtrigcfg[2]), .I3(GND_net), .O(n5109));   // ../src/core.vhd(161[31:40])
    defparam i4935_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFSR wrtrigval__i1 (.Q(wrtrigval[1]), .C(xtalClock_c), .D(wrtrigval_3__N_423[1]), 
            .R(n1917));   // ../src/decoder.vhd(65[3] 96[10])
    SB_DFFSR wrtrigval__i2 (.Q(wrtrigval[2]), .C(xtalClock_c), .D(wrtrigval_3__N_423[2]), 
            .R(n1917));   // ../src/decoder.vhd(65[3] 96[10])
    SB_DFFSR wrtrigval__i3 (.Q(wrtrigval[3]), .C(xtalClock_c), .D(wrtrigval_3__N_423[3]), 
            .R(n1917));   // ../src/decoder.vhd(65[3] 96[10])
    SB_DFFSR wrtrigcfg__i1 (.Q(wrtrigcfg[1]), .C(xtalClock_c), .D(wrtrigcfg_3__N_427[1]), 
            .R(n1917));   // ../src/decoder.vhd(65[3] 96[10])
    SB_DFFSR wrtrigcfg__i2 (.Q(wrtrigcfg[2]), .C(xtalClock_c), .D(wrtrigcfg_3__N_427[2]), 
            .R(n1917));   // ../src/decoder.vhd(65[3] 96[10])
    SB_DFFSR wrtrigcfg__i3 (.Q(wrtrigcfg[3]), .C(xtalClock_c), .D(wrtrigcfg_3__N_427[3]), 
            .R(n1917));   // ../src/decoder.vhd(65[3] 96[10])
    SB_DFFSR wrtrigmask__i1 (.Q(wrtrigmask[1]), .C(xtalClock_c), .D(wrtrigmask_3__N_416[1]), 
            .R(n1917));   // ../src/decoder.vhd(65[3] 96[10])
    SB_DFFSR wrtrigmask__i2 (.Q(wrtrigmask[2]), .C(xtalClock_c), .D(wrtrigmask_3__N_416[2]), 
            .R(n1917));   // ../src/decoder.vhd(65[3] 96[10])
    SB_DFFSR wrtrigmask__i3 (.Q(wrtrigmask[3]), .C(xtalClock_c), .D(wrtrigmask_3__N_416[3]), 
            .R(n1917));   // ../src/decoder.vhd(65[3] 96[10])
    SB_LUT4 i17_4_lut (.I0(\stageRun[2] ), .I1(n8518), .I2(n3670), .I3(\configRegister[27]_adj_1 ), 
            .O(n6));   // ../src/core.vhd(163[68:79])
    defparam i17_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_3_lut (.I0(\state[1] ), .I1(n6), .I2(resetCmd), .I3(GND_net), 
            .O(n8342));   // ../src/core.vhd(163[68:79])
    defparam i1_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 i4931_4_lut (.I0(\stageRun[1] ), .I1(n8837), .I2(n3670), .I3(\configRegister[27] ), 
            .O(n5193));
    defparam i4931_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i3_4_lut (.I0(n5698), .I1(\cmd[6] ), .I2(\nstate_2__N_241[0] ), 
            .I3(n12), .O(wrFlags_N_23));
    defparam i3_4_lut.LUT_INIT = 16'h0020;
    
endmodule
//
// Verilog Description of module \controller(8) 
//

module \controller(8)  (xtalClock_c, resetCmd, n4884, fwd, n4883, 
            n4882, n4881, n4880, n4879, n4875, \cmd[38] , wrsize, 
            GND_net, send, debugleds_c_1, n4, sampleReady, \cmd[22] , 
            n318, \fwd[0] , \fwd[10] , \fwd[13] , \fwd[9] , \fwd[12] , 
            \fwd[8] , \cmd[39] , n3753, n1, n8196, \cmd[37] , n5170, 
            \fwd[11] , \fwd[15] , n4787, \bwd[0] , \nstate_1__N_831[0] , 
            busy, \bwd[1] , \bwd[7] , \bwd[9] , \bwd[15] , \bwd[6] , 
            \bwd[5] , \bwd[3] , \bwd[4] , \bwd[10] , \bwd[12] , \bwd[8] , 
            \bwd[11] , \bwd[2] , \bwd[13] , n4907, n4780, n4905, 
            n4904, n4903, n4902, n4901, n4900, n4899, n4898, n4897, 
            n4896, n4895, n4894, n4893, n4892, n4890, n4889, n4888, 
            n4887, n4886, n4885, VCC_net, debugleds_c_0);
    input xtalClock_c;
    input resetCmd;
    input n4884;
    output [15:0]fwd;
    input n4883;
    input n4882;
    input n4881;
    input n4880;
    input n4879;
    input n4875;
    input \cmd[38] ;
    input wrsize;
    input GND_net;
    output send;
    output debugleds_c_1;
    input n4;
    input sampleReady;
    input \cmd[22] ;
    output n318;
    output \fwd[0] ;
    output \fwd[10] ;
    output \fwd[13] ;
    output \fwd[9] ;
    output \fwd[12] ;
    output \fwd[8] ;
    input \cmd[39] ;
    input n3753;
    input n1;
    output n8196;
    input \cmd[37] ;
    output n5170;
    output \fwd[11] ;
    output \fwd[15] ;
    input n4787;
    output \bwd[0] ;
    input \nstate_1__N_831[0] ;
    input busy;
    output \bwd[1] ;
    output \bwd[7] ;
    output \bwd[9] ;
    output \bwd[15] ;
    output \bwd[6] ;
    output \bwd[5] ;
    output \bwd[3] ;
    output \bwd[4] ;
    output \bwd[10] ;
    output \bwd[12] ;
    output \bwd[8] ;
    output \bwd[11] ;
    output \bwd[2] ;
    output \bwd[13] ;
    input n4907;
    input n4780;
    input n4905;
    input n4904;
    input n4903;
    input n4902;
    input n4901;
    input n4900;
    input n4899;
    input n4898;
    input n4897;
    input n4896;
    input n4895;
    input n4894;
    input n4893;
    input n4892;
    input n4890;
    input n4889;
    input n4888;
    input n4887;
    input n4886;
    input n4885;
    input VCC_net;
    output debugleds_c_0;
    
    wire xtalClock_c /* synthesis SET_AS_NETWORK=xtalClock_c, is_clock=1 */ ;   // ../src/la.vhd(44[3:12])
    
    wire n2658;
    wire [3:0]n317;
    wire [15:0]fwd_c;   // ../src/controller.vhd(68[8:11])
    
    wire n4891, n3907, n2;
    wire [1:0]nstate_1__N_827;
    
    wire n4691, n2717;
    wire [15:0]bwd;   // ../src/controller.vhd(68[13:16])
    
    wire n4906, n2716, n331, n2718;
    wire [1:0]nstate_1__N_829;
    wire [17:0]counter;   // ../src/controller.vhd(69[18:25])
    
    wire n16, n14, n15, n13, n11, n18, n22, n21, n4_adj_986, 
        n8486, n4_adj_987, n6693;
    wire [1:0]nstate_1__N_825;
    
    wire n24, n22_adj_988, n23, n21_adj_989, n20;
    wire [17:0]ncounter_17__N_852;
    
    wire n7861, n7860, n18_adj_990, n19, n17, n29, n30, n7859, 
        n7858, n7857, n7856, n7855, n7854, n7853, n7852, n7851, 
        n7850, n7849, n7848, n7847, n7846, n7845;
    
    SB_DFFS state_FSM_i0 (.Q(n317[0]), .C(xtalClock_c), .D(n2658), .S(resetCmd));   // ../src/controller.vhd(94[3] 155[12])
    SB_DFF fwd_i0_i7 (.Q(fwd[7]), .C(xtalClock_c), .D(n4884));   // ../src/controller.vhd(161[3] 168[10])
    SB_DFF fwd_i0_i6 (.Q(fwd[6]), .C(xtalClock_c), .D(n4883));   // ../src/controller.vhd(161[3] 168[10])
    SB_DFF fwd_i0_i5 (.Q(fwd[5]), .C(xtalClock_c), .D(n4882));   // ../src/controller.vhd(161[3] 168[10])
    SB_DFF fwd_i0_i4 (.Q(fwd[4]), .C(xtalClock_c), .D(n4881));   // ../src/controller.vhd(161[3] 168[10])
    SB_DFF fwd_i0_i3 (.Q(fwd[3]), .C(xtalClock_c), .D(n4880));   // ../src/controller.vhd(161[3] 168[10])
    SB_DFF fwd_i0_i2 (.Q(fwd[2]), .C(xtalClock_c), .D(n4879));   // ../src/controller.vhd(161[3] 168[10])
    SB_DFF fwd_i0_i1 (.Q(fwd[1]), .C(xtalClock_c), .D(n4875));   // ../src/controller.vhd(161[3] 168[10])
    SB_LUT4 i4701_3_lut (.I0(fwd_c[14]), .I1(\cmd[38] ), .I2(wrsize), 
            .I3(GND_net), .O(n4891));   // ../src/core.vhd(162[19:25])
    defparam i4701_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i7641_4_lut (.I0(n3907), .I1(n2), .I2(send), .I3(nstate_1__N_827[1]), 
            .O(n4691));   // ../src/controller.vhd(83[3] 88[10])
    defparam i7641_4_lut.LUT_INIT = 16'h22a2;
    SB_LUT4 i7628_4_lut (.I0(debugleds_c_1), .I1(n4), .I2(n2717), .I3(sampleReady), 
            .O(n3907));
    defparam i7628_4_lut.LUT_INIT = 16'h3323;
    SB_LUT4 i4700_3_lut (.I0(bwd[14]), .I1(\cmd[22] ), .I2(wrsize), .I3(GND_net), 
            .O(n4906));   // ../src/core.vhd(162[19:25])
    defparam i4700_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFR state_FSM_i3 (.Q(n318), .C(xtalClock_c), .D(n2716), .R(resetCmd));   // ../src/controller.vhd(94[3] 155[12])
    SB_DFFR state_FSM_i2 (.Q(send), .C(xtalClock_c), .D(n331), .R(resetCmd));   // ../src/controller.vhd(94[3] 155[12])
    SB_DFFR state_FSM_i1 (.Q(n317[1]), .C(xtalClock_c), .D(n2718), .R(resetCmd));   // ../src/controller.vhd(94[3] 155[12])
    SB_LUT4 i1608_2_lut (.I0(n317[1]), .I1(nstate_1__N_829[0]), .I2(GND_net), 
            .I3(GND_net), .O(n2717));   // ../src/controller.vhd(94[3] 155[12])
    defparam i1608_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i4_4_lut (.I0(counter[2]), .I1(counter[4]), .I2(\fwd[0] ), 
            .I3(fwd[2]), .O(n16));   // ../src/controller.vhd(112[8:28])
    defparam i4_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i2_4_lut (.I0(counter[12]), .I1(counter[9]), .I2(\fwd[10] ), 
            .I3(fwd[7]), .O(n14));   // ../src/controller.vhd(112[8:28])
    defparam i2_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i3_4_lut (.I0(counter[15]), .I1(counter[11]), .I2(\fwd[13] ), 
            .I3(\fwd[9] ), .O(n15));   // ../src/controller.vhd(112[8:28])
    defparam i3_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i1_4_lut (.I0(counter[14]), .I1(counter[3]), .I2(\fwd[12] ), 
            .I3(fwd[1]), .O(n13));   // ../src/controller.vhd(112[8:28])
    defparam i1_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 counter_17__I_0_43_i11_2_lut (.I0(counter[10]), .I1(\fwd[8] ), 
            .I2(GND_net), .I3(GND_net), .O(n11));   // ../src/controller.vhd(112[8:28])
    defparam counter_17__I_0_43_i11_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i11_4_lut (.I0(\cmd[38] ), .I1(\cmd[39] ), .I2(n3753), .I3(n1), 
            .O(n8196));
    defparam i11_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i4696_4_lut (.I0(\cmd[37] ), .I1(\cmd[38] ), .I2(n3753), .I3(n1), 
            .O(n5170));
    defparam i4696_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i6_4_lut (.I0(counter[13]), .I1(counter[5]), .I2(\fwd[11] ), 
            .I3(fwd[3]), .O(n18));   // ../src/controller.vhd(112[8:28])
    defparam i6_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i10_4_lut (.I0(n13), .I1(n15), .I2(n14), .I3(n16), .O(n22));   // ../src/controller.vhd(112[8:28])
    defparam i10_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i9_4_lut (.I0(counter[6]), .I1(n18), .I2(n11), .I3(fwd[4]), 
            .O(n21));   // ../src/controller.vhd(112[8:28])
    defparam i9_4_lut.LUT_INIT = 16'hfdfe;
    SB_LUT4 i1_4_lut_adj_55 (.I0(\fwd[15] ), .I1(n21), .I2(counter[17]), 
            .I3(n22), .O(n4_adj_986));
    defparam i1_4_lut_adj_55.LUT_INIT = 16'hffde;
    SB_LUT4 i15_2_lut (.I0(counter[16]), .I1(fwd_c[14]), .I2(GND_net), 
            .I3(GND_net), .O(n8486));
    defparam i15_2_lut.LUT_INIT = 16'h6666;
    SB_DFF bwd_i0_i0 (.Q(\bwd[0] ), .C(xtalClock_c), .D(n4787));   // ../src/controller.vhd(161[3] 168[10])
    SB_LUT4 i1_4_lut_adj_56 (.I0(fwd[6]), .I1(n8486), .I2(counter[8]), 
            .I3(n4_adj_986), .O(n4_adj_987));   // ../src/controller.vhd(112[8:28])
    defparam i1_4_lut_adj_56.LUT_INIT = 16'hffde;
    SB_LUT4 i1_4_lut_adj_57 (.I0(n6693), .I1(fwd[5]), .I2(n4_adj_987), 
            .I3(counter[7]), .O(nstate_1__N_829[0]));   // ../src/controller.vhd(112[8:28])
    defparam i1_4_lut_adj_57.LUT_INIT = 16'hf7fd;
    SB_LUT4 i1551_4_lut (.I0(n317[0]), .I1(nstate_1__N_827[1]), .I2(\nstate_1__N_831[0] ), 
            .I3(send), .O(n2658));   // ../src/controller.vhd(94[3] 155[12])
    defparam i1551_4_lut.LUT_INIT = 16'h3b0a;
    SB_LUT4 reduce_or_89_i1_4_lut (.I0(nstate_1__N_825[0]), .I1(nstate_1__N_829[0]), 
            .I2(n318), .I3(n317[1]), .O(n331));   // ../src/controller.vhd(94[3] 155[12])
    defparam reduce_or_89_i1_4_lut.LUT_INIT = 16'h7350;
    SB_LUT4 i5529_2_lut (.I0(counter[0]), .I1(counter[1]), .I2(GND_net), 
            .I3(GND_net), .O(n6693));
    defparam i5529_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i5479_2_lut (.I0(busy), .I1(send), .I2(GND_net), .I3(GND_net), 
            .O(nstate_1__N_825[0]));
    defparam i5479_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i8_4_lut (.I0(counter[3]), .I1(counter[9]), .I2(\bwd[1] ), 
            .I3(\bwd[7] ), .O(n24));   // ../src/controller.vhd(131[8:28])
    defparam i8_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i6_4_lut_adj_58 (.I0(counter[11]), .I1(counter[17]), .I2(\bwd[9] ), 
            .I3(\bwd[15] ), .O(n22_adj_988));   // ../src/controller.vhd(131[8:28])
    defparam i6_4_lut_adj_58.LUT_INIT = 16'h7bde;
    SB_LUT4 i7_4_lut (.I0(counter[8]), .I1(counter[7]), .I2(\bwd[6] ), 
            .I3(\bwd[5] ), .O(n23));   // ../src/controller.vhd(131[8:28])
    defparam i7_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i5_4_lut (.I0(counter[5]), .I1(counter[6]), .I2(\bwd[3] ), 
            .I3(\bwd[4] ), .O(n21_adj_989));   // ../src/controller.vhd(131[8:28])
    defparam i5_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i4_4_lut_adj_59 (.I0(counter[12]), .I1(counter[14]), .I2(\bwd[10] ), 
            .I3(\bwd[12] ), .O(n20));   // ../src/controller.vhd(131[8:28])
    defparam i4_4_lut_adj_59.LUT_INIT = 16'h7bde;
    SB_LUT4 i1607_4_lut_4_lut (.I0(n318), .I1(nstate_1__N_827[1]), .I2(busy), 
            .I3(send), .O(n2716));   // ../src/controller.vhd(94[3] 155[12])
    defparam i1607_4_lut_4_lut.LUT_INIT = 16'heea0;
    SB_LUT4 add_16_19_lut (.I0(GND_net), .I1(counter[17]), .I2(GND_net), 
            .I3(n7861), .O(ncounter_17__N_852[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_16_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_16_18_lut (.I0(GND_net), .I1(counter[16]), .I2(GND_net), 
            .I3(n7860), .O(ncounter_17__N_852[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_16_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i2_4_lut_adj_60 (.I0(counter[10]), .I1(counter[13]), .I2(\bwd[8] ), 
            .I3(\bwd[11] ), .O(n18_adj_990));   // ../src/controller.vhd(131[8:28])
    defparam i2_4_lut_adj_60.LUT_INIT = 16'h7bde;
    SB_LUT4 i3_4_lut_adj_61 (.I0(counter[2]), .I1(bwd[14]), .I2(\bwd[0] ), 
            .I3(counter[16]), .O(n19));   // ../src/controller.vhd(131[8:28])
    defparam i3_4_lut_adj_61.LUT_INIT = 16'h7bde;
    SB_LUT4 i1_4_lut_adj_62 (.I0(counter[4]), .I1(counter[15]), .I2(\bwd[2] ), 
            .I3(\bwd[13] ), .O(n17));   // ../src/controller.vhd(131[8:28])
    defparam i1_4_lut_adj_62.LUT_INIT = 16'h7bde;
    SB_LUT4 i1_3_lut_4_lut (.I0(counter[0]), .I1(counter[1]), .I2(n29), 
            .I3(n30), .O(nstate_1__N_827[1]));   // ../src/controller.vhd(131[8:28])
    defparam i1_3_lut_4_lut.LUT_INIT = 16'hfff7;
    SB_LUT4 i14_4_lut (.I0(n21_adj_989), .I1(n23), .I2(n22_adj_988), .I3(n24), 
            .O(n30));   // ../src/controller.vhd(131[8:28])
    defparam i14_4_lut.LUT_INIT = 16'hfffe;
    SB_CARRY add_16_18 (.CI(n7860), .I0(counter[16]), .I1(GND_net), .CO(n7861));
    SB_LUT4 i13_4_lut (.I0(n17), .I1(n19), .I2(n18_adj_990), .I3(n20), 
            .O(n29));   // ../src/controller.vhd(131[8:28])
    defparam i13_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1609_3_lut_4_lut (.I0(n317[1]), .I1(nstate_1__N_829[0]), .I2(\nstate_1__N_831[0] ), 
            .I3(n317[0]), .O(n2718));   // ../src/controller.vhd(94[3] 155[12])
    defparam i1609_3_lut_4_lut.LUT_INIT = 16'hf888;
    SB_LUT4 add_16_17_lut (.I0(GND_net), .I1(counter[15]), .I2(GND_net), 
            .I3(n7859), .O(ncounter_17__N_852[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_16_17_lut.LUT_INIT = 16'hC33C;
    SB_DFF bwd_i0_i15 (.Q(\bwd[15] ), .C(xtalClock_c), .D(n4907));   // ../src/controller.vhd(161[3] 168[10])
    SB_CARRY add_16_17 (.CI(n7859), .I0(counter[15]), .I1(GND_net), .CO(n7860));
    SB_LUT4 add_16_16_lut (.I0(GND_net), .I1(counter[14]), .I2(GND_net), 
            .I3(n7858), .O(ncounter_17__N_852[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_16_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_16_16 (.CI(n7858), .I0(counter[14]), .I1(GND_net), .CO(n7859));
    SB_LUT4 add_16_15_lut (.I0(GND_net), .I1(counter[13]), .I2(GND_net), 
            .I3(n7857), .O(ncounter_17__N_852[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_16_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_16_15 (.CI(n7857), .I0(counter[13]), .I1(GND_net), .CO(n7858));
    SB_LUT4 add_16_14_lut (.I0(GND_net), .I1(counter[12]), .I2(GND_net), 
            .I3(n7856), .O(ncounter_17__N_852[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_16_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_16_14 (.CI(n7856), .I0(counter[12]), .I1(GND_net), .CO(n7857));
    SB_LUT4 add_16_13_lut (.I0(GND_net), .I1(counter[11]), .I2(GND_net), 
            .I3(n7855), .O(ncounter_17__N_852[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_16_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_16_13 (.CI(n7855), .I0(counter[11]), .I1(GND_net), .CO(n7856));
    SB_DFF fwd_i0_i0 (.Q(\fwd[0] ), .C(xtalClock_c), .D(n4780));   // ../src/controller.vhd(161[3] 168[10])
    SB_LUT4 add_16_12_lut (.I0(GND_net), .I1(counter[10]), .I2(GND_net), 
            .I3(n7854), .O(ncounter_17__N_852[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_16_12_lut.LUT_INIT = 16'hC33C;
    SB_DFF bwd_i0_i14 (.Q(bwd[14]), .C(xtalClock_c), .D(n4906));   // ../src/controller.vhd(161[3] 168[10])
    SB_CARRY add_16_12 (.CI(n7854), .I0(counter[10]), .I1(GND_net), .CO(n7855));
    SB_DFF bwd_i0_i13 (.Q(\bwd[13] ), .C(xtalClock_c), .D(n4905));   // ../src/controller.vhd(161[3] 168[10])
    SB_LUT4 i102_2_lut (.I0(send), .I1(n318), .I2(GND_net), .I3(GND_net), 
            .O(debugleds_c_1));   // ../src/controller.vhd(94[3] 155[12])
    defparam i102_2_lut.LUT_INIT = 16'heeee;
    SB_DFF bwd_i0_i12 (.Q(\bwd[12] ), .C(xtalClock_c), .D(n4904));   // ../src/controller.vhd(161[3] 168[10])
    SB_DFF bwd_i0_i11 (.Q(\bwd[11] ), .C(xtalClock_c), .D(n4903));   // ../src/controller.vhd(161[3] 168[10])
    SB_DFF bwd_i0_i10 (.Q(\bwd[10] ), .C(xtalClock_c), .D(n4902));   // ../src/controller.vhd(161[3] 168[10])
    SB_DFF bwd_i0_i9 (.Q(\bwd[9] ), .C(xtalClock_c), .D(n4901));   // ../src/controller.vhd(161[3] 168[10])
    SB_DFFESR counter__i17 (.Q(counter[17]), .C(xtalClock_c), .E(n3907), 
            .D(ncounter_17__N_852[17]), .R(n4691));   // ../src/controller.vhd(83[3] 88[10])
    SB_DFFESR counter__i16 (.Q(counter[16]), .C(xtalClock_c), .E(n3907), 
            .D(ncounter_17__N_852[16]), .R(n4691));   // ../src/controller.vhd(83[3] 88[10])
    SB_DFFESR counter__i15 (.Q(counter[15]), .C(xtalClock_c), .E(n3907), 
            .D(ncounter_17__N_852[15]), .R(n4691));   // ../src/controller.vhd(83[3] 88[10])
    SB_DFFESR counter__i14 (.Q(counter[14]), .C(xtalClock_c), .E(n3907), 
            .D(ncounter_17__N_852[14]), .R(n4691));   // ../src/controller.vhd(83[3] 88[10])
    SB_DFF bwd_i0_i8 (.Q(\bwd[8] ), .C(xtalClock_c), .D(n4900));   // ../src/controller.vhd(161[3] 168[10])
    SB_DFFESR counter__i13 (.Q(counter[13]), .C(xtalClock_c), .E(n3907), 
            .D(ncounter_17__N_852[13]), .R(n4691));   // ../src/controller.vhd(83[3] 88[10])
    SB_DFFESR counter__i12 (.Q(counter[12]), .C(xtalClock_c), .E(n3907), 
            .D(ncounter_17__N_852[12]), .R(n4691));   // ../src/controller.vhd(83[3] 88[10])
    SB_DFF bwd_i0_i7 (.Q(\bwd[7] ), .C(xtalClock_c), .D(n4899));   // ../src/controller.vhd(161[3] 168[10])
    SB_DFF bwd_i0_i6 (.Q(\bwd[6] ), .C(xtalClock_c), .D(n4898));   // ../src/controller.vhd(161[3] 168[10])
    SB_DFFESR counter__i11 (.Q(counter[11]), .C(xtalClock_c), .E(n3907), 
            .D(ncounter_17__N_852[11]), .R(n4691));   // ../src/controller.vhd(83[3] 88[10])
    SB_DFFESR counter__i10 (.Q(counter[10]), .C(xtalClock_c), .E(n3907), 
            .D(ncounter_17__N_852[10]), .R(n4691));   // ../src/controller.vhd(83[3] 88[10])
    SB_DFF bwd_i0_i5 (.Q(\bwd[5] ), .C(xtalClock_c), .D(n4897));   // ../src/controller.vhd(161[3] 168[10])
    SB_DFFESR counter__i9 (.Q(counter[9]), .C(xtalClock_c), .E(n3907), 
            .D(ncounter_17__N_852[9]), .R(n4691));   // ../src/controller.vhd(83[3] 88[10])
    SB_DFFESR counter__i8 (.Q(counter[8]), .C(xtalClock_c), .E(n3907), 
            .D(ncounter_17__N_852[8]), .R(n4691));   // ../src/controller.vhd(83[3] 88[10])
    SB_DFFESR counter__i7 (.Q(counter[7]), .C(xtalClock_c), .E(n3907), 
            .D(ncounter_17__N_852[7]), .R(n4691));   // ../src/controller.vhd(83[3] 88[10])
    SB_DFF bwd_i0_i4 (.Q(\bwd[4] ), .C(xtalClock_c), .D(n4896));   // ../src/controller.vhd(161[3] 168[10])
    SB_DFFESR counter__i6 (.Q(counter[6]), .C(xtalClock_c), .E(n3907), 
            .D(ncounter_17__N_852[6]), .R(n4691));   // ../src/controller.vhd(83[3] 88[10])
    SB_DFFESR counter__i5 (.Q(counter[5]), .C(xtalClock_c), .E(n3907), 
            .D(ncounter_17__N_852[5]), .R(n4691));   // ../src/controller.vhd(83[3] 88[10])
    SB_DFF bwd_i0_i3 (.Q(\bwd[3] ), .C(xtalClock_c), .D(n4895));   // ../src/controller.vhd(161[3] 168[10])
    SB_DFF bwd_i0_i2 (.Q(\bwd[2] ), .C(xtalClock_c), .D(n4894));   // ../src/controller.vhd(161[3] 168[10])
    SB_DFFESR counter__i4 (.Q(counter[4]), .C(xtalClock_c), .E(n3907), 
            .D(ncounter_17__N_852[4]), .R(n4691));   // ../src/controller.vhd(83[3] 88[10])
    SB_DFFESR counter__i3 (.Q(counter[3]), .C(xtalClock_c), .E(n3907), 
            .D(ncounter_17__N_852[3]), .R(n4691));   // ../src/controller.vhd(83[3] 88[10])
    SB_DFFESR counter__i2 (.Q(counter[2]), .C(xtalClock_c), .E(n3907), 
            .D(ncounter_17__N_852[2]), .R(n4691));   // ../src/controller.vhd(83[3] 88[10])
    SB_DFF bwd_i0_i1 (.Q(\bwd[1] ), .C(xtalClock_c), .D(n4893));   // ../src/controller.vhd(161[3] 168[10])
    SB_DFFESR counter__i1 (.Q(counter[1]), .C(xtalClock_c), .E(n3907), 
            .D(ncounter_17__N_852[1]), .R(n4691));   // ../src/controller.vhd(83[3] 88[10])
    SB_DFF fwd_i0_i15 (.Q(\fwd[15] ), .C(xtalClock_c), .D(n4892));   // ../src/controller.vhd(161[3] 168[10])
    SB_DFF fwd_i0_i14 (.Q(fwd_c[14]), .C(xtalClock_c), .D(n4891));   // ../src/controller.vhd(161[3] 168[10])
    SB_DFF fwd_i0_i13 (.Q(\fwd[13] ), .C(xtalClock_c), .D(n4890));   // ../src/controller.vhd(161[3] 168[10])
    SB_DFF fwd_i0_i12 (.Q(\fwd[12] ), .C(xtalClock_c), .D(n4889));   // ../src/controller.vhd(161[3] 168[10])
    SB_DFF fwd_i0_i11 (.Q(\fwd[11] ), .C(xtalClock_c), .D(n4888));   // ../src/controller.vhd(161[3] 168[10])
    SB_DFF fwd_i0_i10 (.Q(\fwd[10] ), .C(xtalClock_c), .D(n4887));   // ../src/controller.vhd(161[3] 168[10])
    SB_DFFESR counter__i0 (.Q(counter[0]), .C(xtalClock_c), .E(n3907), 
            .D(ncounter_17__N_852[0]), .R(n4691));   // ../src/controller.vhd(83[3] 88[10])
    SB_DFF fwd_i0_i9 (.Q(\fwd[9] ), .C(xtalClock_c), .D(n4886));   // ../src/controller.vhd(161[3] 168[10])
    SB_DFF fwd_i0_i8 (.Q(\fwd[8] ), .C(xtalClock_c), .D(n4885));   // ../src/controller.vhd(161[3] 168[10])
    SB_LUT4 add_16_11_lut (.I0(GND_net), .I1(counter[9]), .I2(GND_net), 
            .I3(n7853), .O(ncounter_17__N_852[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_16_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_16_11 (.CI(n7853), .I0(counter[9]), .I1(GND_net), .CO(n7854));
    SB_LUT4 add_16_10_lut (.I0(GND_net), .I1(counter[8]), .I2(GND_net), 
            .I3(n7852), .O(ncounter_17__N_852[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_16_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_16_10 (.CI(n7852), .I0(counter[8]), .I1(GND_net), .CO(n7853));
    SB_LUT4 add_16_9_lut (.I0(GND_net), .I1(counter[7]), .I2(GND_net), 
            .I3(n7851), .O(ncounter_17__N_852[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_16_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_16_9 (.CI(n7851), .I0(counter[7]), .I1(GND_net), .CO(n7852));
    SB_LUT4 add_16_8_lut (.I0(GND_net), .I1(counter[6]), .I2(GND_net), 
            .I3(n7850), .O(ncounter_17__N_852[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_16_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_16_8 (.CI(n7850), .I0(counter[6]), .I1(GND_net), .CO(n7851));
    SB_LUT4 add_16_7_lut (.I0(GND_net), .I1(counter[5]), .I2(GND_net), 
            .I3(n7849), .O(ncounter_17__N_852[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_16_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_16_7 (.CI(n7849), .I0(counter[5]), .I1(GND_net), .CO(n7850));
    SB_LUT4 add_16_6_lut (.I0(GND_net), .I1(counter[4]), .I2(GND_net), 
            .I3(n7848), .O(ncounter_17__N_852[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_16_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_16_6 (.CI(n7848), .I0(counter[4]), .I1(GND_net), .CO(n7849));
    SB_LUT4 add_16_5_lut (.I0(GND_net), .I1(counter[3]), .I2(GND_net), 
            .I3(n7847), .O(ncounter_17__N_852[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_16_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_16_5 (.CI(n7847), .I0(counter[3]), .I1(GND_net), .CO(n7848));
    SB_LUT4 add_16_4_lut (.I0(GND_net), .I1(counter[2]), .I2(GND_net), 
            .I3(n7846), .O(ncounter_17__N_852[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_16_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_16_4 (.CI(n7846), .I0(counter[2]), .I1(GND_net), .CO(n7847));
    SB_LUT4 add_16_3_lut (.I0(GND_net), .I1(counter[1]), .I2(GND_net), 
            .I3(n7845), .O(ncounter_17__N_852[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_16_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_16_3 (.CI(n7845), .I0(counter[1]), .I1(GND_net), .CO(n7846));
    SB_LUT4 add_16_2_lut (.I0(GND_net), .I1(counter[0]), .I2(GND_net), 
            .I3(VCC_net), .O(ncounter_17__N_852[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_16_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1605_3_lut (.I0(send), .I1(n318), .I2(n317[1]), .I3(GND_net), 
            .O(debugleds_c_0));   // ../src/controller.vhd(94[3] 155[12])
    defparam i1605_3_lut.LUT_INIT = 16'hdcdc;
    SB_CARRY add_16_2 (.CI(VCC_net), .I0(counter[0]), .I1(GND_net), .CO(n7845));
    SB_LUT4 i5504_3_lut_4_lut (.I0(send), .I1(n318), .I2(sampleReady), 
            .I3(n2717), .O(n2));
    defparam i5504_3_lut_4_lut.LUT_INIT = 16'hfeee;
    
endmodule
