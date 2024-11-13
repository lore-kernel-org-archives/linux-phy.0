Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BC0FD41C0B
	for <linux-phy@archiver.kernel.org>; Wed, 13 Nov 2024 07:02:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mF360y9gXkOfzQCbicBi9h3KoZwvZHitJbCRqgwiIRA=; b=HpXeCD4u5TfpuJ
	VhimQ6gwColQIuyU7EmnAV6U3sm1tx2AUGhqDQFp6sUOMWIIZvvmAWY1Dl75r6IiXOQU/bPStIebG
	RBPqYrwpXkvy/H/53jXdKIF49apNy39WApvgGtlRRIxyPnr7R+LgneWL2KnBwXgpVxqlp7QQ+10FC
	FRea9BtCbahZPKWvY3BxwS0FQfv8Cldkuqs4FW0KV+rY8T26UrndOEQaSjL/Jt3YxB7UPb/fm0tFJ
	gEdXogMJdKv/GHeDx1Q57rtL49TpDpFg+iJrKn4RSaedPSgoQ3EGDOh66GVWEBJCrF2YmRItx539M
	kpc9OWllf9C0xQoj+9FQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tB7OB-00000005x2g-0CFo;
	Wed, 13 Nov 2024 07:02:07 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tB7O8-00000005x2H-16eg
	for linux-phy@lists.infradead.org;
	Wed, 13 Nov 2024 07:02:05 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4ACMS6RV019322;
	Wed, 13 Nov 2024 07:01:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=VvV/bpHM+sl/aBVkRsDepmI3
	ENDt94Z7ytMRVdSGL0s=; b=m2WpGeDgK3R6+dBSOE2HIxnkgV+gi6Mvyd2zShjo
	XDXWQEKj9s5poiSkYNafDQqv8GVZ2PM/I5EM9jwS5pUQPilmVefabos4lxEho7/b
	tPU7r7zx2wHH7p12qOx/X05P7NV0LbUEh8G2M5jYH1yEu2b58fJUa4CMy35r5DZC
	WDYTMWcz4m/Pdbj0Y/xwVtHuFPcxv3ZfybyCi3py0lgB/0LVzSaLYHFBQbUg5BbP
	3bYk55bfTpQd6Zx39xyL5KQ7jNBYS2dnuJppVkKg0LHd1CZucdntfQFJsNsiZmPj
	jxfDWaNVagBdkd7VlKEmKkn6N9fpCesus4F8onMKgK57/g==
Received: from nasanppmta03.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42v4kqu37r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 13 Nov 2024 07:01:57 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA03.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4AD71utn000633
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 13 Nov 2024 07:01:56 GMT
Received: from hu-varada-blr.qualcomm.com (10.80.80.8) by
 nasanex01b.na.qualcomm.com (10.46.141.250) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Tue, 12 Nov 2024 23:01:50 -0800
Date: Wed, 13 Nov 2024 12:31:46 +0530
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: Krishna Kurapati <quic_kriskura@quicinc.com>
CC: <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <gregkh@linuxfoundation.org>,
        <robh@kernel.org>, <abel.vesa@linaro.org>, <johan+linaro@kernel.org>,
        <dmitry.baryshkov@linaro.org>, <mantas@8devices.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <quic_kbajaj@quicinc.com>,
        <linux-kernel@vger.kernel.org>, <quic_wcheng@quicinc.com>,
        <vkoul@kernel.org>, <linux-usb@vger.kernel.org>,
        <andersson@kernel.org>, <kishon@kernel.org>, <konradybcio@kernel.org>
Subject: Re: [PATCH v1 6/6] arm64: dts: qcom: Add USB controller and phy
 nodes for IPQ5424
Message-ID: <ZzRO2uXHCRVqqq08@hu-varada-blr.qualcomm.com>
References: <20241112091355.2028018-1-quic_varada@quicinc.com>
 <20241112091355.2028018-7-quic_varada@quicinc.com>
 <e541fd10-7037-4cbf-b07a-6cac8a7a9452@quicinc.com>
 <ZzNEecwbh63soh5J@hu-varada-blr.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZzNEecwbh63soh5J@hu-varada-blr.qualcomm.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: mOsWURAirdCvSrraPqNZiNyzC3qRAdMs
X-Proofpoint-GUID: mOsWURAirdCvSrraPqNZiNyzC3qRAdMs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 impostorscore=0
 adultscore=0 priorityscore=1501 lowpriorityscore=0 phishscore=0
 malwarescore=0 spamscore=0 clxscore=1015 mlxscore=0 mlxlogscore=963
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411130061
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241112_230204_339866_9D9B6D66 
X-CRM114-Status: GOOD (  22.70  )
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

