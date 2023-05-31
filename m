Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47C30C77B73
	for <linux-phy@archiver.kernel.org>; Wed, 31 May 2023 02:31:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ArHFW32HHX/vnj7otHXKbmZbvKbZR+xG0VvY5zYt51o=; b=GXy8fGGOgant8K
	QlVaZBKSqU4n+y0Hr43g6wIUx/XmuY+8MO4iuw6aLFUU13A4ofbGcR9w1eyG4XkUrd4mTiJfVNnmD
	fgh3G3sIkY0bqxwcpIb3WBpqm7Z+PlWGde0v+qh60pyd/pXwqN57OQNbmuq3m+fGgM7TVaB6cdzNa
	W/4DNmggaQgt6b/c2KmzIUq8As/HYzLCGDgzifmljISqdVWuEVCayxcQigc7lG6XGlqgDoWuDUMlY
	KSLBn+XhIeDo80sABynRk/sWQh4G4X1C568kheD06/S4H4nmE/Wem3d0fS7F5Nsk5wOxJ4EHEIwRm
	vDQg4IYnKT9tIcuQVYJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4Bc7-00FngS-32;
	Wed, 31 May 2023 02:31:03 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4Bc4-00FnfE-1M
	for linux-phy@lists.infradead.org;
	Wed, 31 May 2023 02:31:02 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 544F663624;
	Wed, 31 May 2023 02:30:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3723DC433D2;
	Wed, 31 May 2023 02:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685500258;
	bh=XdaUEjzKO8prK+WbBFh4Zp/7ndj2MQZpFykTiurO7oc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qEh+GQkWdGREfp39ftgvEZM2PCinaaBUU6f7lPTXhV0kDu14YmdeSXsufLhR5tInh
	 5UO6x/czZPKwWiZPG92QAoipvPqdh9SZoqItjHUbfGw4PaxbLHnpHwdWLal9XNfxey
	 SyXgGN4m68QdTYWvqHtJp+2dKg7zg38Se8WAhkaZ7oR+6qLnBn5kJERbUlBHUiuAvq
	 RwRYUBnGehUy5nJte0+C/rgBlTpXMIC4lTj9niA7VgVBrisLCjIHOPz6XA9goTBLCE
	 pLMWVJoihVuEvMBy0IJgtkEIMj+Kzp7Syp1Qu9ThQDVrXsgdtfJyymXJy2VrN62ZQk
	 epYdqHtUHs7NQ==
Date: Tue, 30 May 2023 19:34:41 -0700
From: Bjorn Andersson <andersson@kernel.org>
To: Adrien Thierry <athierry@redhat.com>
Cc: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH RFC 1/2] phy: qcom-snps-femto-v2: properly enable ref
 clock
Message-ID: <20230531023441.4dpbsdklerbu2zqx@ripper>
References: <20230529185638.32376-1-athierry@redhat.com>
 <20230529185638.32376-2-athierry@redhat.com>
 <20230529211629.7sw542tyyygv4tcs@ripper>
 <ZHZEbW+aSJ5xLOlO@fedora>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZHZEbW+aSJ5xLOlO@fedora>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_193100_573925_32254F72 
X-CRM114-Status: GOOD (  34.78  )
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

On Tue, May 30, 2023 at 02:46:05PM -0400, Adrien Thierry wrote:
> Hi Bjorn, thanks for your reply!
> 
> On Mon, May 29, 2023 at 02:16:29PM -0700, Bjorn Andersson wrote:
> > On Mon, May 29, 2023 at 02:56:36PM -0400, Adrien Thierry wrote:
> > > The driver is not enabling the ref clock, which thus gets disabled by
> > > the clk_disable_unused initcall. This leads to the dwc3 controller
> > > failing to initialize if probed after clk_disable_unused is called, for
> > > instance when the driver is built as a module.
> > > 
> > 
> > Good catch!
> > 
> > A side note though, clk_disable_unused() has no way to take kernel
> > modules into consideration today, and it doesn't handle the case where
> > clock drivers are built as modules appropriately.
> > Work has started to address this, but as of todaybooting the system
> > without clk_ignore_unused is not recommended...
> >
> 
> For my understanding, do you have an example of a situation that would
> fail with modules when not using clk_ignore_unused?
> 

The prime example relates to the display clocks, where the bootloader
typically leave clocks on and at lateinit we haven't yet loaded enough
modules to bring up the display. And to make matters worse, the code
ends up disabling the PLL feeding the clock tree without first disabling
some of the muxes - which has side effects...

Another case, although much less concerning in the short run, is when
you have any of the clock drivers built as modules. clk_disable_unused()
will be invoked before they are loaded, so your expectation that unused
clocks are turned off is just not fulfilled.

