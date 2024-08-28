Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE628C54FB3
	for <linux-phy@archiver.kernel.org>; Wed, 28 Aug 2024 13:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VX5bL3R9nXzISt6R1AYEd54/oINF4FvywInmhr1pb5U=; b=RXleFvOIwdUcTb
	UPY21cIRJBIkVr0VneKar5aaRfdHzCQSPoeSvxkcipPYj18szr9WBuuP6Q2SSDdiRyFlyHD5cZ3bb
	lDwAMdIxsx57zU/fQdQ8bHo7EbDgduHP/zCCoAIdxci9jRrgJLG4aFI0snbK+hh4831O+h2CE+MdA
	oltRWGaVdwqa800ehJWWyJjJMy2U/ra4kTUm4ClPbAXOm/pV95aOEyIc+puUieY0pA5dogux3F7iT
	7+WdmGt6clxdX8fywtfXjzXIwEaUnUBQjGSRf868oJ0O4CKVNUwpOo8JmfqxxRghBzRg5WEpR0m1L
	UxI9mM7176vtd6KS99tQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjIqf-0000000FYUD-0dbL;
	Wed, 28 Aug 2024 13:36:33 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjIqR-0000000FYRs-1syK
	for linux-phy@lists.infradead.org;
	Wed, 28 Aug 2024 13:36:31 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 47SBCC0U021403;
	Wed, 28 Aug 2024 13:36:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cQ7/3Ropv1Nl9QK4196zcJdjGoBOVhoCU+BCUWzK6p8=; b=A6Tddr40hWSIn9DS
	oN3F44NwoEfJvRUkLEiVJXjyk0CUF6TOGd5m2nIqjblracaCXITyayznpa1E/M4u
	OYAgHW26yHH7Qu2N9ncfLgVXlCukwft4sgrqItjzfCTS7OOAmDdzBobDVRmlpQSR
	sW2sg1DBLqMvJK42cxVxswO4668ET2PfbKys3S4xwJuT7+VZUteBtqVkyf9Bhh2S
	Q/XyXepF8AQk/B4vkW5yd01kxUNm7g22Jri1M6hnhnFGaqd9Iuo4n+V7yloRuRGe
	rAcxae4s87ZrAWMoywYeDEG8M9giJiQq+nLs/oEnNhGrDPtisz2afBjQa3mZpu+2
	JnX80g==
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 419pv09vmd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 28 Aug 2024 13:36:10 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 47SDa9HP017213
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 28 Aug 2024 13:36:09 GMT
Received: from [10.253.39.71] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Wed, 28 Aug
 2024 06:36:03 -0700
Message-ID: <ffbeb834-c56a-40b2-b9d6-f03149a1a37b@quicinc.com>
Date: Wed, 28 Aug 2024 21:36:01 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/8] arm64: dts: qcom: x1e80100: Add support for PCIe3 on
 x1e80100
To: Konrad Dybcio <konradybcio@kernel.org>, <manivannan.sadhasivam@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <robh@kernel.org>,
        <andersson@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <mturquette@baylibre.com>, <sboyd@kernel.org>, <abel.vesa@linaro.org>,
        <quic_msarkar@quicinc.com>, <quic_devipriy@quicinc.com>
CC: <dmitry.baryshkov@linaro.org>, <kw@linux.com>, <lpieralisi@kernel.org>,
        <neil.armstrong@linaro.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-clk@vger.kernel.org>
References: <20240827063631.3932971-1-quic_qianyu@quicinc.com>
 <20240827063631.3932971-5-quic_qianyu@quicinc.com>
 <41d4bc67-e47c-4b6e-a620-b83f48f43103@kernel.org>
Content-Language: en-US
From: Qiang Yu <quic_qianyu@quicinc.com>
In-Reply-To: <41d4bc67-e47c-4b6e-a620-b83f48f43103@kernel.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: JKOU2cBt8uWVtRrpXqJMDQ2DBAV-R2Gy
X-Proofpoint-ORIG-GUID: JKOU2cBt8uWVtRrpXqJMDQ2DBAV-R2Gy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-08-28_05,2024-08-27_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 clxscore=1015
 priorityscore=1501 impostorscore=0 suspectscore=0 lowpriorityscore=0
 malwarescore=0 spamscore=0 mlxlogscore=999 mlxscore=0 bulkscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2407110000 definitions=main-2408280097
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_063619_671341_C13C293D 
X-CRM114-Status: GOOD (  19.74  )
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


