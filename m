Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93EDECD4847
	for <linux-phy@archiver.kernel.org>; Wed,  4 Sep 2024 17:49:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=THiDfKzF+cGpO13HYPfCucmZa0AdZNQn7E/66BUGyVw=; b=ms8Lpk41V72FFW
	32d8j7ZuyD+DZ3KpVcV6YuTd9TKKx+8STt1pkvH/5CPGuTiB9nLD5zLA+wZEzvNBF5d42lqHvfOOY
	WiNKH4RWIFL/ONtgAmWZk8w4Cf+++n8pbUWiX1APeuoQrKsA1HSx1mvzoW3eAsoSAGZ7MTPSsJgQ4
	eigJv/Kay9jC2yP2ZsvslZbIEmvOaMOKaeG7SE+ZTQjPnwIMJQa1ysUVTp2sWk6Jp5um4Ogq2J+Y+
	1Cd7Sye6uv3fJbOGH86wpXIkuSJ937peTCsneW2sw3YNn91Qz4pbh6RfEJsUu2Vc2vKqRhHgRahL1
	s8M8V+6F1LlPgFtv8NTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slu8F-00000005WM9-04QE;
	Wed, 04 Sep 2024 17:49:27 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slu6Y-00000005W0l-0UkS
	for linux-phy@lists.infradead.org;
	Wed, 04 Sep 2024 17:47:43 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 484BSgSS003593;
	Wed, 4 Sep 2024 17:47:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qZQnCnyfSNwaoiRWrBhYJ06WGShR2EB7KQmdAo5/+YY=; b=pucGto3lCqkUWCXl
	V8WVhyNZTi6dz+ghjdudKLGcT+weQzqhfJ3tR5f1Z4CH8NQKr3IQCkvWs1VC42Ox
	Le5swwmozrzUcHyo+8qFn/HV6W4p1X2OvUBmC1A/XRlu7QNVxJ1SjpyzeJK1h9W2
	5THz24MknhHWQx6CxB+lr9pM9ddJq0eZGMjpIz+Xvig+jw/euJYudiVayaPu1ya6
	IjEIe6eION9zlHYSSNLM9aNfzH3Z2+HZdmB1myF7OCgkQx5PyNe5RxfAvmRj6mmZ
	8h5G8muyNE31pFYPDq9xX1NKUTcDoX7qNMf77trJe9sw4OuVEjTmYdF0rpQHrsHU
	W0kY5A==
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 41buxfbdqa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 04 Sep 2024 17:47:33 +0000 (GMT)
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 484HlWCm002144
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 4 Sep 2024 17:47:32 GMT
Received: from [10.50.7.129] (10.80.80.8) by nalasex01c.na.qualcomm.com
 (10.47.97.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Wed, 4 Sep 2024
 10:47:23 -0700
Message-ID: <c5c1f0bf-2f69-44ae-b54b-d69d002e3199@quicinc.com>
Date: Wed, 4 Sep 2024 23:17:19 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 5/6] arm64: dts: qcom: ipq5018: Add PCIe related nodes
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
CC: <bhelgaas@google.com>, <lpieralisi@kernel.org>, <kw@linux.com>,
        <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <andersson@kernel.org>,
        <konradybcio@kernel.org>, <p.zabel@pengutronix.de>,
        <dmitry.baryshkov@linaro.org>, <quic_nsekar@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-pci@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <robimarko@gmail.com>
References: <20240827045757.1101194-1-quic_srichara@quicinc.com>
 <20240827045757.1101194-6-quic_srichara@quicinc.com>
 <20240830085901.oeiuuijlvq2ydho2@thinkpad>
Content-Language: en-US
From: Sricharan Ramabadhran <quic_srichara@quicinc.com>
In-Reply-To: <20240830085901.oeiuuijlvq2ydho2@thinkpad>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: QIgxJOTfgNCvH2OEJNI5EJz30P3lCKqI
X-Proofpoint-ORIG-GUID: QIgxJOTfgNCvH2OEJNI5EJz30P3lCKqI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-04_15,2024-09-04_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 malwarescore=0
 adultscore=0 clxscore=1015 mlxlogscore=999 lowpriorityscore=0 phishscore=0
 bulkscore=0 mlxscore=0 impostorscore=0 priorityscore=1501 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2407110000
 definitions=main-2409040134
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_104742_248936_B48B397C 
X-CRM114-Status: GOOD (  20.61  )
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



