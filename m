Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FF2CC4708A
	for <linux-phy@archiver.kernel.org>; Tue, 29 Nov 2022 15:29:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7qGEzNdiL1SY1W7IKmtq99JkdQLvAbCuQhnR0/7uFg8=; b=FlgE+zdPNkzTCh
	iO7w5oOu+pZ3xK7EO46Clrs6JL7m4S32rYJGYkPF8jCocwd32x6bNYoE/Peke/oi1xL4fHKEdjpGj
	x+4NCYraRmFzQJBUzh1VVAMYxo+na3JNjzmrEldMZfHfSkwoX5h7Cc/RH9NnbG7qjQWyA08HOlJed
	DcTSJH2B8Q5Mm/S9/4tbtMi/v9vpUPzoX2j/dgaqLLIXuxbUOyOI2RzwKqMD/T9wAmo0KtWyQ30nY
	TGh7bIvRmm6SW5YzqBQSRyyfm0IeaUMG7yMEjcRcw5L9gEa8RiCZNnCPYD09i8jbzJTqfQr5f8juC
	y94xr1Ja/92UjoasB5mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p02YU-009jCs-QW; Tue, 29 Nov 2022 15:29:54 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p02YR-009jBL-CV
	for linux-phy@lists.infradead.org; Tue, 29 Nov 2022 15:29:53 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2012061783;
	Tue, 29 Nov 2022 15:29:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B681C433C1;
	Tue, 29 Nov 2022 15:29:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669735789;
	bh=LcLxGc0JJF4Y9hWKi36NBEOqASyjERCHhf229KIalLQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=W18al4QIssBUGlHaJSbuzmXtvkWgmxk2N5i7DIut8Nxy3ysCvHhMCMSHDvP5DMrfG
	 0wWPme5DrYNNTRWyQl6RYolbCm5jf1AIiubRS0JyuzAWzUsneuSjfbmjaIGQMPC9Hi
	 9UX/mKX8fZfsSG/BdLHP7IqJkI9eM4yKhO1guYXCtoZqdtWA+E7uFtLfE4dmlgU9TU
	 cnhd0jpYcbvNKphuNYIYmjW6Vbp6azO2Vjo6GjJHwCrkXQBN5sXEiNI4gF6KBAgC8I
	 Lsh7CTkV0GrBfYaPWS8nTPLwzPspp4HCeVGQi+4iFnsBdg0G/y+se2uPUmfPNgy08x
	 qDctGIBXbzAiw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1p02YP-0004V6-2i; Tue, 29 Nov 2022 16:29:49 +0100
Date: Tue, 29 Nov 2022 16:29:49 +0100
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
Message-ID: <Y4YlbWL5uDXElBbi@hovoldconsulting.com>
References: <20221125092749.46073-1-luca.weiss@fairphone.com>
 <Y4CP9fwhDXsLu57Q@hovoldconsulting.com>
 <COLABNHBQ1DG.1PB8SDY3FW1YY@otso>
 <Y4CWoT52Q8jnm/dF@hovoldconsulting.com>
 <COLE3UWQCQ8R.XY36EY07DDDK@otso>
 <Y4DImjwHQNlWPEKh@hovoldconsulting.com>
 <COLFSBYDJQVH.1Q9V9ISPWR6ZX@otso>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <COLFSBYDJQVH.1Q9V9ISPWR6ZX@otso>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221129_072951_563623_29DD4595 
X-CRM114-Status: GOOD (  36.18  )
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

On Fri, Nov 25, 2022 at 03:12:24PM +0100, Luca Weiss wrote:
> On Fri Nov 25, 2022 at 2:52 PM CET, Johan Hovold wrote:
> > On Fri, Nov 25, 2022 at 01:53:25PM +0100, Luca Weiss wrote:
> > > > Parent clocks (ref_clk_src) should not be included in the binding, but
> > > > rather be handled by the clock driver. For example, see:
> > > >
> > > > 	https://lore.kernel.org/all/20221121085058.31213-4-johan+linaro@kernel.org/
> > > > 	https://lore.kernel.org/all/20221115152956.21677-1-quic_shazhuss@quicinc.com/
> > > 
> > > So I assume you mean that I shouldn't do this:
> > > 
> > > clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
> > >      <&rpmhcc RPMH_QLINK_CLK>,
> > >      <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>,
> > >      <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
> > > clock-names = "aux", "ref", "com_aux", "usb3_pipe";
> > > 
> > > But for "ref" use GCC_USB3_PRIM_CLKREF_CLK? That also seems to work
> > > fine, also if RPMH_QLINK_CLK is not used from Linux-side (checked in
> > > debugfs).
> >
> > Exactly. Since the vendor dts describes RPMH_QLINK_CLK as parent of ref,
> > I'd suggest modelling that in the clock driver. Perhaps it has just been
> > left on by the boot firmware. Someone with access to docs may be able
> > explain how it is supposed to be used.
> 
> RPMH_QLINK_CLK is also in msm-4.19 ref_clk_src for
> GCC_UFS_MEM_CLKREF_CLK (ufsphy_mem) and also ref_clk (ufshc_mem).
> 
> Honestly since it works fine without adding this to gcc driver and I
> don't really know much about clk (and have no docs for this) would it be
> okay to just ignore RPMH_QLINK_CLK?

Preferably it should be fixed now as it may be harder to figure out
what's missing in case this causes trouble in some setup later.

But, yeah, the lack of documentation is a pain.

Hopefully Bjorn or Vinod can help out with getting this sorted properly.

> > > And for the driver patch, I've discovered that this phy doesn't have
> > > separate txa/tbx region, so dts was also wrong there. Do you know if
> > > there's a way to test DP phy initialization without having all the USB-C
> > > plumbing in place? Might be good to validate at least phy init works if
> > > we're already touching all of this.
> >
> > Do you mean that it appears to work as sc8280xp with txa/txb shared by
> > both the USB and DP parts?
> 
> Yes, looks like it. Can't find any evidence pointing in any other
> direction at least, everything I've seen shows .txa = 0x1200 & .txb =
> 0x1600.

Ok. I've also only seen indirect references to the DP registers
for the older platforms, but at least of them do have the separate DP TX
regions.

> > I guess you need a proper setup to test it properly. Not sure what
> > you'll be able to learn otherwise, apart from whether it passes basic
> > smoke testing.
> 
> Currently it's not even smoke testing because dp phy is never getting
> enabled because there's no consumer. That's why I guess it was never
> noticed it's wrongly described in dts.

Yeah, people shouldn't be adding (copy-pasted) nodes for peripherals
that they are not able to test (especially given the lack of
documentation), but I guess the USB3-DP case is a bit of a grey area as
the USB part can have been verified. Fortunately, this should be less of
any issue with the new binding scheme.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
