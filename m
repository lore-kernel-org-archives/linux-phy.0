Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE324C761AF
	for <linux-phy@archiver.kernel.org>; Thu, 30 Mar 2023 07:24:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z+Srw4CnoR6G3BZXF3fVab+lE5u0LauxZXDf3GAQcdw=; b=a2Gh8MUSvpN3YP
	unsD7J7FExKcnPQMrUH/Tan1ONrg3lWsFvhzgjM9BpECNdjLW1XxRqnB69c+qFKHRj7woEAuybzS1
	X2YRoCo7v0qYrSoIn6dVuhalA9mcfj1XUbw1t6K9zSffEttGrUiYDsGz/rQtmWmEyC6tfMjW6RVu7
	OD0zXmnetrktCGCZETbsWqeeTPBXe5m7JXlcFVfNt6HPuogy8CtUpHcU0FgfisHr8gVykkwFM1kwq
	QuWhILx2m0XaSYuvhXdTT4LrkWiYnHqNAlzl+la2PM/mli9hRX8u+UsX0OpR2rBc5pi3xh73VHNoS
	Nx50USJ83tkdM+7R2LSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phmeA-002tGH-1c;
	Thu, 30 Mar 2023 07:24:34 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phme7-002tFs-0G
	for linux-phy@lists.infradead.org;
	Thu, 30 Mar 2023 07:24:32 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 32U3UmRK010140;
	Thu, 30 Mar 2023 07:24:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=date : from : to :
 cc : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=qcppdkim1; bh=w+Syh63jv6AaJxqbd0OqyDNkWhkp+4iA/H1tO4pev4o=;
 b=GET+fRvp9VHMkqXZ2oqWf8MHN7O8DZPjrpf9GzGYYVLSC7ZOb0oVwNoLUq3ELJEpJWWK
 r8Md0c+547CjAHSqPI6nDiBhC+dCa3TeLY2/RcGXaeqTNZaWhwE8frmzoDCGcWklg7O7
 8QkxCBYRKcs6M7l/8+sjXh5IQuZCZjo6l/0va1PFI3wWfHYfRx4KXQGR27sNzZPEtVbq
 Bc31gwVGUNBQSXMyvUdPSAIgj5B7T7Om+F+/jI69wwDhgX3JUh9gJDyvqYURa78uidO0
 1IT8Za0IPEkH5S3F6BX8h/AA6Y39WaboGoUuNzu8euYG5AMij91urAsv895n+PyIRXdf eg== 
Received: from nasanppmta05.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3pmq1vaetr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 30 Mar 2023 07:24:25 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 32U7O412028454
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 30 Mar 2023 07:24:04 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Thu, 30 Mar 2023 00:23:58 -0700
Date: Thu, 30 Mar 2023 12:53:54 +0530
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
CC: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <gregkh@linuxfoundation.org>,
        <mturquette@baylibre.com>, <sboyd@kernel.org>,
        <quic_wcheng@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-usb@vger.kernel.org>,
        <linux-clk@vger.kernel.org>
Subject: Re: [PATCH v4 7/8] arm64: dts: qcom: ipq9574: Add USB related nodes
Message-ID: <20230330072353.GF13508@varda-linux.qualcomm.com>
References: <cover.1679909245.git.quic_varada@quicinc.com>
 <f3c42c0e2e2fb309dc0d248e0e1b921c6b8c11f9.1679909245.git.quic_varada@quicinc.com>
 <e5d4663f-c816-4789-a63c-5d6ce4744692@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e5d4663f-c816-4789-a63c-5d6ce4744692@linaro.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: AtMFVF46kWJSzOm7HrAWHkqC66jO2FmD
X-Proofpoint-ORIG-GUID: AtMFVF46kWJSzOm7HrAWHkqC66jO2FmD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-30_03,2023-03-30_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 mlxlogscore=988
 impostorscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0 spamscore=0
 suspectscore=0 adultscore=0 priorityscore=1501 clxscore=1015 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2303200000
 definitions=main-2303300059
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230330_002431_132211_E0192960 
X-CRM114-Status: GOOD (  25.80  )
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

