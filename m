Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35BD1C0015E
	for <linux-phy@archiver.kernel.org>; Wed, 19 Jul 2023 08:16:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l8pkmiVWZkNuBSJUMx3I0HdQj/GANEOx12WXXxDKFRI=; b=sFX9wc1+7FND/Y
	Rxj9MtSDhk91To0l8parVcbHVEKBrkYiRj6BCuu4FZ1mZZygmlp8S27LqVvCbgUxtDOENL8TuJDW8
	akLHAAadqyQBe7y4iUKNduvncl6GSAq88/5rJEIifPa+MTahvFirKzqrte0iGoMmgQ+KyerYlYzaD
	y4PeWnEZYRmWuQcGHthgLe5+9u4Y6zmXa9a6qsxuQ/kCvQWP087koyX6tnsN+O/64TS8Kh3EX8a2u
	atSwb2P1oZgVLcRFFAKL+4M8EKMZLUsWv16ZpiQBdSju4eOvZvn5aSJMu3Kh6BSkY77o9AOWZDNHj
	Q6tlVa6KWWGKz9rFoy4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qM2Mh-006HJi-1u;
	Wed, 19 Jul 2023 08:16:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qM2Mg-006HJ4-2J;
	Wed, 19 Jul 2023 08:16:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:CC:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=QlUaxF4lNsiBTdcU49lZ8jFbRsh1z2SpxDDTLFj5kCE=; b=U9XR+3DVSmz6MMXPW7Xvys/YDx
	aojvyZ+u4Is4ZUIlHit8K5jyBjiakJyk/L5Tjp2Edx52ZSbeWhOMNA3IqAythuaYROLOvcwUKNdwS
	SY7JBf519/Z3FhR61Qi+HWBMBkiwEOUBpmkw5LRGDTpFt3YFZSEIM9OHPSIv71huzQjy7R4HH7mZf
	pRHAUujhUto1PwMjVphkz4VtwWXblaO0uyHUmKv7Z5a0KyiNL08Gg9bomySlL/7QL38I03h7LOrX/
	0Cy1RttYTzkR4msoQkoShps+B/QRNVfHa9ivmfxU5UG50g5MMgzn0hxsTg7FZhz8wZSURsSYYQ3vx
	4GraRwhQ==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qLfrh-00BIlN-0J;
	Tue, 18 Jul 2023 08:15:28 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 36I7wSXc013480;
	Tue, 18 Jul 2023 08:14:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=date : from : to :
 cc : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=qcppdkim1; bh=QlUaxF4lNsiBTdcU49lZ8jFbRsh1z2SpxDDTLFj5kCE=;
 b=Cse8vtDex3891zr+cs17ubIS2jDDrfDgVBuYr8dzniwX7H77thfgTqjtPbhJmupdCMqY
 6ZEcogEQUp0U0HTQmrpRwwCqtpSeNLovjdUT95rMEDuCePYEsHFkVhg6YPkEgnKVs/d0
 6J8JZ3VmGPtzDtN4wwu+oN0CeY8somBMZzLrNOKWlHxBnlH1j3D7Z7e7Q7OyWaH+r+BY
 QTHZEoTzj5tbB7imfIUCktQnbSfkUwhvd2ZNbLGccGz/mpCCQ8+e0G5gA/AV6CLx9Rz/
 g9ZYWrz2P6eRDy/6sRFoNwgV2fUoCnaeOWG77E2R0ksWMj21JG1Dc79MEXyIn2mxH5SX /Q== 
Received: from nasanppmta03.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3rwps581rc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 18 Jul 2023 08:14:49 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 36I8Eleb031853
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 18 Jul 2023 08:14:47 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.30; Tue, 18 Jul 2023 01:14:39 -0700
Date: Tue, 18 Jul 2023 13:44:35 +0530
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
CC: <agross@kernel.org>, <andersson@kernel.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <gregkh@linuxfoundation.org>, <catalin.marinas@arm.com>,
        <will@kernel.org>, <p.zabel@pengutronix.de>, <arnd@arndb.de>,
        <geert+renesas@glider.be>, <neil.armstrong@linaro.org>,
        <nfraprado@collabora.com>, <rafal@milecki.pl>,
        <quic_srichara@quicinc.com>, <quic_varada@quicinc.org>,
        <quic_wcheng@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-usb@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v4 4/6] arm64: dts: qcom: ipq5332: Add USB related nodes
Message-ID: <20230718081434.GA5012@varda-linux.qualcomm.com>
References: <cover.1689160067.git.quic_varada@quicinc.com>
 <1f99805b6437aa8d6eaa4663e8d27b98ee595f00.1689160067.git.quic_varada@quicinc.com>
 <cfafdde2-4ded-517f-7c69-a751e53984e3@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cfafdde2-4ded-517f-7c69-a751e53984e3@linaro.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: O5yMJKbLUQKlQN6oq9z6uvLMPJAk0ldF