> > > To fix this, add calls to clk_prepare_enable/clk_disable_unprepare at
> > > the proper places.
> > > 
> > 
> > If I parse the downstream kernel correctly the refclock should be
> > turned off across runtime and system suspend as well.
> > 
> 
> Which downstream kernel are you using? I'm not seing a system suspend
> callback in mine [1]. refclock should be turned off on runtime suspend in
> my patch, in qcom_snps_hsphy_suspend, which is called by
> qcom_snps_hsphy_runtime_suspend.
> 

Forgive me, but isn't [1] the driver you're modifying?

I'm looking at [2], with set_suspend() being invoked from the runtime
and system suspend/resume handlers.

> [1] https://git.codelinaro.org/clo/la/kernel/ark-5.14/-/blob/kernel.lnx.5.14.r2-rel/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c

[2] https://git.codelinaro.org/clo/la/kernel/msm-5.4/-/blob/LV.AU.1.2.1.r2-05300-gen3meta.0/drivers/usb/phy/phy-msm-snps-hs.c#L908

Regards,
Bjorn

> 
> > Regards,
> > Bjorn
> > 
> > > Signed-off-by: Adrien Thierry <athierry@redhat.com>
> > > ---
> > >  drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 20 +++++++++++++++++--
> > >  1 file changed, 18 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> > > index 6c237f3cc66d..8abf482e81a8 100644
> > > --- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> > > +++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> > > @@ -166,6 +166,7 @@ static int qcom_snps_hsphy_suspend(struct qcom_snps_hsphy *hsphy)
> > >  	}
> > >  
> > >  	clk_disable_unprepare(hsphy->cfg_ahb_clk);
> > > +	clk_disable_unprepare(hsphy->ref_clk);
> > >  	return 0;
> > >  }
> > >  
> > > @@ -181,6 +182,12 @@ static int qcom_snps_hsphy_resume(struct qcom_snps_hsphy *hsphy)
> > >  		return ret;
> > >  	}
> > >  
> > > +	ret = clk_prepare_enable(hsphy->ref_clk);
> > > +	if (ret) {
> > > +		dev_err(&hsphy->phy->dev, "failed to enable ref clock\n");
> > > +		return ret;
> > > +	}
> > > +
> > >  	return 0;
> > >  }
> > >  
> > > @@ -380,10 +387,16 @@ static int qcom_snps_hsphy_init(struct phy *phy)
> > >  		goto poweroff_phy;
> > >  	}
> > >  
> > > +	ret = clk_prepare_enable(hsphy->ref_clk);
> > > +	if (ret) {
> > > +		dev_err(&phy->dev, "failed to enable ref clock, %d\n", ret);
> > > +		goto disable_ahb_clk;
> > > +	}
> > > +
> > >  	ret = reset_control_assert(hsphy->phy_reset);
> > >  	if (ret) {
> > >  		dev_err(&phy->dev, "failed to assert phy_reset, %d\n", ret);
> > > -		goto disable_ahb_clk;
> > > +		goto disable_ref_clk;
> > >  	}
> > >  
> > >  	usleep_range(100, 150);
> > > @@ -391,7 +404,7 @@ static int qcom_snps_hsphy_init(struct phy *phy)
> > >  	ret = reset_control_deassert(hsphy->phy_reset);
> > >  	if (ret) {
> > >  		dev_err(&phy->dev, "failed to de-assert phy_reset, %d\n", ret);
> > > -		goto disable_ahb_clk;
> > > +		goto disable_ref_clk;
> > >  	}
> > >  
> > >  	qcom_snps_hsphy_write_mask(hsphy->base, USB2_PHY_USB_PHY_CFG0,
> > > @@ -448,6 +461,8 @@ static int qcom_snps_hsphy_init(struct phy *phy)
> > >  
> > >  	return 0;
> > >  
> > > +disable_ref_clk:
> > > +	clk_disable_unprepare(hsphy->ref_clk);
> > >  disable_ahb_clk:
> > >  	clk_disable_unprepare(hsphy->cfg_ahb_clk);
> > >  poweroff_phy:
> > > @@ -462,6 +477,7 @@ static int qcom_snps_hsphy_exit(struct phy *phy)
> > >  
> > >  	reset_control_assert(hsphy->phy_reset);
> > >  	clk_disable_unprepare(hsphy->cfg_ahb_clk);
> > > +	clk_disable_unprepare(hsphy->ref_clk);
> > >  	regulator_bulk_disable(ARRAY_SIZE(hsphy->vregs), hsphy->vregs);
> > >  	hsphy->phy_initialized = false;
> > >  
> > > -- 
> > > 2.40.1
> > >
> 
> Best,
> Adrien
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
