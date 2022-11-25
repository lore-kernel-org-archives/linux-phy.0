Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CD50C4332F
	for <linux-phy@archiver.kernel.org>; Fri, 25 Nov 2022 13:52:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vu7XMT1zovkMITMTA/7zBkUVzx9F/keFosUCzkE9RN4=; b=jpaltm/vqhCvVh
	B7vYf7pkkoEPLSLcFWSpY1t+kzLBn+fB7Ve2VI18jWsZ8bB6db1LcYPtOdRul3vEecc9kZBrBlI4m
	a9DnEN0vZwc3BEa45WRynShP5X/zn2GvSdLY3OeQOrJZXiv/2qoL7+UnKogQCp21n8IV/yGR3V2M7
	NBIn9arAhFtwv8WRiqdEkfwYr4tRG3fGdF/gr2inO1SNXFj/qev+rsgPtGjCBW21l7mY+furicZ8J
	sS6AK18s//GcPaWJOuFdu70EbFGncvgc9wSf5gH6gCZ1GNDWrzqiWdomlQ1vJ65iQH2mx6Lg0hsCv
	TPj4XcXFEfazJmEXLl9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyZ8Q-00GoXp-VI; Fri, 25 Nov 2022 13:52:54 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyZ8O-00GoWL-2C
	for linux-phy@lists.infradead.org; Fri, 25 Nov 2022 13:52:53 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 69EF662428;
	Fri, 25 Nov 2022 13:52:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C823DC433D6;
	Fri, 25 Nov 2022 13:52:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669384370;
	bh=qykFV7spweRMrT4EZcOj7Wfb2nv3rXRTU0mrl/58Hbw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lTSC8q8bDGdhwXkTWWuFycfOPPGJXlGJub23lsUHzvK83E6CP6VQa7oeGPikzyz+j
	 Ez+RfpT3TwKAkdOoods7a77H5GJIEatWyLi+tatnv9nloG37ATnQF1d25ROSuyBuyj
	 09o77V4qgZ4H+nDZUID0842bIIW7qjxZfTzLbfYrBUOnMddzEy3927+NUH4M25EeAW
	 KlzY/mDZt5F6e1kmMOwVJxuaHW4fyfDxTrAaJ7eyrxuuNizso8ipoHCWg+gkrKb60M
	 jvw0y2lU/xkf5MSoW+veF4jbXnYwyUT6SdTOOfsFGVLnVsIkKB9hucJiOMdVLfiE/f
	 hiRdaxUfHtyDg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1oyZ7y-0004v6-59; Fri, 25 Nov 2022 14:52:26 +0100
Date: Fri, 25 Nov 2022 14:52:26 +0100
From: Johan Hovold <johan@kernel.org>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-arm-msm@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org, Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [RFC PATCH v2 1/3] dt-bindings: phy: qcom,qmp-usb3-dp: Add
 sm6350 compatible
Message-ID: <Y4DImjwHQNlWPEKh@hovoldconsulting.com>
References: <20221125092749.46073-1-luca.weiss@fairphone.com>
 <Y4CP9fwhDXsLu57Q@hovoldconsulting.com>
 <COLABNHBQ1DG.1PB8SDY3FW1YY@otso>
 <Y4CWoT52Q8jnm/dF@hovoldconsulting.com>
 <COLE3UWQCQ8R.XY36EY07DDDK@otso>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <COLE3UWQCQ8R.XY36EY07DDDK@otso>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221125_055252_205436_8A0F43AB 
X-CRM114-Status: GOOD (  27.69  )
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

On Fri, Nov 25, 2022 at 01:53:25PM +0100, Luca Weiss wrote:
> On Fri Nov 25, 2022 at 11:19 AM CET, Johan Hovold wrote:
> > On Fri, Nov 25, 2022 at 10:55:31AM +0100, Luca Weiss wrote:
> > > On Fri Nov 25, 2022 at 10:50 AM CET, Johan Hovold wrote:

> > > > Yeah, you may need to add a platform specific section of the clocks,
> > > > which appear to be different, even if I'm not sure they are currently
> > > > described correctly (xo_board as cfg_ahb and "QLINK" as ref). How are
> > > > they named in the vendor's dts?
> > > 
> > > This is the msm-4.19 dts:
> > > https://android.googlesource.com/kernel/msm-extra/devicetree/+/refs/heads/android-msm-bramble-4.19-android11-qpr1/qcom/lagoon-usb.dtsi#354
> >
> > 		clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
> > 			<&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>,
> > 			<&rpmhcc RPMH_QLINK_CLK>,
> > 			<&gcc GCC_USB3_PRIM_CLKREF_CLK>,
> > 			<&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>;
> > 		clock-names = "aux_clk", "pipe_clk", "ref_clk_src",
> > 				"ref_clk", "com_aux_clk";
> >
> > So it looks like you don't need update the binding for the clocks as the
> > above matches sc8280xp:
> >
> > 	aux
> > 	ref
> > 	com_aux
> > 	usb3_pipe
> 
> Thanks for checking!
> 
> >
> > Parent clocks (ref_clk_src) should not be included in the binding, but
> > rather be handled by the clock driver. For example, see:
> >
> > 	https://lore.kernel.org/all/20221121085058.31213-4-johan+linaro@kernel.org/
> > 	https://lore.kernel.org/all/20221115152956.21677-1-quic_shazhuss@quicinc.com/
> 
> So I assume you mean that I shouldn't do this:
> 
> clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
>      <&rpmhcc RPMH_QLINK_CLK>,
>      <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>,
>      <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
> clock-names = "aux", "ref", "com_aux", "usb3_pipe";
> 
> But for "ref" use GCC_USB3_PRIM_CLKREF_CLK? That also seems to work
> fine, also if RPMH_QLINK_CLK is not used from Linux-side (checked in
> debugfs).

Exactly. Since the vendor dts describes RPMH_QLINK_CLK as parent of ref,
I'd suggest modelling that in the clock driver. Perhaps it has just been
left on by the boot firmware. Someone with access to docs may be able
explain how it is supposed to be used.

> And for the driver patch, I've discovered that this phy doesn't have
> separate txa/tbx region, so dts was also wrong there. Do you know if
> there's a way to test DP phy initialization without having all the USB-C
> plumbing in place? Might be good to validate at least phy init works if
> we're already touching all of this.

Do you mean that it appears to work as sc8280xp with txa/txb shared by
both the USB and DP parts?

I guess you need a proper setup to test it properly. Not sure what
you'll be able to learn otherwise, apart from whether it passes basic
smoke testing.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