On 8/27/2024 6:42 PM, Konrad Dybcio wrote:
> On 27.08.2024 8:36 AM, Qiang Yu wrote:
>> Describe PCIe3 controller and PHY. Also add required system resources like
>> regulators, clocks, interrupts and registers configuration for PCIe3.
>>
>> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
>> ---
>>   arch/arm64/boot/dts/qcom/x1e80100.dtsi | 205 ++++++++++++++++++++++++-
>>   1 file changed, 204 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
>> index 74b694e74705..55b81e7de1c7 100644
>> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
>> @@ -744,7 +744,7 @@ gcc: clock-controller@100000 {
>>   
>>   			clocks = <&bi_tcxo_div2>,
>>   				 <&sleep_clk>,
>> -				 <0>,
>> +				 <&pcie3_phy>,
>>   				 <&pcie4_phy>,
>>   				 <&pcie5_phy>,
>>   				 <&pcie6a_phy>,
>> @@ -2879,6 +2879,209 @@ mmss_noc: interconnect@1780000 {
>>   			#interconnect-cells = <2>;
>>   		};
>>   
>> +		pcie3: pci@1bd0000 {
>> +			device_type = "pci";
>> +			compatible = "qcom,pcie-x1e80100";
>> +			reg = <0 0x01bd0000 0 0x3000>,
>> +			      <0 0x78000000 0 0xf1d>,
>> +			      <0 0x78000f40 0 0xa8>,
>> +			      <0 0x78001000 0 0x1000>,
>> +			      <0 0x78100000 0 0x100000>;
>> +			reg-names = "parf",
>> +				    "dbi",
>> +				    "elbi",
>> +				    "atu",
>> +				    "config";
> There's a "mhi" region at 0x01bd3000, 0x1000-wide too, please add it
>
>> +			#address-cells = <3>;
>> +			#size-cells = <2>;
>> +			ranges = <0x01000000 0 0x00000000 0 0x78200000 0 0x100000>,
>> +				 <0x02000000 0 0x78300000 0 0x78300000 0 0x3d00000>;
> There's 64bit BAR space as well:
>
> <0x03000000 0x7 0x40000000 0x7 0x40000000 0x0 0x40000000>;
>
>> +			bus-range = <0 0xff>;
> 0x00 please
>
>> +
>> +			dma-coherent;
>> +
>> +			linux,pci-domain = <3>;
>> +			num-lanes = <8>;
>> +
>> +			interrupts = <GIC_SPI 158 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 166 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 769 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 836 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 671 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 200 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 218 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 219 IRQ_TYPE_LEVEL_HIGH>;
>> +			interrupt-names = "msi0",
>> +					  "msi1",
>> +					  "msi2",
>> +					  "msi3",
>> +					  "msi4",
>> +					  "msi5",
>> +					  "msi6",
>> +					  "msi7";
>> +
>> +			#interrupt-cells = <1>;
>> +			interrupt-map-mask = <0 0 0 0x7>;
>> +			interrupt-map = <0 0 0 1 &intc 0 0 0 220 IRQ_TYPE_LEVEL_HIGH>,
>> +					<0 0 0 2 &intc 0 0 0 221 IRQ_TYPE_LEVEL_HIGH>,
>> +					<0 0 0 3 &intc 0 0 0 237 IRQ_TYPE_LEVEL_HIGH>,
>> +					<0 0 0 4 &intc 0 0 0 238 IRQ_TYPE_LEVEL_HIGH>;
>> +
>> +			clocks = <&gcc GCC_PCIE_3_PIPE_CLK_SRC>,
> We don't toggle source clocks from dt, this is upstream of the pipe
> div clocks and is taken care of by the common clock framework,
> please drop.
GCC_PCIE_3_PIPE_CLK_SRC is a clk mux. The enable and disable callback
provided in clk driver is used to switch between pipe_clk and XO,
respectively. If we drop GCC_PCIE_3_PIPE_CLK_SRC here, that means
the mux will be XO until pipediv2 clk is enabled. I need to do some
experiment to check this. Will update in thread.

Thanks,
Qiang
>> +				 <&gcc GCC_PCIE_3_AUX_CLK>,
>> +				 <&gcc GCC_PCIE_3_CFG_AHB_CLK>,
>> +				 <&gcc GCC_PCIE_3_MSTR_AXI_CLK>,
>> +				 <&gcc GCC_PCIE_3_SLV_AXI_CLK>,
>> +				 <&gcc GCC_PCIE_3_SLV_Q2A_AXI_CLK>,
>> +				 <&gcc GCC_CFG_NOC_PCIE_ANOC_SOUTH_AHB_CLK>,
> GCC_CFG_NOC_PCIE_ANOC_NORTH_AHB_CLK
>
>> +				 <&gcc GCC_CNOC_PCIE_NORTH_SF_AXI_CLK>;
>> +			clock-names = "pipe_clk_src",
>> +				      "aux",
>> +				      "cfg",
>> +				      "bus_master",
>> +				      "bus_slave",
>> +				      "slave_q2a",
>> +				      "noc_aggr",
>> +				      "cnoc_sf_axi";
>> +
>> +			assigned-clocks = <&gcc GCC_PCIE_3_AUX_CLK>;
>> +			assigned-clock-rates = <19200000>;
>> +
>> +			interconnects = <&pcie_south_anoc MASTER_PCIE_3 QCOM_ICC_TAG_ALWAYS
>> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
>> +					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
>> +					 &cnoc_main SLAVE_PCIE_3 QCOM_ICC_TAG_ALWAYS>;
>> +			interconnect-names = "pcie-mem",
>> +					     "cpu-pcie";
>> +
>> +			resets = <&gcc GCC_PCIE_3_BCR>,
>> +				 <&gcc GCC_PCIE_3_LINK_DOWN_BCR>;
>> +			reset-names = "pci",
>> +				      "link_down";
>> +
>> +			power-domains = <&gcc GCC_PCIE_3_GDSC>;
>> +
>> +			phys = <&pcie3_phy>;
>> +			phy-names = "pciephy";
>> +
>> +			operating-points-v2 = <&pcie3_opp_table>;
>> +
>> +			status = "disabled";
>> +
>> +			pcie3_opp_table: opp-table {
>> +				compatible = "operating-points-v2";
>> +
>> +				/* GEN 1 x1 */
>> +				opp-2500000 {
>> +					opp-hz = /bits/ 64 <2500000>;
>> +					required-opps = <&rpmhpd_opp_low_svs>;
>> +					opp-peak-kBps = <250000 1>;
>> +				};
>> +
>> +				/* GEN 1 x2 and GEN 2 x1 */
>> +				opp-5000000 {
>> +					opp-hz = /bits/ 64 <5000000>;
>> +					required-opps = <&rpmhpd_opp_low_svs>;
>> +					opp-peak-kBps = <500000 1>;
>> +				};
>> +
>> +				/* GEN 1 x4 and GEN 2 x2*/
> Missing ' '
>
>> +				opp-10000000 {
>> +					opp-hz = /bits/ 64 <10000000>;
>> +					required-opps = <&rpmhpd_opp_low_svs>;
>> +					opp-peak-kBps = <1000000 1>;
>> +				};
>> +
>> +				/* GEN 1 x8 and GEN 2 X4 */
> Inconsistent capitalization, please use lowercase 'x'
>
> [...]
>
>> +		pcie3_phy: phy@1be0000 {
>> +			compatible = "qcom,x1e80100-qmp-gen4x8-pcie-phy";
>> +			reg = <0 0x01be0000 0 0x10000>;
>> +
>> +			clocks = <&gcc GCC_PCIE_3_AUX_CLK>,
> This clock doesn't belong here, the PHY is clocked by PHY_AUX
>
>> +				 <&gcc GCC_PCIE_3_CFG_AHB_CLK>,
>> +				 <&rpmhcc RPMH_CXO_CLK>,
> This is unnecessary as commented before
>
>> +				 <&gcc GCC_PCIE_3_PHY_RCHNG_CLK>,
>> +				 <&gcc GCC_PCIE_3_PHY_AUX_CLK>,
>> +				 <&gcc GCC_PCIE_3_PIPE_CLK>,
>> +				 <&gcc GCC_PCIE_3_PIPEDIV2_CLK>,
>> +				 <&tcsr TCSR_PCIE_8L_CLKREF_EN>;
> This should be the 'ref' here
>
> Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
