Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A1A4E77188
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jan 2025 04:36:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QWEEZ5pAl4GEqNEQh+JEGvmXdbKEft5oN/oAZwQVEEc=; b=sxK+0gQp3FufOs
	8moTiaiJAWzN3HiS0MYPly/aVS9pFLB3A907ZHlktIW94s+TzdpoZJusGlwPTTD50vxXv7HY8bV12
	1/zxWcDe03SovxBop08X3DYqor4Ms9SgD8NlG9L0xpAevX3KhGU36e2GIi5b88LI27P2MFG87NMoo
	m0H2noor6VC+Sk/vkdvQ6slY/omx/yi+YFLbtDc3CHbUW6yIkFh1MQNMl+Ny+NpZrnBjMoY8BR5jr
	sAmLzJ9KhD5DtOF2r218/5uXVm6sCxcYyJ2HKLGUKh2yCfspzJYgjtueCfpbVe0brxaRbqhYxoo1N
	48vm3JPKTx6fsAAP9hGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tW6lO-0000000DyuC-2UOV;
	Fri, 10 Jan 2025 04:36:50 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tW6lM-0000000Dytl-0Z0C
	for linux-phy@lists.infradead.org;
	Fri, 10 Jan 2025 04:36:49 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50A1W32t023421;
	Fri, 10 Jan 2025 04:36:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=M8AynVnJMRD2H0YVv/u0Whl6
	0TNKLKUVltGlZet2XLU=; b=kYwAh1WDRJHpEllGQa7Eb560nz40k+zX2rgYk6tS
	JqQnv/PVftHz2yaODeZ9tZN8h03bS8TtxUh5/IUi+1Q9PdIYWPbs6JFGc5jc3qLb
	yS6OmHf4qPfOLOJ1cG9wjBm4qspTCo+NEVxWk9C2g+8KTm79tqP2JZesfP4wbXus
	XVZBXhWrjuHWM06HKJi2cX3quZeSrlKWYLMBSg35b/Zxxno20WCSBoO8nStcHCQ9
	qk2I8PhF46/qg3Uu4mY9W2EVHlnwBtvzNlVxIambseWeY4qNMOI/jn9TKAnz9e6S
	5WxBpoQCP1vGEAsrmb+xvjXRDqPCxqmgkg9WRQ4aAFBDPA==
Received: from nasanppmta03.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 442syc0bxf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 10 Jan 2025 04:36:39 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA03.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 50A4acmP017036
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 10 Jan 2025 04:36:38 GMT
Received: from hu-varada-blr.qualcomm.com (10.80.80.8) by
 nasanex01b.na.qualcomm.com (10.46.141.250) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Thu, 9 Jan 2025 20:36:32 -0800
Date: Fri, 10 Jan 2025 10:06:29 +0530
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
CC: <bhelgaas@google.com>, <lpieralisi@kernel.org>, <kw@linux.com>,
        <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <andersson@kernel.org>,
        <konradybcio@kernel.org>, <p.zabel@pengutronix.de>,
        <quic_nsekar@quicinc.com>, <dmitry.baryshkov@linaro.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-pci@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>,
        Praveenkumar I <quic_ipkumar@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v5 4/5] arm64: dts: qcom: ipq5332: Add PCIe related nodes
Message-ID: <Z4Cjzc5nyOv0R9tS@hu-varada-blr.qualcomm.com>
References: <20250102113019.1347068-1-quic_varada@quicinc.com>
 <20250102113019.1347068-5-quic_varada@quicinc.com>
 <20250108132235.gh6p5d6t7wklzpm7@thinkpad>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250108132235.gh6p5d6t7wklzpm7@thinkpad>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: PDsGTaYB_0n28TRswOJR4j5vfPdyrjOL
X-Proofpoint-ORIG-GUID: PDsGTaYB_0n28TRswOJR4j5vfPdyrjOL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 mlxlogscore=999
 malwarescore=0 phishscore=0 lowpriorityscore=0 impostorscore=0 bulkscore=0
 clxscore=1015 mlxscore=0 suspectscore=0 priorityscore=1501 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2501100036
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250109_203648_188071_047DAFCB 
X-CRM114-Status: GOOD (  28.01  )
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