On Tue, Nov 12, 2024 at 05:35:13PM +0530, Varadarajan Narayanan wrote:
> On Tue, Nov 12, 2024 at 03:05:57PM +0530, Krishna Kurapati wrote:
> >
> >
> > On 11/12/2024 2:43 PM, Varadarajan Narayanan wrote:
> > > The IPQ5424 SoC has both USB2.0 and USB3.0 controllers. The USB3.0
> > > can connect to either of USB2.0 or USB3.0 phy and operate in the
> > > respective mode.
> > >
> > > Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> > > ---
> > >   arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts |  67 +++++++++
> > >   arch/arm64/boot/dts/qcom/ipq5424.dtsi       | 153 ++++++++++++++++++++
> > >   2 files changed, 220 insertions(+)
> > >
> >
> > [...]
> >
> > > diff --git a/arch/arm64/boot/dts/qcom/ipq5424.dtsi b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
> > > index 5e219f900412..d8c045a311c2 100644
> > > --- a/arch/arm64/boot/dts/qcom/ipq5424.dtsi
> > > +++ b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
> > > @@ -233,6 +233,159 @@ intc: interrupt-controller@f200000 {
> > >   			msi-controller;
> > >   		};
> > > +		qusb_phy_1: phy@71000 {
> > > +			compatible = "qcom,ipq5424-qusb2-phy";
> > > +			reg = <0 0x00071000 0 0x180>;
> > > +			#phy-cells = <0>;
> > > +
> > > +			clocks = <&gcc GCC_USB1_PHY_CFG_AHB_CLK>,
> > > +				<&xo_board>;
> > > +			clock-names = "cfg_ahb", "ref";
> > > +
> > > +			resets = <&gcc GCC_QUSB2_1_PHY_BCR>;
> > > +			status = "disabled";
> > > +		};
> > > +
> > > +		usb2: usb2@1e00000 {
> > > +			compatible = "qcom,ipq5424-dwc3", "qcom,dwc3";
> > > +			reg = <0 0x01ef8800 0 0x400>;
> > > +			#address-cells = <2>;
> > > +			#size-cells = <2>;
> > > +			ranges;
> > > +
> > > +			clocks = <&gcc GCC_USB1_MASTER_CLK>,
> > > +				 <&gcc GCC_USB1_SLEEP_CLK>,
> > > +				 <&gcc GCC_USB1_MOCK_UTMI_CLK>,
> > > +				 <&gcc GCC_USB1_PHY_CFG_AHB_CLK>,
> > > +				 <&gcc GCC_CNOC_USB_CLK>;
> > > +
> > > +			clock-names = "core",
> > > +				      "sleep",
> > > +				      "mock_utmi",
> > > +				      "iface",
> > > +				      "cfg_noc";
> > > +
> > > +			assigned-clocks = <&gcc GCC_USB1_MASTER_CLK>,
> > > +					  <&gcc GCC_USB1_MOCK_UTMI_CLK>;
> > > +			assigned-clock-rates = <200000000>,
> > > +					       <24000000>; > +
> >
> > Shouldn't this be 19.2MHz ?
>
> XO is 24MHz in this SoC.
>
> > > +			interrupts-extended = <&intc GIC_SPI 395 IRQ_TYPE_LEVEL_HIGH>,
> > > +					      <&intc GIC_SPI 397 IRQ_TYPE_LEVEL_HIGH>,
> > > +					      <&intc GIC_SPI 387 IRQ_TYPE_LEVEL_HIGH>,
> > > +					      <&intc GIC_SPI 388 IRQ_TYPE_LEVEL_HIGH>;
> > > +			interrupt-names = "pwr_event",
> > > +					  "qusb2_phy",
> > > +					  "dm_hs_phy_irq",
> > > +					  "dp_hs_phy_irq";
> > > +
> >
> > Please check the hs_phy_irq as well and add it if its present.
>
> Will add.

Checked with HW team, there is no hs_phy_irq in this case.

> > > +			resets = <&gcc GCC_USB1_BCR>;
> > > +			qcom,select-utmi-as-pipe-clk;
> > > +			status = "disabled";
> > > +
> > > +			dwc_1: usb@1e00000 {
> > > +				compatible = "snps,dwc3";
> > > +				reg = <0 0x01e00000 0 0xe000>;
> > > +				clocks = <&gcc GCC_USB1_MOCK_UTMI_CLK>;
> > > +				clock-names = "ref";
> >
> > Another clock in dwc3 node ?

Not sure if I understand the above comment. Per bindings [1] a
clock entry is expected in this node.

1 - https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/Documentation/devicetree/bindings/usb/snps,dwc3.yaml#n57

Thanks
Varada

> > > +				interrupts = <GIC_SPI 396 IRQ_TYPE_LEVEL_HIGH>;
> > > +				phys = <&qusb_phy_1>;
> > > +				phy-names = "usb2-phy";
> > > +				tx-fifo-resize;
> > > +				snps,is-utmi-l1-suspend;
> > > +				snps,hird-threshold = /bits/ 8 <0x0>;
> > > +				snps,dis_u2_susphy_quirk;
> > > +				snps,dis_u3_susphy_quirk;
> > > +			};
> > > +		};
> > > +
> > > +		qusb_phy_0: phy@7b000 {
> > > +			compatible = "qcom,ipq5424-qusb2-phy";
> > > +			reg = <0 0x0007b000 0 0x180>;
> > > +			#phy-cells = <0>;
> > > +
> > > +			clocks = <&gcc GCC_USB0_PHY_CFG_AHB_CLK>,
> > > +				<&xo_board>;
> > > +			clock-names = "cfg_ahb", "ref";
> > > +
> > > +			resets = <&gcc GCC_QUSB2_0_PHY_BCR>;
> > > +			status = "disabled";
> > > +		};
> > > +
> > > +		ssphy_0: phy@7d000 {
> > > +			compatible = "qcom,ipq5424-qmp-usb3-phy";
> > > +			reg = <0 0x0007d000 0 0xa00>;
> > > +			#phy-cells = <0>;
> > > +
> > > +			clocks = <&gcc GCC_USB0_AUX_CLK>,
> > > +				 <&xo_board>,
> > > +				 <&gcc GCC_USB0_PHY_CFG_AHB_CLK>,
> > > +				 <&gcc GCC_USB0_PIPE_CLK>;
> > > +			clock-names = "aux",
> > > +				      "ref",
> > > +				      "cfg_ahb",
> > > +				      "pipe";
> > > +
> > > +			resets = <&gcc GCC_USB0_PHY_BCR>,
> > > +				 <&gcc GCC_USB3PHY_0_PHY_BCR>;
> > > +			reset-names = "phy",
> > > +				      "phy_phy";
> > > +
> > > +			#clock-cells = <0>;
> > > +			clock-output-names = "usb0_pipe_clk";
> > > +
> > > +			status = "disabled";
> > > +		};
> > > +
> > > +		usb3: usb3@8a00000 {
> > > +			compatible = "qcom,ipq5424-dwc3", "qcom,dwc3";
> > > +			reg = <0 0x08af8800 0 0x400>;
> > > +
> > > +			#address-cells = <2>;
> > > +			#size-cells = <2>;
> > > +			ranges;
> > > +
> > > +			clocks = <&gcc GCC_USB0_MASTER_CLK>,
> > > +				 <&gcc GCC_USB0_SLEEP_CLK>,
> > > +				 <&gcc GCC_USB0_MOCK_UTMI_CLK>,
> > > +				 <&gcc GCC_USB0_PHY_CFG_AHB_CLK>,
> > > +				 <&gcc GCC_CNOC_USB_CLK>;
> > > +
> > > +			clock-names = "core",
> > > +				      "sleep",
> > > +				      "mock_utmi",
> > > +				      "iface",
> > > +				      "cfg_noc";
> > > +
> > > +			assigned-clocks = <&gcc GCC_USB0_MASTER_CLK>,
> > > +					  <&gcc GCC_USB0_MOCK_UTMI_CLK>;
> > > +			assigned-clock-rates = <200000000>,
> > > +					       <24000000>;
> > > +
> >
> > same comment as above, isn't this supposed to be 19.2MHz ?
>
> XO is 24MHz in this SoC.
>
> > > +			interrupts-extended = <&intc GIC_SPI 412 IRQ_TYPE_LEVEL_HIGH>,
> > > +					      <&intc GIC_SPI 414 IRQ_TYPE_LEVEL_HIGH>;
> > > +			interrupt-names = "pwr_event",
> > > +					  "qusb2_phy";
> > > +
> >
> > DP/ DM interrupts ?
>
> Will add.
>
> > > +			resets = <&gcc GCC_USB_BCR>;
> > > +			status = "disabled";
> > > +
> > > +			dwc_0: usb@8a00000 {
> > > +				compatible = "snps,dwc3";
> > > +				reg = <0 0x08a00000 0 0xcd00>;
> > > +				clocks = <&gcc GCC_USB0_MOCK_UTMI_CLK>;
> > > +				clock-names = "ref";
> > > +				interrupts = <GIC_SPI 409 IRQ_TYPE_LEVEL_HIGH>;
> > > +				phys = <&qusb_phy_0>, <&ssphy_0>;
> > > +				phy-names = "usb2-phy", "usb3-phy";
> > > +				tx-fifo-resize;
> > > +				snps,is-utmi-l1-suspend;
> > > +				snps,hird-threshold = /bits/ 8 <0x0>;
> > > +				snps,dis_u2_susphy_quirk;
> > > +				snps,dis_u3_susphy_quirk;
> >
> > Disable u1/u2 entry as well please.
>
> Will add.
>
> Thanks
> Varada
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