On 8/30/2024 2:29 PM, Manivannan Sadhasivam wrote:
> On Tue, Aug 27, 2024 at 10:27:56AM +0530, Sricharan R wrote:
>> From: Nitheesh Sekar <quic_nsekar@quicinc.com>
>>
>> Add phy and controller nodes for a 2-lane Gen2 and
>> 1-lane Gen2 PCIe buses.
>>
>> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
>> Signed-off-by: Sricharan R <quic_srichara@quicinc.com>
>> ---
>>   [v2] Removed relocatable flags,  removed assigned-clock-rates,
>>        fixed rest of the cosmetic comments.
>>
>>   arch/arm64/boot/dts/qcom/ipq5018.dtsi | 168 +++++++++++++++++++++++++-
>>   1 file changed, 166 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/ipq5018.dtsi b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
>> index 7e6e2c121979..dd5d6b7ff094 100644
>> --- a/arch/arm64/boot/dts/qcom/ipq5018.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
>> @@ -9,6 +9,7 @@
>>   #include <dt-bindings/interrupt-controller/arm-gic.h>
>>   #include <dt-bindings/clock/qcom,gcc-ipq5018.h>
>>   #include <dt-bindings/reset/qcom,gcc-ipq5018.h>
>> +#include <dt-bindings/gpio/gpio.h>
>>   
>>   / {
>>   	interrupt-parent = <&intc>;
>> @@ -143,7 +144,33 @@ usbphy0: phy@5b000 {
>>   			resets = <&gcc GCC_QUSB2_0_PHY_BCR>;
>>   
>>   			#phy-cells = <0>;
>> +		};
>> +
>> +		pcie_x1phy: phy@7e000{
>> +			compatible = "qcom,ipq5018-uniphy-pcie-gen2x1";
>> +			reg = <0x0007e000 0x800>;
>> +			#phy-cells = <0>;
>> +			#clock-cells = <0>;
>> +			clocks = <&gcc GCC_PCIE1_PIPE_CLK>;
>> +			clock-names = "pipe";
>> +			assigned-clocks = <&gcc GCC_PCIE1_PIPE_CLK>;
>> +			resets = <&gcc GCC_PCIE1_PHY_BCR>,
>> +				 <&gcc GCC_PCIE1PHY_PHY_BCR>;
>> +			reset-names = "phy", "common";
>> +			status = "disabled";
>> +		};
>>   
>> +		pcie_x2phy: phy@86000{
>> +			compatible = "qcom,ipq5018-uniphy-pcie-gen2x2";
>> +			reg = <0x00086000 0x1000>;
>> +			#phy-cells = <0>;
>> +			#clock-cells = <0>;
>> +			clocks = <&gcc GCC_PCIE0_PIPE_CLK>;
>> +			clock-names = "pipe";
>> +			assigned-clocks = <&gcc GCC_PCIE0_PIPE_CLK>;
>> +			resets = <&gcc GCC_PCIE0_PHY_BCR>,
>> +				 <&gcc GCC_PCIE0PHY_PHY_BCR>;
>> +			reset-names = "phy", "common";
>>   			status = "disabled";
>>   		};
>>   
>> @@ -170,8 +197,8 @@ gcc: clock-controller@1800000 {
>>   			reg = <0x01800000 0x80000>;
>>   			clocks = <&xo_board_clk>,
>>   				 <&sleep_clk>,
>> -				 <0>,
>> -				 <0>,
>> +				 <&pcie_x2phy>,
>> +				 <&pcie_x1phy>,
>>   				 <0>,
>>   				 <0>,
>>   				 <0>,
>> @@ -387,6 +414,143 @@ frame@b128000 {
>>   				status = "disabled";
>>   			};
>>   		};
>> +
>> +		pcie0: pci@80000000 {
> 
> pcie@
> 
  ok

>> +			compatible = "qcom,pcie-ipq5018";
>> +			reg =  <0x80000000 0xf1d>,
>> +			       <0x80000f20 0xa8>,
>> +			       <0x80001000 0x1000>,
>> +			       <0x00078000 0x3000>,
>> +			       <0x80100000 0x1000>;
> 
> Are you sure that the config space is only 4K?
> 
  ok, let me double check.

>> +			reg-names = "dbi", "elbi", "atu", "parf", "config";
>> +			device_type = "pci";
>> +			linux,pci-domain = <0>;
>> +			bus-range = <0x00 0xff>;
>> +			num-lanes = <1>;
>> +			max-link-speed = <2>;
>> +			#address-cells = <3>;
>> +			#size-cells = <2>;
>> +
>> +			phys = <&pcie_x1phy>;
>> +			phy-names ="pciephy";
>> +
>> +			ranges = <0x01000000 0 0x80200000 0x80200000 0 0x00100000
> 
> Please check the value of this field in other SoCs.

  ok, if its about the child address encoding for IO region, will fix.

> 
>> +				  0x02000000 0 0x80300000 0x80300000 0 0x10000000>;
>> +
>> +			#interrupt-cells = <1>;
>> +			interrupt-map-mask = <0 0 0 0x7>;
>> +			interrupt-map = <0 0 0 1 &intc 0 0 142 IRQ_TYPE_LEVEL_HIGH>,
>> +					<0 0 0 2 &intc 0 0 143 IRQ_TYPE_LEVEL_HIGH>,
>> +					<0 0 0 3 &intc 0 0 144 IRQ_TYPE_LEVEL_HIGH>,
>> +					<0 0 0 4 &intc 0 0 145 IRQ_TYPE_LEVEL_HIGH>;
>> +
>> +			interrupts = <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>;
>> +			interrupt-names = "global_irq";
> 
> I'm pretty sure that this SoC has SPI based MSI interrupts. So they should be
> described even though ITS is supported.

  ok

> 
>> +
>> +			clocks = <&gcc GCC_SYS_NOC_PCIE1_AXI_CLK>,
>> +				 <&gcc GCC_PCIE1_AXI_M_CLK>,
>> +				 <&gcc GCC_PCIE1_AXI_S_CLK>,
>> +				 <&gcc GCC_PCIE1_AHB_CLK>,
>> +				 <&gcc GCC_PCIE1_AUX_CLK>,
>> +				 <&gcc GCC_PCIE1_AXI_S_BRIDGE_CLK>;
>> +
>> +			clock-names = "iface",
>> +				      "axi_m",
>> +				      "axi_s",
>> +				      "ahb",
>> +				      "aux",
>> +				      "axi_bridge";
>> +
>> +			resets = <&gcc GCC_PCIE1_PIPE_ARES>,
>> +				 <&gcc GCC_PCIE1_SLEEP_ARES>,
>> +				 <&gcc GCC_PCIE1_CORE_STICKY_ARES>,
>> +				 <&gcc GCC_PCIE1_AXI_MASTER_ARES>,
>> +				 <&gcc GCC_PCIE1_AXI_SLAVE_ARES>,
>> +				 <&gcc GCC_PCIE1_AHB_ARES>,
>> +				 <&gcc GCC_PCIE1_AXI_MASTER_STICKY_ARES>,
>> +				 <&gcc GCC_PCIE1_AXI_SLAVE_STICKY_ARES>;
>> +
>> +			reset-names = "pipe",
>> +				      "sleep",
>> +				      "sticky",
>> +				      "axi_m",
>> +				      "axi_s",
>> +				      "ahb",
>> +				      "axi_m_sticky",
>> +				      "axi_s_sticky";
>> +
>> +			msi-map = <0x0 &v2m0 0x0 0xff8>;
>> +			status = "disabled";
> 
> Please add the rootport node also as like other SoCs.
> 
  ok

> Above comments applies to below PCIe node.
>
  ok

Regards,
  Sricharan


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
