Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 218EEC433F5
	for <linux-phy@archiver.kernel.org>; Wed, 11 May 2022 02:31:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T4MpV8dcMcwOVgkNb8Chgx/xWkAH7Gs9RGtJsKIgxtQ=; b=uRD5xX/sZIjzPL
	21W9RL9l9MQjWcaw3hg27uv99bu1zkTrNTnjqE279WCMMMJXFkGNcu/NHwuxRwiBde9DEQEz7vm9r
	PhQxYvdScnhK8HdspeXV8c9l0M/IesApDip8kKZzb+DzKkJ2nttWUPQApIKzCT8aGDh4JoZxnx8OV
	wvWp5JdMD+xrfsiPgzFurVE51EbklvTYqy3Yu/a/bnChahLrdnLSRr1XawuKNs/147SxdN11SZkk7
	/36H2T8pL+nFQd7ZAzCSZUs4DFKZmRci2sOA1r1fgw9YOIQtbLnrTpkiZNPXPGlu8Rj7XilyjPOT8
	BLXUb71bR7n2Q5jQoX4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1noc8Q-004nm9-Gn; Wed, 11 May 2022 02:31:30 +0000
Received: from alexa-out-sd-02.qualcomm.com ([199.106.114.39])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1noc8N-004njs-Ux
 for linux-phy@lists.infradead.org; Wed, 11 May 2022 02:31:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
 t=1652236287; x=1683772287;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=RlxOaNZc/4I0mSrTZJv3nct2D80p9NBIlZoZaPymPRc=;
 b=gDOEgADPngLt0QxsTs41iNS5v6ABjPShCNWs6hNehZ+oNqJAeimkwXF5
 aLEcM+ZjoJUbJcYAAptWEzCuSs2sbsU33V/liymcfQD3JzWXtCtcc5vzP
 uaF9rsOG1weUcb4plGUaFWpT2k7n+hOV/lQLNYu+HVB82drcmuHIpD71c 8=;
Received: from unknown (HELO ironmsg04-sd.qualcomm.com) ([10.53.140.144])
 by alexa-out-sd-02.qualcomm.com with ESMTP; 10 May 2022 19:31:20 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
 by ironmsg04-sd.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2022 19:31:19 -0700
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Tue, 10 May 2022 19:31:19 -0700
Received: from hu-pkondeti-hyd.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Tue, 10 May 2022 19:31:13 -0700
Date: Wed, 11 May 2022 08:01:09 +0530
From: Pavan Kondeti <quic_pkondeti@quicinc.com>
To: Krishna Kurapati PSSNV <quic_kriskura@quicinc.com>
CC: Pavan Kondeti <quic_pkondeti@quicinc.com>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, "Andy
 Gross" <agross@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Stephen Boyd
 <swboyd@chromium.org>, Doug Anderson <dianders@chromium.org>, "Matthias
 Kaehlcke" <mka@chromium.org>, Wesley Cheng <wcheng@codeaurora.org>,
 <devicetree@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
 <linux-usb@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <quic_ppratap@quicinc.com>,
 <quic_vpulyala@quicinc.com>
Subject: Re: [v3 3/3] arm64: dts: qcom: sc7280: Update SNPS Phy params for
 SC7280 IDP device
Message-ID: <20220511023109.GA13360@hu-pkondeti-hyd.qualcomm.com>
References: <1652011947-18575-1-git-send-email-quic_kriskura@quicinc.com>
 <1652011947-18575-4-git-send-email-quic_kriskura@quicinc.com>
 <20220509032005.GJ4640@hu-pkondeti-hyd.qualcomm.com>
 <7ef88262-4292-3077-00a1-dc06b2483b10@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7ef88262-4292-3077-00a1-dc06b2483b10@quicinc.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220510_193128_062037_F3AB5B17 
X-CRM114-Status: GOOD (  12.81  )
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

On Tue, May 10, 2022 at 11:05:42PM +0530, Krishna Kurapati PSSNV wrote:
> 
> On 5/9/2022 8:50 AM, Pavan Kondeti wrote:
> >Hi Krishna,
> >
> >On Sun, May 08, 2022 at 05:42:27PM +0530, Krishna Kurapati wrote:
> >>Overriding the SNPS Phy tuning parameters for SC7280 IDP device.
> >>
> >>Signed-off-by: Sandeep Maheswaram <quic_c_sanm@quicinc.com>
> >>Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> >>---
> >>  arch/arm64/boot/dts/qcom/sc7280-idp.dtsi | 6 ++++++
> >>  1 file changed, 6 insertions(+)
> >>
> >>diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> >>index 5eb6689..ad85ffb 100644
> >>--- a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> >>+++ b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> >>@@ -325,6 +325,12 @@
> >>  	vdda-pll-supply = <&vreg_l10c_0p8>;
> >>  	vdda33-supply = <&vreg_l2b_3p0>;
> >>  	vdda18-supply = <&vreg_l1c_1p8>;
> >>+	qcom,hs-rise-fall-time-bps = <0>;
> >>+	qcom,squelch-detector-bps = <(-2090)>;
> >>+	qcom,hs-disconnect-bps = <1743>;
> >>+	qcom,hs-amplitude-bps = <1780>;
> >>+	qcom,hs-crossover-voltage = <(-31)>;
> >>+	qcom,hs-output-impedance = <2600>;
> >>  };
> >Is this an example change or do we see any HS electrical compliance failures
> >on SC7280 IDP that will get fixed with these override sequence?
> >
> >Thanks,
> >Pavan
> 
> Hi Pavan,
> 
> These results were based on compliance testing results.
> 
Ok, Do we know what tests are failing and getting fixed with these settings?
Can you mention it in the changelog?

Thanks,
Pavan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
