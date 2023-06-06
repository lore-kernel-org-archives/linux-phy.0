Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2DBAC77B73
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jun 2023 14:35:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9yH5pCJi2VBOMhIm8RMUMr3+8p4lrAMgfqlWnDTJA18=; b=F52wWDaobgkvBa
	icfL/FRSJxISyQHRRVN1UuH/zFJGllysrImmQHyiZ4DCT81Oj0BFwATsfylQEXNDES4Nok/pvFQZL
	4nlY3jmSuQNPTqdqL40rAiFcnIocCzxYpAtmuNrvpZRL7bDMzNJGLASz29p0VIOeXuTOsC7VpO90A
	y9Tzp4unaoed3HT3VwaGnkLyDfNV8MHb9aEuHLD38F9oqoSXaZw+5lp0FrtEmF6rVNFk7KJmZxJox
	Qwmm7OsN1dB8NsmSdr7JSgfPZOko7DhT5PuuylpiZ/7K3uHeiEjr2Aq/fOcPgEsqz5PlORmaf3v4R
	aslEEd5hh7Mgwc0MP1xQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6XmS-0022hl-0z;
	Tue, 06 Jun 2023 14:35:28 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6XmO-0022gK-2w
	for linux-phy@lists.infradead.org;
	Tue, 06 Jun 2023 14:35:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1686062122;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=0ACc+nO/rqX5bFrH4LrwXPZUBRGP8worhyNyqkSAZpc=;
	b=fjWLmiH3hF+hYnDNHxCy8/2rNU4HuJ4P9raYp/QY/mzPhv5sRjE40lFfVXu9c1YPmiLf7E
	EQTUIObgYgrBH0Qha7GEiYD7E0ZIH85tnLNxvlPWlHF7RWlhNzSpw1Pxrkp4CN+AG/Zj9B
	XCPXkaS8kbZfoao/LJXMUq6orsK8p5E=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-382-v0wdOC9INEOO8bGOdShFmg-1; Tue, 06 Jun 2023 10:35:21 -0400
X-MC-Unique: v0wdOC9INEOO8bGOdShFmg-1
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-3f86c1990c7so31053351cf.0
        for <linux-phy@lists.infradead.org>; Tue, 06 Jun 2023 07:35:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686062120; x=1688654120;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0ACc+nO/rqX5bFrH4LrwXPZUBRGP8worhyNyqkSAZpc=;
        b=aQoj57x8ivLQfQWsCwCktZTOKwFk0yeSZSfPjP0ydOOOcKoYHpcBaggDDKmUkw76xz
         2e14zsj0F+CCh/8+WPcMfQYZbdyQej3Hm50pJ3C2Wgd124t4AclPBQ+/xEPVEKPzIHsm
         2sWoPpncGnqShHEubbAKCIATZq3m0ueJFU6PSmgHnEvDh4NN+5RwMpvhkk4KYr4R0sdd
         ikUwO8YtMxekOfu/ocvYAInCSJuw76SPU+0juQ4DBaDxQ1N280KtvZm8tt4z02VbtCwr
         vzFzlYmYrnUy88b0jwIIPtXBWRZgFajPOrrf+Mml7+o2ptb3aNcI37K8akgkhexC1BDU
         hq1g==
X-Gm-Message-State: AC+VfDzKtRG7CIFAQtgFeO9wQr6DhTtv8OP7kfLlTGYlT+g6/thYv6Rp
	xthzjc4166f7gWoMj/RnEOV3bcJS5hheCeLH812mA5ngguLj/YkUY4irS1yZW39O0Xcu6TkIi+i
	2IJSY4CeCR1gP25+E955EwDsNuQ==
X-Received: by 2002:ac8:7f50:0:b0:3f4:dec2:76c3 with SMTP id g16-20020ac87f50000000b003f4dec276c3mr2166175qtk.22.1686062120359;
        Tue, 06 Jun 2023 07:35:20 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ5FMBEjdhk60sTgnBtFRPFO/Ri01rTuW3D530U8twgZB6YG7GiehJcAzFCboEtkwbccxVk5mQ==
X-Received: by 2002:ac8:7f50:0:b0:3f4:dec2:76c3 with SMTP id g16-20020ac87f50000000b003f4dec276c3mr2166145qtk.22.1686062120010;
        Tue, 06 Jun 2023 07:35:20 -0700 (PDT)
