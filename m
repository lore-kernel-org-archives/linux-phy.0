Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DAD56E7718A
	for <linux-phy@archiver.kernel.org>; Fri, 20 Dec 2024 06:11:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CEiyuD1qToWTu5rRSsTKs3ThfR52/BgBMhXjBPK7U5o=; b=zaqrpsUKXGF/i8
	F0Zu0zo+/RQJTXcsxOsFL2fEDI3927k1u2ZGrAeKeD85+9diF9AlnP+FGiiZGySnIARf1navxMqwo
	OS0T65OzDCM1Z8OCNVJLtiFDg3DhMMonpOW6Omsk/67cIQl5mShbuq3ru42/DpNEKCD1kYnq7TV4l
	PF+yrVtWtVIP/NGuu5qHOpJ3acXN1TiDcIsSKneD7YB0TV0c/cZFRSFVyl3MRJ3Dfo1AVrR078/43
	R0gOXNnaj2h7HQ9/uA1FAsMBXmTHmQk1/Vgjc787mlolLfjnSScRQZv+VxUDVqUpy6SvL2sPzk84b
	2TtAOoVBfzojWvXP/tkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOWE5-000000043Br-2t8K;
	Fri, 20 Dec 2024 06:11:06 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOWCy-0000000432j-2DJ9
	for linux-phy@lists.infradead.org;
	Fri, 20 Dec 2024 06:09:57 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BK45a5j028900;
	Fri, 20 Dec 2024 06:09:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8U7tneMvbmJGLnzZtcRMnfor+X1SskoicqA/MrREYr8=; b=Of4RG8Jx0tTTPPBU
	z8KGWKOAlAtCZS2ZzZj28cF0FZtquY/cuaRDEJ+DusvEBYPfXEHCFUxTb86sCmbA
	87LrYFh+HKBOHnyojVFAxqT1S/rusMwzt2XXhMaN7+Gf/Z4FlWrjIZN+nyw4t82m
	BnJ5fZawW/gapa44ceJ08+5kBhtQ9XcHFwI2+amr1eDcNSr/U/+ldwLqZ0UzNwYX
	l9Xxa25Hht0DDyXCgEEMhj1DRWjQkU7k0NDBKwV0PBv4qSMuL8Da8EAQIm0C7R95
	bMez9ID5lvynWiv78B562M/RtFdL5Mtk044z/a3quZyPYLHuPP9eNA7cExM3TBbr
	qqfurg==
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43mntf1w6n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 20 Dec 2024 06:09:44 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4BK69hH4017136
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 20 Dec 2024 06:09:43 GMT
Received: from [10.152.195.140] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Thu, 19 Dec
 2024 22:09:37 -0800
Message-ID: <3ac003e7-7a3c-4769-8a3f-462bb7389b23@quicinc.com>
Date: Fri, 20 Dec 2024 11:39:34 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: qcom: ipq5424: Add PCIe PHYs and
 controller nodes
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, <bhelgaas@google.com>,
        <lpieralisi@kernel.org>, <kw@linux.com>,
        <manivannan.sadhasivam@linaro.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <andersson@kernel.org>, <konradybcio@kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-pci@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>
CC: <quic_srichara@quicinc.com>, <quic_varada@quicinc.com>
References: <20241213134950.234946-1-quic_mmanikan@quicinc.com>
 <20241213134950.234946-4-quic_mmanikan@quicinc.com>
 <69dffe54-939d-47c3-b951-4a4dea11eae0@oss.qualcomm.com>
