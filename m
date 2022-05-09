Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1EBA0C433F5
	for <linux-phy@archiver.kernel.org>; Mon,  9 May 2022 03:20:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=df0aAYkPeD1H1w3rMGJmg5m7XpnIZOEioBMslV54ZKY=; b=BIEGYvd2XdWkkk
	ZKtfgkasXUQvZ1H6HwfvJ9wxlTlzxOVnGCaFSZ8/C6TdTGPDNPh0XvmUZI7/M53O4sGegEJCXh1QF
	yCeGz0rTi22uh1+PO8jc1pNd+R6yMLBuFwaZeG+ReDA5KJ0pQZF+ugoBMCwr88Dof45w0Yx564ZDO
	UJh04J31FiUhuRSSSjGUIT3tzcHMtt5IH8eicjsesFBVD5QU2jYbaFUVH+RKRu6XmoI2K48y/fu9f
	Bp/OMQhgb01f92TolPwXgGwUcCNmari1mXbiPoc9scH6z/mkVvNa5hROOSFlVm6e5eloGqjCh8iuR
	b9U7Z7rM9Et+tDDmo7SQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nntwZ-00C9X2-Gh; Mon, 09 May 2022 03:20:19 +0000
Received: from alexa-out.qualcomm.com ([129.46.98.28])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nntwV-00C9WA-NE
 for linux-phy@lists.infradead.org; Mon, 09 May 2022 03:20:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
 t=1652066416; x=1683602416;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=dTZrcfWUgN6fGzVBM2+6gc6m+RANq5DplIKCSgrMy/c=;
 b=QS2clwOy8+VdQwx56ohd3s9PM1q3X8rz79zO2cUJ9qHGeA//+NxcQ167
 T7epQhMrreRbtOmSaorNTqyRtDKKa+sgm7J8DNPjevAv3Cg8S2Xp657aQ
 NOxR/Rpc8CARPCIJcfBQsQ/0h2XUOiyhoC0rB//0GTqXnijL3hsAo+ERu Q=;
Received: from ironmsg08-lv.qualcomm.com ([10.47.202.152])
 by alexa-out.qualcomm.com with ESMTP; 08 May 2022 20:20:15 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
 by ironmsg08-lv.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2022 20:20:15 -0700
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Sun, 8 May 2022 20:20:15 -0700
Received: from hu-pkondeti-hyd.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Sun, 8 May 2022 20:20:09 -0700
Date: Mon, 9 May 2022 08:50:05 +0530
From: Pavan Kondeti <quic_pkondeti@quicinc.com>
To: Krishna Kurapati <quic_kriskura@quicinc.com>
CC: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Stephen Boyd <swboyd@chromium.org>, "Doug
 Anderson" <dianders@chromium.org>, Matthias Kaehlcke <mka@chromium.org>,
 Wesley Cheng <wcheng@codeaurora.org>, <devicetree@vger.kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <linux-usb@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <quic_pkondeti@quicinc.com>, <quic_ppratap@quicinc.com>,
 <quic_vpulyala@quicinc.com>, Sandeep Maheswaram <quic_c_sanm@quicinc.com>
Subject: Re: [v3 3/3] arm64: dts: qcom: sc7280: Update SNPS Phy params for
 SC7280 IDP device
Message-ID: <20220509032005.GJ4640@hu-pkondeti-hyd.qualcomm.com>
References: <1652011947-18575-1-git-send-email-quic_kriskura@quicinc.com>
 <1652011947-18575-4-git-send-email-quic_kriskura@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1652011947-18575-4-git-send-email-quic_kriskura@quicinc.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220508_202015_847105_F4694655 
X-CRM114-Status: GOOD (  13.40  )
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

Hi Krishna,

On Sun, May 08, 2022 at 05:42:27PM +0530, Krishna Kurapati wrote:
> Overriding the SNPS Phy tuning parameters for SC7280 IDP device.
> 
> Signed-off-by: Sandeep Maheswaram <quic_c_sanm@quicinc.com>
> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sc7280-idp.dtsi | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> index 5eb6689..ad85ffb 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> @@ -325,6 +325,12 @@
>  	vdda-pll-supply = <&vreg_l10c_0p8>;
>  	vdda33-supply = <&vreg_l2b_3p0>;
>  	vdda18-supply = <&vreg_l1c_1p8>;
> +	qcom,hs-rise-fall-time-bps = <0>;
> +	qcom,squelch-detector-bps = <(-2090)>;
> +	qcom,hs-disconnect-bps = <1743>;
> +	qcom,hs-amplitude-bps = <1780>;
> +	qcom,hs-crossover-voltage = <(-31)>;
> +	qcom,hs-output-impedance = <2600>;
>  };

Is this an example change or do we see any HS electrical compliance failures
on SC7280 IDP that will get fixed with these override sequence? 

Thanks,
Pavan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