On Wed, Jan 08, 2025 at 06:52:35PM +0530, Manivannan Sadhasivam wrote:
> On Thu, Jan 02, 2025 at 05:00:18PM +0530, Varadarajan Narayanan wrote:
> > From: Praveenkumar I <quic_ipkumar@quicinc.com>
> >
> > Add phy and controller nodes for pcie0_x1 and pcie1_x2.
> >
> > Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> > Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> > Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> > ---
> > v5: Add 'num-lanes' to "pcie1_phy: phy@4b1000"
> >     Make ipq5332 as main and ipq9574 as fallback compatible
> >     Move controller nodes per address
> >     Having Konrad's Reviewed-By
> >
> > v4: Remove 'reset-names' as driver uses bulk APIs
> >     Remove 'clock-output-names' as driver uses bulk APIs
> >     Add missing reset for pcie1_phy
> >     Convert 'reg-names' to a vertical list
> >     Move 'msi-map' before interrupts
> >
> > v3: Fix compatible string for phy nodes
> >     Use ipq9574 as backup compatible instead of new compatible for ipq5332
> >     Fix mixed case hex addresses
> >     Add "mhi" space
> >     Removed unnecessary comments and stray blank lines
> >
> > v2: Fix nodes' location per address
> > ---
> >  arch/arm64/boot/dts/qcom/ipq5332.dtsi | 221 +++++++++++++++++++++++++-
> >  1 file changed, 219 insertions(+), 2 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/ipq5332.dtsi b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> > index d3c3e215a15c..89daf955e4bd 100644
> > --- a/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> > @@ -186,6 +186,43 @@ rng: rng@e3000 {
> >  			clock-names = "core";
> >  		};
> >
> > +		pcie0_phy: phy@4b0000 {
> > +			compatible = "qcom,ipq5332-uniphy-pcie-phy";
> > +			reg = <0x004b0000 0x800>;
> > +
> > +			clocks = <&gcc GCC_PCIE3X1_0_PIPE_CLK>,
> > +				 <&gcc GCC_PCIE3X1_PHY_AHB_CLK>;
> > +
> > +			resets = <&gcc GCC_PCIE3X1_0_PHY_BCR>,
> > +				 <&gcc GCC_PCIE3X1_PHY_AHB_CLK_ARES>,
> > +				 <&gcc GCC_PCIE3X1_0_PHY_PHY_BCR>;
> > +
> > +			#clock-cells = <0>;
> > +
> > +			#phy-cells = <0>;
> > +			status = "disabled";
> > +		};
> > +
> > +		pcie1_phy: phy@4b1000 {
> > +			compatible = "qcom,ipq5332-uniphy-pcie-phy";
> > +			reg = <0x004b1000 0x1000>;
> > +
> > +			clocks = <&gcc GCC_PCIE3X2_PIPE_CLK>,
> > +				 <&gcc GCC_PCIE3X2_PHY_AHB_CLK>;
> > +
> > +			resets = <&gcc GCC_PCIE3X2_PHY_BCR>,
> > +				 <&gcc GCC_PCIE3X2_PHY_AHB_CLK_ARES>,
> > +				 <&gcc GCC_PCIE3X2PHY_PHY_BCR>;
> > +
> > +			#clock-cells = <0>;
> > +
> > +			#phy-cells = <0>;
> > +
> > +			num-lanes = <2>;
> > +
> > +			status = "disabled";
> > +		};
> > +
> >  		tlmm: pinctrl@1000000 {
> >  			compatible = "qcom,ipq5332-tlmm";
> >  			reg = <0x01000000 0x300000>;
> > @@ -212,8 +249,8 @@ gcc: clock-controller@1800000 {
> >  			#interconnect-cells = <1>;
> >  			clocks = <&xo_board>,
> >  				 <&sleep_clk>,
> > -				 <0>,
> > -				 <0>,
> > +				 <&pcie1_phy>,
> > +				 <&pcie0_phy>,
> >  				 <0>;
> >  		};
> >
> > @@ -479,6 +516,186 @@ frame@b128000 {
> >  				status = "disabled";
> >  			};
> >  		};
> > +
> > +		pcie1: pcie@18000000 {
>
> pcie@

Not able to understand. Can you please let me know if you want
the label 'pcie1' to be dropped? This label is used in the board
dts to enable this node, so cannot drop.

> > +			compatible = "qcom,pcie-ipq5332", "qcom,pcie-ipq9574";
> > +			reg = <0x00088000 0x3000>,
> > +			      <0x18000000 0xf1d>,
> > +			      <0x18000f20 0xa8>,
> > +			      <0x18001000 0x1000>,
> > +			      <0x18100000 0x1000>,
> > +			      <0x0008b000 0x1000>;
> > +			reg-names = "parf",
> > +				    "dbi",
> > +				    "elbi",
> > +				    "atu",
> > +				    "config",
> > +				    "mhi";
> > +			device_type = "pci";
> > +			linux,pci-domain = <1>;
> > +			bus-range = <0x00 0xff>;
> > +			num-lanes = <2>;
> > +			#address-cells = <3>;
> > +			#size-cells = <2>;
> > +
> > +			ranges = <0x01000000 0 0x18200000 0x18200000 0 0x00100000>,
>
> I/O address space should start from 0. Please refer other SoCs.
>
> Also, use 0x0 for consistency.

Ok.

> > +				 <0x02000000 0 0x18300000 0x18300000 0 0x07d00000>;
> > +
> > +			msi-map = <0x0 &v2m0 0x0 0xffd>;
> > +
> > +			interrupts = <GIC_SPI 403 IRQ_TYPE_LEVEL_HIGH>,
> > +				     <GIC_SPI 404 IRQ_TYPE_LEVEL_HIGH>,
> > +				     <GIC_SPI 405 IRQ_TYPE_LEVEL_HIGH>,
> > +				     <GIC_SPI 406 IRQ_TYPE_LEVEL_HIGH>,
> > +				     <GIC_SPI 407 IRQ_TYPE_LEVEL_HIGH>,
> > +				     <GIC_SPI 408 IRQ_TYPE_LEVEL_HIGH>,
> > +				     <GIC_SPI 409 IRQ_TYPE_LEVEL_HIGH>,
> > +				     <GIC_SPI 410 IRQ_TYPE_LEVEL_HIGH>;
> > +			interrupt-names = "msi0",
> > +					  "msi1",
> > +					  "msi2",
> > +					  "msi3",
> > +					  "msi4",
> > +					  "msi5",
> > +					  "msi6",
> > +					  "msi7";
>
> Is there a 'global' interrupt? If so, please add it.

Ok.

> > +
> > +			#interrupt-cells = <1>;
> > +			interrupt-map-mask = <0 0 0 0x7>;
> > +			interrupt-map = <0 0 0 1 &intc 0 0 412 IRQ_TYPE_LEVEL_HIGH>,
> > +					<0 0 0 2 &intc 0 0 413 IRQ_TYPE_LEVEL_HIGH>,
> > +					<0 0 0 3 &intc 0 0 414 IRQ_TYPE_LEVEL_HIGH>,
> > +					<0 0 0 4 &intc 0 0 415 IRQ_TYPE_LEVEL_HIGH>;
> > +
> > +			clocks = <&gcc GCC_PCIE3X2_AXI_M_CLK>,
> > +				 <&gcc GCC_PCIE3X2_AXI_S_CLK>,
> > +				 <&gcc GCC_PCIE3X2_AXI_S_BRIDGE_CLK>,
> > +				 <&gcc GCC_PCIE3X2_RCHG_CLK>,
> > +				 <&gcc GCC_PCIE3X2_AHB_CLK>,
> > +				 <&gcc GCC_PCIE3X2_AUX_CLK>;
> > +			clock-names = "axi_m",
> > +				      "axi_s",
> > +				      "axi_bridge",
> > +				      "rchng",
> > +				      "ahb",
> > +				      "aux";
> > +
> > +			resets = <&gcc GCC_PCIE3X2_PIPE_ARES>,
> > +				 <&gcc GCC_PCIE3X2_CORE_STICKY_ARES>,
> > +				 <&gcc GCC_PCIE3X2_AXI_S_STICKY_ARES>,
> > +				 <&gcc GCC_PCIE3X2_AXI_S_CLK_ARES>,
> > +				 <&gcc GCC_PCIE3X2_AXI_M_STICKY_ARES>,
> > +				 <&gcc GCC_PCIE3X2_AXI_M_CLK_ARES>,
> > +				 <&gcc GCC_PCIE3X2_AUX_CLK_ARES>,
> > +				 <&gcc GCC_PCIE3X2_AHB_CLK_ARES>;
> > +			reset-names = "pipe",
> > +				      "sticky",
> > +				      "axi_s_sticky",
> > +				      "axi_s",
> > +				      "axi_m_sticky",
> > +				      "axi_m",
> > +				      "aux",
> > +				      "ahb";
> > +
> > +			phys = <&pcie1_phy>;
> > +			phy-names = "pciephy";
> > +
> > +			interconnects = <&gcc MASTER_SNOC_PCIE3_2_M &gcc SLAVE_SNOC_PCIE3_2_M>,
> > +					<&gcc MASTER_ANOC_PCIE3_2_S &gcc SLAVE_ANOC_PCIE3_2_S>;
> > +			interconnect-names = "pcie-mem", "cpu-pcie";
>
> Can you check if the controller supports cache coherency? If so, you need to add
> 'dma-coherent'.

Ok.

> > +
> > +			status = "disabled";
>
> Please define the root port node as well.
>
> All the above comments applies to 2nd controller node as well.

Ok.

Thanks
Varada

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
