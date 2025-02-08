Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 026E1C02198
	for <linux-phy@archiver.kernel.org>; Sat,  8 Feb 2025 19:18:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OO9FDVOwLaciZJqceGFfzzzpvBUfAwNiz5Ej0llou7A=; b=vkX7btBpb3woyN
	rG7loGlzuvvnSGVFzRUO8qGP/UXqQQ4+Fz1TrAoLQJtM0l+lf2nZKt1/Y16/SSIuseQWz/TiqCgpa
	7/OVJi8M3Bru/t93ef9X7vlpVg+D2vYxR3zxQcDq1JRIyv03cuEuMOg8u4xtpUp+FfYoBFp8SLYaE
	Auzxfjc7TWNrbuqDXSvA4umy7s/i/OJMsIML/0NBBirve3ZrlO6t6mtKTITWJj4oF4fkS9ZzUZ5gK
	sSfWAmdxISrlKcbODppnKWmmxFoVzxOp66EWGtV88MVZgjvEuHKAPHSGPcMDewypjr+odguzLntpg
	KJc9p6lNnS7P3MNN6OAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgqLW-0000000DQJ7-2Zne;
	Sat, 08 Feb 2025 19:18:30 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgqLT-0000000DQHB-1n2F
	for linux-phy@lists.infradead.org;
	Sat, 08 Feb 2025 19:18:29 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 518JHspA014951;
	Sat, 8 Feb 2025 19:18:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	N9IY6xAkgcl+dzkucgeRtwv5Q9qiGeswZuCATj1aeE4=; b=e2dWfyZi5vSyMQbD
	r5ya7xsAnuOUAJE2RKs6tp09Xg9FrPDyB9cDcPTbBL4F2P81CE1AJUy01+BNm9Rk
	Fe2Ea3PVRKA2TBlzlok9Ff8A4QkKJb2Kp8qZBgJCfCu2FYV+AnwbR4mp/9CISKpN
	wov50/JVzqlAsc9XVsyiXla8H33NoS7rsiJD/sivWYNbvlUjuMLhnoBHZ6SMCsX4
	X7o/wbsNAFxPArcRAT45VSAfrgTRBqqcuk9x+Ro1HP+GEO45JgGS+CK7rbcn4OWa
	nQu98ffvTx0XzJabDUwd8lGDmXUeVtzT2Wn8GjG2/ru42dM/R6nOeUaNcja+xkv5
	d2CA4g==
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44p0dx93d9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 08 Feb 2025 19:18:10 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 518JI8gX002434
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 8 Feb 2025 19:18:09 GMT
Received: from [10.216.46.73] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Sat, 8 Feb 2025
 11:18:00 -0800
Message-ID: <be8a4f65-3b36-4740-a4f7-312126cfd547@quicinc.com>
Date: Sun, 9 Feb 2025 00:47:56 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] arm64: dts: qcom: sm8750: Add UFS nodes for SM8750
 SoC
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Melody Olvera
	<quic_molvera@quicinc.com>
CC: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam
	<manivannan.sadhasivam@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Satya Durga Srinivasu Prabhala
	<quic_satyap@quicinc.com>,
        Trilok Soni <quic_tsoni@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-scsi@vger.kernel.org>,
        Manish Pandey <quic_mapa@quicinc.com>
References: <20250113-sm8750_ufs_master-v1-0-b3774120eb8c@quicinc.com>
 <20250113-sm8750_ufs_master-v1-4-b3774120eb8c@quicinc.com>
 <vifyx2lcaq3lhani5ovmxxqsknhkx24ggbu7sxnulrxv4gxzsk@bvmk3znm2ivl>
