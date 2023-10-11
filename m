Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E1C3CD6E59
	for <linux-phy@archiver.kernel.org>; Wed, 11 Oct 2023 10:45:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ewIuJKXOo9RUAD1DafGmzjlneAHaXwNUiD4xzIc4i4E=; b=Wy9tO6sCmhjKD7
	hx3WTKZs3CXkEU2ibTGFPXXBFFfnuWONiHO0vc4JiAEy/FwrJv76Mh7gY4O2ugHWq1sfEsi6IRN61
	e/y/4UnnlWBlYpfgU1HFHM5EOknvN0jRF4VtHVLmF1HSQ5Tkb/OH3lhpBUgviDamF3PQIL63SpLUv
	rXpZELkTQ7ZYiB7LDDS0N40a4GNQD3tTNuHApEORIA2qfD9yYs6/T0Xj+nvM4ftIJ8mR9CLY159YR
	7taH6287EOoitbu1Xk1uHlZREH0zQuNwaIbWY7tfdvdZP/admV6YpXOGthDjxRymQiQ7fvQ4BM51n
	k7/akVU5wJLgnu5ro2OA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqWiP-00FXhl-0x;
	Wed, 11 Oct 2023 10:45:21 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqWiM-00FXfP-0G
	for linux-phy@lists.infradead.org;
	Wed, 11 Oct 2023 10:45:19 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39B7KwYe011938;
	Wed, 11 Oct 2023 10:45:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=n2CAALcEigZJjpm4AR7duyPyWm3aXmvCe3nZv4pLlqQ=;
 b=etDZPxeQQ1iut9CBen6Vt9NJAGn8n9z1+sQw3v8oj4izM1RSxWR5qomkEEp/RjJgs1jb
 X+IGEOhnzd+4i3m1lNt2KXx9sKkdvqxqAZ0qrm0tOwQ6+1aeNP7S/xl3RooGVDcm9ncu
 laRXvRD/cjFkDVhL1T5oGtlfFcDvMO2o/oVPYW22+FxOyP3i0opnnvYJHd6WSzwqDHxP
 uGawiVbPj//srt9uF6ugKAf3L1UbcaDHwNIP6oavxITHzlmh6WgvEEFr8svxvUGqevt2
 +WzhCLAH2RmC5cCr9upYWlpjR5Uctn8/7s+Casbx0Lhu/BtFcOBGj5+rQ+WqYYeIgHaq cg== 
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tnkwngtjt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Oct 2023 10:45:02 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39BAj2j9004602
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Oct 2023 10:45:02 GMT
Received: from [10.216.52.55] (10.80.80.8) by nalasex01b.na.qualcomm.com
 (10.47.209.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.36; Wed, 11 Oct
 2023 03:44:53 -0700
Message-ID: <ca898b48-78e0-4bc7-c88c-a33338e7e47a@quicinc.com>
Date: Wed, 11 Oct 2023 16:14:50 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v1 5/5] arm64: dts: qcom: sa8775p: Add ep pcie0 controller
 node
Content-Language: en-US
To: Manivannan Sadhasivam <mani@kernel.org>
CC: <agross@kernel.org>, <andersson@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <konrad.dybcio@linaro.org>, <quic_shazhuss@quicinc.com>,
        <quic_nitegupt@quicinc.com>, <quic_ramkri@quicinc.com>,
        <quic_nayiluri@quicinc.com>, <quic_krichai@quicinc.com>,
        <quic_vbadigan@quicinc.com>, <quic_parass@quicinc.com>,
        Lorenzo Pieralisi
	<lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?=
	<kw@linux.com>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas
	<bhelgaas@google.com>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Vinod Koul
	<vkoul@kernel.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <mhi@lists.linux.dev>,
        <linux-phy@lists.infradead.org>
References: <1695218113-31198-1-git-send-email-quic_msarkar@quicinc.com>
 <1695218113-31198-6-git-send-email-quic_msarkar@quicinc.com>
 <20230921094823.GE2891@thinkpad>
