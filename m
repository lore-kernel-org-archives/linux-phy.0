Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0B60EB64DB
	for <linux-phy@archiver.kernel.org>; Thu, 15 Jun 2023 06:53:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pUjLl/W8AEoCSz920+01wgpe2fXJAcS7zGop57d2cx4=; b=ULFx3X8JH/zoRL
	F+3TCTB1pF8UKMCUZZ7IVCXaUy2k2G21q/eaFYgOMmbBuM2Wqq6CF9k4E0Ffc2gl+XhtPKL6jJTsU
	T7xHiv4hGjJZeM75pZaYBY+vr3SQKipk1Jp9UZi5QEvOdyMoDjdZzyfe98Xm6l+8C5vvPwHksqB6j
	X5vVY6m+PdGDB+iNan6WM+v/MTBXim07B1gTxggBzRH6CbnuzAywKpBe5Gv9TwInJ0UmGa0W2pN59
	o196JpGxDHaqjjHU2mTWaPftY0bXCr+YJt45AY4Jhf6oVPZTRdSPFJHrpl97ZxsX1AKXEWI8VL2Wc
	x56iCRbNNynP9U89L0xQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9grA-00DurM-1L;
	Thu, 15 Jun 2023 06:53:20 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9gr8-00DuqQ-1A;
	Thu, 15 Jun 2023 06:53:19 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 35F4oQPC020257;
	Thu, 15 Jun 2023 06:53:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=date : from : to :
 cc : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=qcppdkim1; bh=UEMwmEG9njOUsvy3AzL1HhgZC0gazs7PPtx1MYKTqzQ=;
 b=fQpDVHBmXTRH4HuGki6vvYaBYtcYdPeF2iHKEFddqGRluLGq/xBnyCIDrjIp3dD9AYZW
 jU5ohQ1of1zMJ6JDQ0DkZ6pYH8OjsuIqPoYYEDBC+DeKF3BLnUXlty64fsufLI4YFB+x
 ibHa+hBEN3ISIIsWAN7/lnL648olcDu34gSpKiHG3vhA0fsPISbxGNHx/e+jiUDUIMHE
 frCu3UGxyATMvBNfGblXYQoBoXzRoh+IhQQcEdjXiEXobHyg1W42+kZ5zR56JQZkRM1D
 mSCG3PC2cpZK6mvV8Id+IRMbLJVtIueD2cuBLeafw6acDGwBrCc1IIMpoEiMgFYdF2jl UA== 
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3r7u8c89yg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 15 Jun 2023 06:53:00 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 35F6r0kI014633
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 15 Jun 2023 06:53:00 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Wed, 14 Jun 2023 23:52:50 -0700
Date: Thu, 15 Jun 2023 12:22:41 +0530
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
CC: <agross@kernel.org>, <andersson@kernel.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <robh+dt@kernel.org>,
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
Message-ID: <20230615065240.GI22186@varda-linux.qualcomm.com>
References: <cover.1686126439.git.quic_varada@quicinc.com>
 <1b48e737aa14f5b5539cbf04d473182121d5b1ad.1686126439.git.quic_varada@quicinc.com>
 <ff8c76e4-fb6c-106d-eae3-45edc06b0c0b@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ff8c76e4-fb6c-106d-eae3-45edc06b0c0b@linaro.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: 5-zxQWYjHaNUlXgZztrkg-8-PrkiKNZT
X-Proofpoint-GUID: 5-zxQWYjHaNUlXgZztrkg-8-PrkiKNZT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.573,FMLib:17.11.176.26
 definitions=2023-06-15_04,2023-06-14_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015
 lowpriorityscore=0 suspectscore=0 mlxlogscore=999 malwarescore=0
 phishscore=0 bulkscore=0 impostorscore=0 priorityscore=1501 spamscore=0
 mlxscore=0 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2305260000 definitions=main-2306150056
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_235318_434094_9CF7170A 
X-CRM114-Status: GOOD (  25.17  )
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

On Wed, Jun 07, 2023 at 08:24:04PM +0200, Konrad Dybcio wrote:
>
>
> On 7.06.2023 12:56, Varadarajan Narayanan wrote:
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
> > +			compatible = "qcom,ipq5332-m31-usb-hsphy";
> > +			reg = <0x0007b000 0x12C>,
> random uppercase hex

Ok.

> > +			      <0x08af8800 0x400>;
> > +			reg-names = "m31usb_phy_base",
> > +				    "qscratch_base";
> > +			phy_type= "utmi";
> Missing space before '='

Ok.

> > +
> > +			resets = <&gcc GCC_QUSB2_0_PHY_BCR>;
> > +			reset-names = "usb2_phy_reset";
> > +
> > +			status = "okay";
> If you're only defining the node, it's enabled by default
>
> In this case, you'd probably want to disable it by default.

Ok.

> > +		};
> > +
> > +		usb2: usb2@8a00000 {
> > +			compatible = "qcom,ipq5332-dwc3", "qcom,dwc3";
> > +			#address-cells = <1>;
> > +			#size-cells = <1>;
> > +			ranges;
> Please push these 3 properties to the end
>
> And add status = "disabled" below them.

Ok.

> > +
> > +			reg = <0x08af8800 0x100>;
> > +
> > +			clocks = <&gcc GCC_USB0_MASTER_CLK>,
> > +				<&gcc GCC_SNOC_USB_CLK>,
> > +				<&gcc GCC_USB0_SLEEP_CLK>,
> > +				<&gcc GCC_USB0_MOCK_UTMI_CLK>;
> > +
> Please remove this newline.
>
> > +			clock-names = "core",
> > +				"iface",
> > +				"sleep",
> > +				"mock_utmi";
> Please align this, and all other similar lists.

Ok.

> > +
> > +			interrupts-extended = <&intc GIC_SPI 134 IRQ_TYPE_LEVEL_HIGH>;
> interrupts-extended is unnecessary with just a single interrupt
> source.. you can make it `interrupts` and drop the GIC reference.
>
> It would also be nice to push the interrupt properties below 'reg'.
> We're working on documenting and automating checking the preferred
> property order.

Ok.

> > +			interrupt-names = "pwr_event";
> > +
> > +			resets = <&gcc GCC_USB_BCR>;
> > +
> > +			qcom,select-utmi-as-pipe-clk;
> > +
> > +			usb2_0_dwc: usb@8a00000 {
> > +				compatible = "snps,dwc3";
> > +				reg = <0x08a00000 0xe000>;
> > +				clocks = <&gcc GCC_USB0_MOCK_UTMI_CLK>;
> > +				clock-names = "ref";
> > +				interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
> > +				usb-phy = <&usb_0_m31phy>;
> > +				tx-fifo-resize;
> > +				snps,is-utmi-l1-suspend;
> > +				snps,hird-threshold = /bits/ 8 <0x0>;
> > +				snps,dis_u2_susphy_quirk;
> > +				snps,dis_u3_susphy_quirk;
> > +				snps,ref-clock-period-ns = <21>;
> 1/21 is 0.0476..  that doesn't seem to correspond to the ref
> clk frequency?

dwc3_ref_clk_period() prefers ref clock's rate over ref-clock-period-ns.
Since ref clock is available this is not used. Will remove this.

Thanks
Varada

> Konrad
> > +			};
> > +		};
> >  	};
> >
> >  	timer {

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