Content-Language: en-US
From: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
In-Reply-To: <69dffe54-939d-47c3-b951-4a4dea11eae0@oss.qualcomm.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: N3rM-ti90XKfeauLnvSnhujJtDIwYB4n
X-Proofpoint-ORIG-GUID: N3rM-ti90XKfeauLnvSnhujJtDIwYB4n
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 suspectscore=0
 impostorscore=0 adultscore=0 priorityscore=1501 bulkscore=0
 lowpriorityscore=0 clxscore=1015 mlxscore=0 malwarescore=0 mlxlogscore=999
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412200050
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241219_220956_577563_84000536 
X-CRM114-Status: GOOD (  18.27  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org



On 12/13/2024 8:36 PM, Konrad Dybcio wrote:
> On 13.12.2024 2:49 PM, Manikanta Mylavarapu wrote:
>> Add PCIe0, PCIe1, PCIe2, PCIe3 (and corresponding PHY) devices
>> found on IPQ5424 platform. The PCIe0 & PCIe1 are 1-lane Gen3
>> host whereas PCIe2 & PCIe3 are 2-lane Gen3 host.
>>
>> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
>> ---
>>  arch/arm64/boot/dts/qcom/ipq5424.dtsi | 482 +++++++++++++++++++++++++-
>>  1 file changed, 477 insertions(+), 5 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/ipq5424.dtsi b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
>> index 5e219f900412..ade512bcb180 100644
>> --- a/arch/arm64/boot/dts/qcom/ipq5424.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
>> @@ -9,6 +9,7 @@
>>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>>  #include <dt-bindings/clock/qcom,ipq5424-gcc.h>
>>  #include <dt-bindings/reset/qcom,ipq5424-gcc.h>
>> +#include <dt-bindings/interconnect/qcom,ipq5424.h>
>>  #include <dt-bindings/gpio/gpio.h>
>>  
>>  / {
>> @@ -143,7 +144,99 @@ soc@0 {
>>  		compatible = "simple-bus";
>>  		#address-cells = <2>;
>>  		#size-cells = <2>;
>> -		ranges = <0 0 0 0 0x10 0>;
>> +		ranges = <0 0 0 0 0x0 0xffffffff>;
> 
> This must be a separate change, with a clear explanation
> 

Thank you for reviewing the patch.
Okay, sure.

>> +
>> +		pcie0_phy: phy@84000 {
>> +			compatible = "qcom,ipq5424-qmp-gen3x1-pcie-phy",
>> +				     "qcom,ipq9574-qmp-gen3x1-pcie-phy";
>> +			reg = <0 0x00084000 0 0x2000>;
>> +			clocks = <&gcc GCC_PCIE0_AUX_CLK>,
>> +				 <&gcc GCC_PCIE0_AHB_CLK>,
>> +				 <&gcc GCC_PCIE0_PIPE_CLK>;
>> +			clock-names = "aux", "cfg_ahb", "pipe";
>> +
>> +			assigned-clocks = <&gcc GCC_PCIE0_AUX_CLK>;
>> +			assigned-clock-rates = <20000000>;
>> +
>> +			resets = <&gcc GCC_PCIE0_PHY_BCR>,
>> +				 <&gcc GCC_PCIE0PHY_PHY_BCR>;
>> +			reset-names = "phy", "common";
>> +
>> +			#clock-cells = <0>;
>> +			clock-output-names = "gcc_pcie0_pipe_clk_src";
>> +
>> +			#phy-cells = <0>;
>> +			status = "disabled";
>> +		};
>> +
>> +		pcie1_phy: phy@8c000 {
>> +			compatible = "qcom,ipq5424-qmp-gen3x1-pcie-phy",
>> +				     "qcom,ipq9574-qmp-gen3x1-pcie-phy";
>> +			reg = <0 0x0008c000 0 0x2000>;
>> +			clocks = <&gcc GCC_PCIE1_AUX_CLK>,
>> +				 <&gcc GCC_PCIE1_AHB_CLK>,
>> +				 <&gcc GCC_PCIE1_PIPE_CLK>;
>> +			clock-names = "aux", "cfg_ahb", "pipe";
>> +
>> +			assigned-clocks = <&gcc GCC_PCIE1_AUX_CLK>;
>> +			assigned-clock-rates = <20000000>;
>> +
>> +			resets = <&gcc GCC_PCIE1_PHY_BCR>,
>> +				 <&gcc GCC_PCIE1PHY_PHY_BCR>;
>> +			reset-names = "phy", "common";
>> +
>> +			#clock-cells = <0>;
>> +			clock-output-names = "gcc_pcie1_pipe_clk_src";
>> +
>> +			#phy-cells = <0>;
>> +			status = "disabled";
>> +		};
>> +
>> +		pcie2_phy: phy@f4000 {
>> +			compatible = "qcom,ipq5424-qmp-gen3x2-pcie-phy",
>> +				     "qcom,ipq9574-qmp-gen3x2-pcie-phy";
>> +			reg = <0 0x000f4000 0 0x2000>;
>> +			clocks = <&gcc GCC_PCIE2_AUX_CLK>,
>> +				 <&gcc GCC_PCIE2_AHB_CLK>,
>> +				 <&gcc GCC_PCIE2_PIPE_CLK>;
>> +			clock-names = "aux", "cfg_ahb", "pipe";
>> +
>> +			assigned-clocks = <&gcc GCC_PCIE2_AUX_CLK>;
>> +			assigned-clock-rates = <20000000>;
>> +
>> +			resets = <&gcc GCC_PCIE2_PHY_BCR>,
>> +				 <&gcc GCC_PCIE2PHY_PHY_BCR>;
>> +			reset-names = "phy", "common";
>> +
>> +			#clock-cells = <0>;
>> +			clock-output-names = "gcc_pcie2_pipe_clk_src";
>> +
>> +			#phy-cells = <0>;
>> +			status = "disabled";
>> +		};
>> +
>> +		pcie3_phy: phy@fc000 {
>> +			compatible = "qcom,ipq5424-qmp-gen3x2-pcie-phy",
>> +				     "qcom,ipq9574-qmp-gen3x2-pcie-phy";
>> +			reg = <0 0x000fc000 0 0x2000>;
>> +			clocks = <&gcc GCC_PCIE3_AUX_CLK>,
>> +				 <&gcc GCC_PCIE3_AHB_CLK>,
>> +				 <&gcc GCC_PCIE3_PIPE_CLK>;
>> +			clock-names = "aux", "cfg_ahb", "pipe";
>> +
>> +			assigned-clocks = <&gcc GCC_PCIE3_AUX_CLK>;
>> +			assigned-clock-rates = <20000000>;
>> +
>> +			resets = <&gcc GCC_PCIE3_PHY_BCR>,
>> +				 <&gcc GCC_PCIE3PHY_PHY_BCR>;
>> +			reset-names = "phy", "common";
>> +
>> +			#clock-cells = <0>;
>> +			clock-output-names = "gcc_pcie3_pipe_clk_src";
>> +
>> +			#phy-cells = <0>;
>> +			status = "disabled";
>> +		};
>>  
>>  		tlmm: pinctrl@1000000 {
>>  			compatible = "qcom,ipq5424-tlmm";
>> @@ -168,11 +261,11 @@ gcc: clock-controller@1800000 {
>>  			reg = <0 0x01800000 0 0x40000>;
>>  			clocks = <&xo_board>,
>>  				 <&sleep_clk>,
>> +				 <&pcie0_phy>,
>> +				 <&pcie1_phy>,
>>  				 <0>,
> 
> This leftover zero needs to be removed too, currently the wrong
> clocks are used as parents
> 
>> -				 <0>,
>> -				 <0>,
>> -				 <0>,
>> -				 <0>;
>> +				 <&pcie2_phy>,
>> +				 <&pcie3_phy>;
>>  			#clock-cells = <1>;
>>  			#reset-cells = <1>;
>>  			#interconnect-cells = <1>;
>> @@ -292,6 +385,385 @@ frame@f42d000 {
>>  			};
>>  		};
>>  
>> +		pcie3: pcie@40000000 {
>> +			compatible = "qcom,pcie-ipq5424",
>> +				     "qcom,pcie-ipq9574";
>> +			reg = <0 0x40000000 0 0xf1d>,
>> +			      <0 0x40000f20 0 0xa8>,
>> +			      <0 0x40001000 0 0x1000>,
>> +			      <0 0x000f8000 0 0x3000>,
>> +			      <0 0x40100000 0 0x1000>;
>> +			reg-names = "dbi", "elbi", "atu", "parf", "config";
> 
> Please make this a vertical list, in all nodes
> 

Okay, sure.

> [...]
> 
>> +			phys = <&pcie3_phy>;
>> +			phy-names = "pciephy";
>> +			interconnects = <&gcc MASTER_ANOC_PCIE3 &gcc SLAVE_ANOC_PCIE3>,
>> +					<&gcc MASTER_CNOC_PCIE3 &gcc SLAVE_CNOC_PCIE3>;
>> +			interconnect-names = "pcie-mem", "cpu-pcie";
>> +			status = "disabled";
> 
> And add a newline above status

Okay, sure.

Thanks & Regards,
Manikanta.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
