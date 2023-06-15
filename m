Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A72E3EB64D9
	for <linux-phy@archiver.kernel.org>; Thu, 15 Jun 2023 07:18:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=amyOO+D9g5l0Bl3diN3yICeHRZUVdQ7Lp+kO9sv4aBo=; b=qw7LePjP8kQWP1
	wwnzUAsb3fS9495bG8Z0iRpU8IDqEOdxzuWWsACv8kJ91YgdceWuLeDOZDUs/FdZAZD5wpH2L7+EV
	VB1glWdjE3jMvb+6XMuyS+EFCfnVF85/oEa5NvHt3XesjLIe0z4VxVe1vkjiUCSz2Bo8Es7RQXu74
	rIXn6vnCymWHznNNLjI5W4a9qdqU/gQgBg5atuCAb9KwbCFigPeONn3DImZIzqAdBw2kt0KHTjtJf
	IBS5/5y/+OYOoMt5XcMF2QwuJhtVbba+724XPgrUBIdI5QDLPApIu707jUBVPffsPwwntDk4x+i20
	oNXFawt0xR+Dqij2IaRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9hF5-00DyTN-14;
	Thu, 15 Jun 2023 07:18:03 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9hF2-00DyRv-1A;
	Thu, 15 Jun 2023 07:18:02 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 35F5DV13023328;
	Thu, 15 Jun 2023 07:17:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=date : from : to :
 cc : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=qcppdkim1; bh=rJSKRzs5JjhUGXJUWKlrqncxL+5LGWUOWygPzNMfNGo=;
 b=mtmKWYZ6vjyMlBbr2Gxx9ekv59RvSHgDyxBM0c0xYnYX4sr6uTA12MTEBICFGz+2POUW
 WxpMpNgR17WlPKooT7E/NGb8jjk1eUFEtzLi/c2zOh18G/Id8mRpCtGhZU4oJweQvnQw
 +7r+mj+mnc9tHPzIqbt2M5astntjcXLDzmQ3uFyxhS/x+QpX9nokcFEXgr07v+FpZtTk
 GZz7yRAtSxQNQA4eXOM2wvtzyyVTblHEdKmyiuWnqOGg2I8bRmjzNB6g+VnLKWV2FyVD
 XbhSQ5WQj5s6Ty5YVeeGlUunMagc8Vbp0bCEnoMbVR+zRYhrsYDfes3fgMwYp+ByDvDN LA== 
Received: from nasanppmta03.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3r7va2g7ne-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 15 Jun 2023 07:17:45 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 35F7Hj02001922
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 15 Jun 2023 07:17:45 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Thu, 15 Jun 2023 00:17:35 -0700
Date: Thu, 15 Jun 2023 12:47:30 +0530
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
CC: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <gregkh@linuxfoundation.org>, <catalin.marinas@arm.com>,
        <will@kernel.org>, <mturquette@baylibre.com>, <sboyd@kernel.org>,
        <p.zabel@pengutronix.de>, <arnd@arndb.de>, <geert+renesas@glider.be>,
        <neil.armstrong@linaro.org>, <nfraprado@collabora.com>,
        <broonie@kernel.org>, <rafal@milecki.pl>, <quic_srichara@quicinc.com>,
        <quic_varada@quicinc.org>, <quic_wcheng@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <linux-clk@vger.kernel.org>
Subject: Re: [PATCH 7/9] arm64: dts: qcom: ipq5332: Add USB related nodes
Message-ID: <20230615071729.GA9973@varda-linux.qualcomm.com>
References: <cover.1686126439.git.quic_varada@quicinc.com>
 <1b48e737aa14f5b5539cbf04d473182121d5b1ad.1686126439.git.quic_varada@quicinc.com>
 <49258bcf-da13-78a9-8ea6-4fc7bd9a4b1d@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <49258bcf-da13-78a9-8ea6-4fc7bd9a4b1d@linaro.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: xswCbauYHkr_a5gcuYpHmqRmq45OPgjw
X-Proofpoint-ORIG-GUID: xswCbauYHkr_a5gcuYpHmqRmq45OPgjw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.573,FMLib:17.11.176.26
 definitions=2023-06-15_04,2023-06-14_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=977
 priorityscore=1501 mlxscore=0 impostorscore=0 bulkscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 phishscore=0 malwarescore=0 spamscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2305260000 definitions=main-2306150060
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230615_001800_404644_EC7D6B04 
X-CRM114-Status: GOOD (  21.93  )
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

On Wed, Jun 07, 2023 at 08:35:09PM +0200, Krzysztof Kozlowski wrote:
> On 07/06/2023 12:56, Varadarajan Narayanan wrote:
> > Add USB phy and controller nodes
> >
> > Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> > ---
> >  arch/arm64/boot/dts/qcom/ipq5332.dtsi | 55 +++++++++++++++++++++++++++++++++++
> >  1 file changed, 55 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/ipq5332.dtsi b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> > index c2d6cc65..3183357 100644
> > --- a/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> > @@ -383,6 +383,61 @@
> >  				status = "disabled";
> >  			};
> >  		};
> > +
> > +		usb_0_m31phy: hs_m31phy@7b000 {
>
> Node names should be generic. See also explanation and list of examples
> in DT specification:
> https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

Ok.

> > +			compatible = "qcom,ipq5332-m31-usb-hsphy";
> > +			reg = <0x0007b000 0x12C>,
> > +			      <0x08af8800 0x400>;
>
> Lowercase hex only.

Ok.

> > +			reg-names = "m31usb_phy_base",
> > +				    "qscratch_base";
> > +			phy_type= "utmi";
> > +
> > +			resets = <&gcc GCC_QUSB2_0_PHY_BCR>;
> > +			reset-names = "usb2_phy_reset";
> > +
> > +			status = "okay";
>
> It's by default. Drop.

Ok.

> > +		};
> > +
> > +		usb2: usb2@8a00000 {
>
> It does not look like you tested the DTS against bindings. Please run
> `make dtbs_check` (see
> Documentation/devicetree/bindings/writing-schema.rst for instructions).
>
> Node names should be generic. See also explanation and list of examples
> in DT specification:
> https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

Ok.

> > +			compatible = "qcom,ipq5332-dwc3", "qcom,dwc3";
> > +			#address-cells = <1>;
> > +			#size-cells = <1>;
> > +			ranges;
> > +
> > +			reg = <0x08af8800 0x100>;
>
> reg is always after compatible. Ranges is third. Then you will spot that
> address is wrong.

Ok.

> > +
> > +			clocks = <&gcc GCC_USB0_MASTER_CLK>,
> > +				<&gcc GCC_SNOC_USB_CLK>,
> > +				<&gcc GCC_USB0_SLEEP_CLK>,
> > +				<&gcc GCC_USB0_MOCK_UTMI_CLK>;
>
> Fix alignment.

Ok.

> > +
> > +			clock-names = "core",
> > +				"iface",
> > +				"sleep",
> > +				"mock_utmi";
>
> Fix alignment.

Ok.

> > +
> > +			interrupts-extended = <&intc GIC_SPI 134 IRQ_TYPE_LEVEL_HIGH>;
> > +			interrupt-names = "pwr_event";
> > +

Thanks
Varada

> Best regards,
> Krzysztof
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