Content-Language: en-US
From: Nitin Rawat <quic_nitirawa@quicinc.com>
In-Reply-To: <vifyx2lcaq3lhani5ovmxxqsknhkx24ggbu7sxnulrxv4gxzsk@bvmk3znm2ivl>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: H7MMEz91xnntvLV_dF1Nb-28qP3oy1uj
X-Proofpoint-ORIG-GUID: H7MMEz91xnntvLV_dF1Nb-28qP3oy1uj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-08_08,2025-02-07_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999
 impostorscore=0 malwarescore=0 priorityscore=1501 suspectscore=0
 clxscore=1015 mlxscore=0 bulkscore=0 lowpriorityscore=0 adultscore=0
 phishscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502080163
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250208_111827_598448_5C9B2235 
X-CRM114-Status: GOOD (  16.65  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org



On 1/14/2025 4:22 PM, Dmitry Baryshkov wrote:
> On Mon, Jan 13, 2025 at 01:46:27PM -0800, Melody Olvera wrote:
>> From: Nitin Rawat <quic_nitirawa@quicinc.com>
>>
>> Add UFS host controller and PHY nodes for SM8750 SoC.
>>
>> Co-developed-by: Manish Pandey <quic_mapa@quicinc.com>
>> Signed-off-by: Manish Pandey <quic_mapa@quicinc.com>
>> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
>> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
>> ---
>>   arch/arm64/boot/dts/qcom/sm8750.dtsi | 81 ++++++++++++++++++++++++++++++++++++
>>   1 file changed, 81 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
>> index 3bbd7d18598ee0a3a0d5130c03a3166e1fc14d82..20690c102244b337847a6482dd83c37e19746de9 100644
>> --- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
>> @@ -13,6 +13,7 @@
>>   #include <dt-bindings/power/qcom,rpmhpd.h>
>>   #include <dt-bindings/power/qcom-rpmpd.h>
>>   #include <dt-bindings/soc/qcom,rpmh-rsc.h>
>> +#include <dt-bindings/gpio/gpio.h>
>>   
>>   / {
>>   	interrupt-parent = <&intc>;
>> @@ -1939,6 +1940,86 @@ mmss_noc: interconnect@1780000 {
>>   			#interconnect-cells = <2>;
>>   		};
>>   
>> +		ufs_mem_phy: phy@1d80000 {
>> +			compatible = "qcom,sm8750-qmp-ufs-phy";
>> +			reg = <0x0 0x01d80000 0x0 0x2000>;
>> +
>> +			clocks = <&rpmhcc RPMH_CXO_CLK>,
>> +				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
>> +				 <&tcsrcc TCSR_UFS_CLKREF_EN>;
>> +			clock-names =	"ref",
>> +					"ref_aux",
>> +					"qref";
>> +
>> +			resets = <&ufs_mem_hc 0>;
>> +			reset-names = "ufsphy";
>> +
>> +			power-domains = <&gcc GCC_UFS_MEM_PHY_GDSC>;
>> +
>> +			#clock-cells = <1>;
>> +			#phy-cells = <0>;
>> +
>> +			status = "disabled";
>> +		};
>> +
>> +		ufs_mem_hc: ufs@1d84000 {
>> +			compatible = "qcom,sm8750-ufshc", "qcom,ufshc", "jedec,ufs-2.0";
>> +			reg = <0x0 0x01d84000 0x0 0x3000>;
>> +
>> +			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
>> +
>> +			clocks = <&gcc GCC_UFS_PHY_AXI_CLK>,
>> +				 <&gcc GCC_AGGRE_UFS_PHY_AXI_CLK>,
>> +				 <&gcc GCC_UFS_PHY_AHB_CLK>,
>> +				 <&gcc GCC_UFS_PHY_UNIPRO_CORE_CLK>,
>> +				 <&rpmhcc RPMH_LN_BB_CLK3>,
>> +				 <&gcc GCC_UFS_PHY_TX_SYMBOL_0_CLK>,
>> +				 <&gcc GCC_UFS_PHY_RX_SYMBOL_0_CLK>,
>> +				 <&gcc GCC_UFS_PHY_RX_SYMBOL_1_CLK>;
>> +			clock-names = "core_clk",
>> +				      "bus_aggr_clk",
>> +				      "iface_clk",
>> +				      "core_clk_unipro",
>> +				      "ref_clk",
>> +				      "tx_lane0_sync_clk",
>> +				      "rx_lane0_sync_clk",
>> +				      "rx_lane1_sync_clk";
>> +			freq-table-hz = <100000000 403000000>,
>> +					<0 0>,
>> +					<0 0>,
>> +					<100000000 403000000>,
>> +					<100000000 403000000>,
>> +					<0 0>,
>> +					<0 0>,
>> +					<0 0>;
> 
> Use OPP table instead

Currently, OPP is not enabled in the device tree for any previous 
targets. I plan to enable OPP in a separate patch at a later stage. This 
is because there is an ongoing patch in the upstream that aims to enable 
multiple-level clock scaling using OPP, which may introduce changes to 
the device tree entries. To avoid extra efforts, I intend to enable OPP 
once that patch is merged.
Please let me know if you have any concerns.


> 
>> +
>> +			resets = <&gcc GCC_UFS_PHY_BCR>;
>> +			reset-names = "rst";
>> +
>> +
>> +			interconnects = <&aggre1_noc MASTER_UFS_MEM QCOM_ICC_TAG_ALWAYS
>> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
>> +					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
>> +					 &config_noc SLAVE_UFS_MEM_CFG QCOM_ICC_TAG_ALWAYS>;
> 
> Shouldn't cpu-ufs be ACTIVE_ONLY?

As per ufs driver implementation, Icc voting from ufs driver is removed 
as part of low power mode (suspend or clock gating) and voted again in 
resume/ungating path. Hence TAG_ALWAYS will have no power concern.
All previous targets have the same configuration.

Thanks,
Nitin


> 
>> +			interconnect-names = "ufs-ddr",
>> +					     "cpu-ufs";
>> +
>> +			power-domains = <&gcc GCC_UFS_PHY_GDSC>;
>> +			required-opps = <&rpmhpd_opp_nom>;
>> +
>> +			iommus = <&apps_smmu 0x60 0>;
>> +			dma-coherent;
>> +
>> +			lanes-per-direction = <2>;
>> +
>> +			phys = <&ufs_mem_phy>;
>> +			phy-names = "ufsphy";
>> +
>> +			#reset-cells = <1>;
>> +
>> +			status = "disabled";
>> +		};
>> +
>>   		tcsr_mutex: hwlock@1f40000 {
>>   			compatible = "qcom,tcsr-mutex";
>>   			reg = <0x0 0x01f40000 0x0 0x20000>;
>>
>> -- 
>> 2.46.1
>>
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