Received: from fedora ([107.171.218.122])
        by smtp.gmail.com with ESMTPSA id fg26-20020a05622a581a00b003f9a79fe046sm1690585qtb.38.2023.06.06.07.35.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jun 2023 07:35:19 -0700 (PDT)
Date: Tue, 6 Jun 2023 10:35:17 -0400
From: Adrien Thierry <athierry@redhat.com>
To: Andrew Halaney <ahalaney@redhat.com>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>,
	Manu Gautam <mgautam@codeaurora.org>,
	Wesley Cheng <wcheng@codeaurora.org>,
	Philipp Zabel <pza@pengutronix.de>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 1/2] phy: qcom-snps-femto-v2: properly enable ref clock
Message-ID: <ZH9EJfkeQN7c5KHU@fedora>
References: <20230605184455.34832-1-athierry@redhat.com>
 <20230605184455.34832-2-athierry@redhat.com>
 <fe51f704-3d24-d184-0251-39dc64a25598@linaro.org>
 <20230606135516.beujjl2oyvt6gaig@halaney-x13s>
MIME-Version: 1.0
In-Reply-To: <20230606135516.beujjl2oyvt6gaig@halaney-x13s>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_073525_021913_E8D9AFF4 
X-CRM114-Status: GOOD (  41.16  )
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

Thanks for your feedback Konrad and Andrew!