From: Mrinmay Sarkar <quic_msarkar@quicinc.com>
In-Reply-To: <20230921094823.GE2891@thinkpad>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: txDmBbCPzhrIWJ1FGyxQQng_l1FT9Qe8
X-Proofpoint-GUID: txDmBbCPzhrIWJ1FGyxQQng_l1FT9Qe8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-11_08,2023-10-11_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999
 lowpriorityscore=0 bulkscore=0 mlxscore=0 suspectscore=0 phishscore=0
 priorityscore=1501 malwarescore=0 impostorscore=0 adultscore=0 spamscore=0
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2310110094
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231011_034518_150021_BEB3EE36 
X-CRM114-Status: GOOD (  17.05  )
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


On 9/21/2023 3:18 PM, Manivannan Sadhasivam wrote:
> On Wed, Sep 20, 2023 at 07:25:12PM +0530, Mrinmay Sarkar wrote:
>> Add ep pcie dtsi node for pcie0 controller found on sa8775p platform.
>>
> It would be good to add more info in the commit message, like PCIe Gen, lane
> info, IP revision etc...
>
>> Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
>> ---
>>   arch/arm64/boot/dts/qcom/sa8775p.dtsi | 45 +++++++++++++++++++++++++++++++++++
>>   1 file changed, 45 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
>> index 9f4f58e8..5571131 100644
>> --- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
>> @@ -2600,4 +2600,49 @@
>>   
>>   		status = "disabled";
>>   	};
>> +
>> +	pcie0_ep: pcie-ep@1c00000 {
>> +		compatible = "qcom,sa8775p-pcie-ep";
>> +		reg = <0x0 0x01c00000 0x0 0x3000>,
>> +		      <0x0 0x40000000 0x0 0xf20>,
>> +		      <0x0 0x40000f20 0x0 0xa8>,
>> +		      <0x0 0x40001000 0x0 0x4000>,
>> +		      <0x0 0x40200000 0x0 0x100000>,
>> +		      <0x0 0x01c03000 0x0 0x1000>,
>> +		      <0x0 0x40005000 0x0 0x2000>;
>> +		reg-names = "parf", "dbi", "elbi", "atu", "addr_space",
>> +			    "mmio", "dma";
>> +
>> +		clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
>> +			<&gcc GCC_PCIE_0_CFG_AHB_CLK>,
>> +			<&gcc GCC_PCIE_0_MSTR_AXI_CLK>,
>> +			<&gcc GCC_PCIE_0_SLV_AXI_CLK>,
>> +			<&gcc GCC_PCIE_0_SLV_Q2A_AXI_CLK>;
>> +
>> +		clock-names = "aux",
>> +			      "cfg",
>> +			      "bus_master",
>> +			      "bus_slave",
>> +			      "slave_q2a";
>> +
>> +		interrupts = <GIC_SPI 306 IRQ_TYPE_LEVEL_HIGH>,
>> +			     <GIC_SPI 147 IRQ_TYPE_LEVEL_HIGH>,
>> +			     <GIC_SPI 630 IRQ_TYPE_LEVEL_HIGH>;
>> +
>> +		interrupt-names = "global", "doorbell", "dma";
>> +
>> +		interconnects = <&pcie_anoc MASTER_PCIE_0 0 &mc_virt SLAVE_EBI1 0>,
>> +				<&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_PCIE_0 0>;
>> +		interconnect-names = "pcie-mem", "cpu-pcie";
>> +
> Don't you need iommu property?
>
>> +		resets = <&gcc GCC_PCIE_0_BCR>;
>> +		reset-names = "core";
>> +		power-domains = <&gcc PCIE_0_GDSC>;
>> +		phys = <&pcie0_phy>;
>> +		phy-names = "pciephy";
>> +		max-link-speed = <3>;
> Gen 3?
there is some stability issue with gen4 so going with gen3 as of now.
Will update once issue is resolved.

Thanks,
Mrinmay
>> +		num-lanes = <2>;
> Only 2 lanes? Or the other one has 4 lanes?
>
> - Mani
pcie0 has lane2 and pcie1 has lane4 configuration.

Thanks,
Mrinmay
>> +
>> +		status = "disabled";
>> +	};
>>   };
>> -- 
>> 2.7.4
>>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