On Tue, Mar 28, 2023 at 09:09:09AM +0200, Krzysztof Kozlowski wrote:
> On 27/03/2023 11:30, Varadarajan Narayanan wrote:
> > Add USB phy and controller related nodes
> >
> > Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> > ---
> >  Changes in v4:
> > 	- Use newer bindings without subnodes
> > 	- Fix coding style issues
> >
> >  Changes in v3:
> > 	- Insert the nodes at proper location
> >
> >  Changes in v2:
> > 	- Fixed issues flagged by Krzysztof
> > 	- Fix issues reported by make dtbs_check
> > 	- Remove NOC related clocks (to be added with proper
> > 	  interconnect support)
> > ---
> >  arch/arm64/boot/dts/qcom/ipq9574.dtsi | 83 +++++++++++++++++++++++++++++++++++
> >  1 file changed, 83 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/ipq9574.dtsi b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> > index 2bb4053..5379c25 100644
> > --- a/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> > @@ -215,6 +215,45 @@
> >  		#size-cells = <1>;
> >  		ranges = <0 0 0 0xffffffff>;
> >
> > +		qusb_phy_0: phy@7b000 {
> > +			compatible = "qcom,ipq9574-qusb2-phy";
> > +			reg = <0x0007b000 0x180>;
> > +			#phy-cells = <0>;
> > +
> > +			clocks = <&gcc GCC_USB0_PHY_CFG_AHB_CLK>,
> > +				 <&xo_board_clk>;
> > +			clock-names = "cfg_ahb",
> > +				      "ref";
> > +
> > +			resets = <&gcc GCC_QUSB2_0_PHY_BCR>;
> > +			status = "disabled";
> > +		};
> > +
> > +		ssphy_0: phy@7d000 {
> > +			compatible = "qcom,ipq9574-qmp-usb3-phy";
> > +			reg = <0x0007d000 0xa00>;
> > +			#clock-cells = <1>;
> > +			#address-cells = <1>;
> > +			#size-cells = <1>;
> > +			ranges;
>
> Why do you need these three?

Don't need these. Have moved to qcom,sc8280xp-qmp-usb3-uni-phy.yaml
specification instead of qcom,msm8996-qmp-usb3-phy.yaml. Will
update accordingly and post.

> > +
> > +			clocks = <&gcc GCC_USB0_AUX_CLK>,
> > +				 <&gcc GCC_USB0_PHY_CFG_AHB_CLK>,
> > +				 <&gcc GCC_USB0_PIPE_CLK>;
> > +			clock-names = "aux",
> > +				      "cfg_ahb",
> > +				      "pipe";
> > +
> > +			resets = <&gcc GCC_USB0_PHY_BCR>,
> > +				 <&gcc GCC_USB3PHY_0_PHY_BCR>;
> > +			reset-names = "phy",
> > +				      "common";
> > +			status = "disabled";
> > +
> > +			#phy-cells = <0>;
> > +			clock-output-names = "usb0_pipe_clk";
>
> Does not look like you tested the DTS against bindings. Please run `make
> dtbs_check` (see Documentation/devicetree/bindings/writing-schema.rst
> for instructions).

Have addressed these and have created a new patch. Will post it
shortly. IPQ9574 doesn't have any power domains, hence don't have
power-domains entry in the DT node. make dtbs_check is giving the
following messages hope that is ok

	/local/mnt/workspace/varada/varda-linux/arch/arm64/boot/dts/qcom/ipq9574-al02-c7.dtb: phy@7d000: 'power-domains' is a required property
        From schema: /local/mnt/workspace/varada/varda-linux/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml

	/local/mnt/workspace/varada/varda-linux/arch/arm64/boot/dts/qcom/ipq9574-al02-c7.dtb: usb@8a00000: 'power-domains' is a required property
        From schema: /local/mnt/workspace/varada/varda-linux/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml

>
> > +		};
> > +
> >  		pcie0_phy: phy@84000 {
> >  			compatible = "qcom,ipq9574-qmp-gen3x1-pcie-phy";
> >  			reg = <0x00084000 0x1bc>; /* Serdes PLL */
> > @@ -436,6 +475,50 @@
> >  			status = "disabled";
> >  		};
> >
> > +		usb3: usb3@8a00000 {
>
> usb@

Will fix.

> > +			compatible = "qcom,ipq9574-dwc3", "qcom,dwc3";
> > +			reg = <0x08af8800 0x400>;
> > +			#address-cells = <1>;
> > +			#size-cells = <1>;
> > +			ranges;
>
>
>
> > +
> > +			clocks = <&gcc GCC_SNOC_USB_CLK>,
> > +				 <&gcc GCC_ANOC_USB_AXI_CLK>,
> > +				 <&gcc GCC_USB0_MASTER_CLK>,
> > +				 <&gcc GCC_USB0_SLEEP_CLK>,
> > +				 <&gcc GCC_USB0_MOCK_UTMI_CLK>;
> > +
> > +			clock-names = "sys_noc_axi",
> > +				      "anoc_axi",
> > +				      "master",
> > +				      "sleep",
> > +				      "mock_utmi";
> > +
> > +			assigned-clocks = <&gcc GCC_USB0_MASTER_CLK>,
> > +					  <&gcc GCC_USB0_MOCK_UTMI_CLK>;
> > +			assigned-clock-rates = <200000000>,
> > +					       <24000000>;
> > +
> > +			resets = <&gcc GCC_USB_BCR>;
> > +			status = "disabled";
> > +
> > +			dwc_0: usb@8a00000 {
> > +				compatible = "snps,dwc3";
> > +				reg = <0x8a00000 0xcd00>;
> > +				clocks = <&gcc GCC_USB0_MOCK_UTMI_CLK>;
> > +				clock-names = "ref";
> > +				interrupts = <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>;
> > +				phys = <&qusb_phy_0>, <&ssphy_0>;
> > +				phy-names = "usb2-phy", "usb3-phy";
> > +				tx-fifo-resize;
> > +				snps,is-utmi-l1-suspend;
> > +				snps,hird-threshold = /bits/ 8 <0x0>;
> > +				snps,dis_u2_susphy_quirk;
> > +				snps,dis_u3_susphy_quirk;
> > +				dr_mode = "host";
>
> Are you saying that peripheral mode cannot work on this USB controller?
> Never?

Will move to board DTS.

Thanks
Varada

> Best regards,
> Krzysztof
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