On Tue, Jun 06, 2023 at 08:55:16AM -0500, Andrew Halaney wrote:
> On Tue, Jun 06, 2023 at 01:14:00AM +0200, Konrad Dybcio wrote:
> > 
> > 
> > On 5.06.2023 20:44, Adrien Thierry wrote:
> > > The driver is not enabling the ref clock, which thus gets disabled by
> > > the clk_disable_unused initcall. This leads to the dwc3 controller
> > > failing to initialize if probed after clk_disable_unused is called, for
> > > instance when the driver is built as a module.
> > > 
> > > To fix this, switch to the clk_bulk API to handle both cfg_ahb and ref
> > > clocks at the proper places.
> > > 
> > > Note that the cfg_ahb clock is currently not used by any device tree
> > > instantiation of the PHY. Work needs to be done separately to fix this.
> > > 
> > > Link: https://lore.kernel.org/linux-arm-msm/ZEqvy+khHeTkC2hf@fedora/
> > > Fixes: 51e8114f80d0 ("phy: qcom-snps: Add SNPS USB PHY driver for QCOM based SOCs")
> > > Signed-off-by: Adrien Thierry <athierry@redhat.com>
> > > ---
> > >  drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 67 ++++++++++++++-----
> > >  1 file changed, 49 insertions(+), 18 deletions(-)
> > > 
> > > diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> > > index 6c237f3cc66d..ce1d2f8b568a 100644
> > > --- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> > > +++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> > > @@ -110,11 +110,13 @@ struct phy_override_seq {
> > >  /**
> > >   * struct qcom_snps_hsphy - snps hs phy attributes
> > >   *
> > > + * @dev: device structure
> > > + *
> > >   * @phy: generic phy
> > >   * @base: iomapped memory space for snps hs phy
> > >   *
> > > - * @cfg_ahb_clk: AHB2PHY interface clock
> > > - * @ref_clk: phy reference clock
> > > + * @num_clks: number of clocks
> > > + * @clks: array of clocks
> > >   * @phy_reset: phy reset control
> > >   * @vregs: regulator supplies bulk data
> > >   * @phy_initialized: if PHY has been initialized correctly
> > > @@ -122,11 +124,13 @@ struct phy_override_seq {
> > >   * @update_seq_cfg: tuning parameters for phy init
> > >   */
> > >  struct qcom_snps_hsphy {
> > > +	struct device *dev;
> > > +
> > >  	struct phy *phy;
> > >  	void __iomem *base;
> > >  
> > > -	struct clk *cfg_ahb_clk;
> > > -	struct clk *ref_clk;
> > > +	int num_clks;
> > > +	struct clk_bulk_data *clks;
> > >  	struct reset_control *phy_reset;
> > >  	struct regulator_bulk_data vregs[SNPS_HS_NUM_VREGS];
> > >  
> > > @@ -135,6 +139,32 @@ struct qcom_snps_hsphy {
> > >  	struct phy_override_seq update_seq_cfg[NUM_HSPHY_TUNING_PARAMS];
> > >  };
> > >  
> > > +static int qcom_snps_hsphy_clk_init(struct qcom_snps_hsphy *hsphy)
> > > +{
> > > +	struct device *dev = hsphy->dev;
> > > +
> > > +	hsphy->num_clks = 2;
> > > +	hsphy->clks = devm_kcalloc(dev, hsphy->num_clks, sizeof(*hsphy->clks), GFP_KERNEL);
> > > +	if (!hsphy->clks)
> > > +		return -ENOMEM;
> > > +
> > > +	/*
> > > +	 * HACK: For cfg_ahb clock, use devm_clk_get_optional() because currently no device
> > > +	 * tree instantiation of the PHY is using the clock. This needs to be fixed in order
> > > +	 * for this code to be able to use devm_clk_bulk_get().
> > > +	 */
> > > +	hsphy->clks[0].id = "cfg_ahb";
> > > +	hsphy->clks[0].clk = devm_clk_get_optional(dev, "cfg_ahb");
> > Hm, maybe you could first check if we can get this clock
> > properly (!IS_ERR_OR_NULL) and then allocate the second
> > slot..
> > 
> 
> The bulk clk api handles NULL clks without issue if I am reading right,
> so personally if we're going to use the bulk api I say we carry the extra
> slot unconditionally. No expert on this stuff but that seems more
> straightforward. Honestly I wouldn't mind using the bulk optional API,
> then checking the "non optional ref clock" manually. That's closer to
> the ideal flow to me. Super opinionated though, don't take my word as
> right.
>

Agree with Andrew. Since cfg_ahb is always NULL, I'm certainly "wasting"
an array cell here but I think it also better highlights the fact that
it's a hack and that cfg_ahb needs to be properly wired in the DTs. As for
using the bulk optional API, I'm fine with both!

> > > +
> > > +	hsphy->clks[1].id = "ref";
> > > +	hsphy->clks[1].clk = devm_clk_get(dev, "ref");
> > > +	if (IS_ERR(hsphy->clks[1].clk))
> > > +		return dev_err_probe(dev, PTR_ERR(hsphy->clks[1].clk),
> > > +				     "failed to get ref clk\n");
> > > +
> > > +	return 0;
> > > +}
> > > +
> > >  static inline void qcom_snps_hsphy_write_mask(void __iomem *base, u32 offset,
> > >  						u32 mask, u32 val)
> > >  {
> > > @@ -165,7 +195,7 @@ static int qcom_snps_hsphy_suspend(struct qcom_snps_hsphy *hsphy)
> > >  					   0, USB2_AUTO_RESUME);
> > >  	}
> > >  
> > > -	clk_disable_unprepare(hsphy->cfg_ahb_clk);
> > > +	clk_bulk_disable_unprepare(hsphy->num_clks, hsphy->clks);
> > >  	return 0;
> > >  }
> > >  
> > > @@ -175,9 +205,9 @@ static int qcom_snps_hsphy_resume(struct qcom_snps_hsphy *hsphy)
> > >  
> > >  	dev_dbg(&hsphy->phy->dev, "Resume QCOM SNPS PHY, mode\n");
> > >  
> > > -	ret = clk_prepare_enable(hsphy->cfg_ahb_clk);
> > > +	ret = clk_bulk_prepare_enable(hsphy->num_clks, hsphy->clks);
> > Aren't you dereferencing NULL if the optional clock is absent?
> > 
> 
> Similar to above, the bulk api seems to handle NULL clks gracefully.
>

devm_clk_get_optional() will return NULL for cfg_ahb, but AFAIU NULL
serves as a dummy clock [1] with which the clock API deals gracefully. The
various functions like clk_prepare(), clk_enable() check if the clock is
NULL and return 0 immediately if that's the case (see for instance [2]).

[1] https://elixir.bootlin.com/linux/v6.4-rc5/source/include/linux/clk.h#L514
[2] https://elixir.bootlin.com/linux/v6.4-rc5/source/drivers/clk/clk.c#L1045

Best,
Adrien

> Thanks,
> Andrew
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