X-Proofpoint-ORIG-GUID: O5yMJKbLUQKlQN6oq9z6uvLMPJAk0ldF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-07-17_15,2023-07-13_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 malwarescore=0
 mlxlogscore=784 lowpriorityscore=0 suspectscore=0 bulkscore=0
 priorityscore=1501 adultscore=0 impostorscore=0 phishscore=0 clxscore=1015
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2306200000 definitions=main-2307180073
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230718_091525_903432_F4C28A6F 
X-CRM114-Status: GOOD (  21.43  )
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

On Sat, Jul 15, 2023 at 02:36:18PM +0200, Konrad Dybcio wrote:
> On 12.07.2023 13:38, Varadarajan Narayanan wrote:
> > Add USB phy and controller nodes.
> >
> > Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> > ---
> > v4:
> > 	Change node name
> > 	Remove blank line
> > 	'make CHECK_DTBS=y DT_SCHEMA_FILES=qcom qcom/ipq5332-rdp441.dtb' passed
> DT_SCHEMA_FILES accepts yaml files

I followed the example given in https://www.linaro.org/blog/tips-and-tricks-for-validating-devicetree-sources-with-the-devicetree-schema/

		make CHECK_DTBS=y DT_SCHEMA_FILES=trivial-devices.yaml qcom/sm8450-hdk.dtb
		make CHECK_DTBS=y DT_SCHEMA_FILES=/gpio/ qcom/sm8450-hdk.dtb
	---->	make CHECK_DTBS=y DT_SCHEMA_FILES=qcom qcom/sm8450-hdk.dtb

Will include the yaml from next time.

Thanks
Varada

> Konrad
> > v1:
> > 	Rename phy node
> > 	Change compatible from m31,ipq5332-usb-hsphy -> qcom,ipq5332-usb-hsphy
> > 	Remove 'qscratch' from phy node
> > 	Fix alignment and upper-case hex no.s
> > 	Add clock definition for the phy
> > 	Remove snps,ref-clock-period-ns as it is not used. dwc3_ref_clk_period()
> > 	in dwc3/core.c takes the frequency from ref clock and calculates fladj
> > 	as appropriate.
> > ---
> >  arch/arm64/boot/dts/qcom/ipq5332.dtsi | 53 +++++++++++++++++++++++++++++++++++
> >  1 file changed, 53 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/ipq5332.dtsi b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> > index 8bfc2db..8118356 100644
> > --- a/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> > @@ -405,6 +405,59 @@
> >  				status = "disabled";
> >  			};
> >  		};
> > +
> > +		usbphy0: usb-phy@7b000 {
> > +			compatible = "qcom,ipq5332-usb-hsphy";
> > +			reg = <0x0007b000 0x12c>;
> > +
> > +			clocks = <&gcc GCC_USB0_PHY_CFG_AHB_CLK>;
> > +			clock-names = "cfg_ahb";
> > +
> > +			resets = <&gcc GCC_QUSB2_0_PHY_BCR>;
> > +
> > +			status = "disabled";
> > +		};
> > +
> > +		usb2: usb2@8a00000 {
> > +			compatible = "qcom,ipq5332-dwc3", "qcom,dwc3";
> > +			reg = <0x08af8800 0x400>;
> > +
> > +			interrupts = <GIC_SPI 62 IRQ_TYPE_LEVEL_HIGH>;
> > +			interrupt-names = "hs_phy_irq";
> > +
> > +			clocks = <&gcc GCC_USB0_MASTER_CLK>,
> > +				 <&gcc GCC_SNOC_USB_CLK>,
> > +				 <&gcc GCC_USB0_SLEEP_CLK>,
> > +				 <&gcc GCC_USB0_MOCK_UTMI_CLK>;
> > +			clock-names = "core",
> > +				      "iface",
> > +				      "sleep",
> > +				      "mock_utmi";
> > +
> > +			resets = <&gcc GCC_USB_BCR>;
> > +
> > +			qcom,select-utmi-as-pipe-clk;
> > +
> > +			#address-cells = <1>;
> > +			#size-cells = <1>;
> > +			ranges;
> > +
> > +			status = "disabled";
> > +
> > +			usb2_0_dwc: usb@8a00000 {
> > +				compatible = "snps,dwc3";
> > +				reg = <0x08a00000 0xe000>;
> > +				clocks = <&gcc GCC_USB0_MOCK_UTMI_CLK>;
> > +				clock-names = "ref";
> > +				interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
> > +				usb-phy = <&usbphy0>;
> > +				tx-fifo-resize;
> > +				snps,is-utmi-l1-suspend;
> > +				snps,hird-threshold = /bits/ 8 <0x0>;
> > +				snps,dis_u2_susphy_quirk;
> > +				snps,dis_u3_susphy_quirk;
> > +			};
> > +		};
> >  	};
> >
> >  	timer {

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
