Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E36EEC54EED
	for <linux-phy@archiver.kernel.org>; Mon, 23 Jan 2023 19:42:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v/AA8QNnSnmky4y0LofwMd2swNWEdcmQ8hL5TihLp9k=; b=GGNJlRp2R/K5zr
	mQGsBUfi2R6RCQVg7Y/o2q5QuArgXLhzEWa3EeaVqnIcsV9zLz923ecocWvdxz57kvur2dCVZR8OO
	Ypo30/jvnixcVqhLeOR/gQXMdJjFMIZ5uJIfnOa7a3crkbllcBa+47FY+j+VjGtl2LJkLdApj7FI5
	zAn4+CHC5mw7vW05e/HvBsqmSU6pCgmVtv+f6n4C/5gkbu/HLPBiHrYDLPcnJhc2zX2mvqdgr/qkS
	nfi8BWcNV6Q3+nfu9xbSJo0DNFEz+acFd8QYWsD8F3ntOLpXkIv5nbw0amIXahOnvwS6emOOwpSWc
	SeSNg/gcYyaIj2gnrOMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pK2i8-001Ccq-9X; Mon, 23 Jan 2023 19:42:32 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pK2i5-001Cc1-HO
	for linux-phy@lists.infradead.org; Mon, 23 Jan 2023 19:42:31 +0000
Received: by mail-wr1-x434.google.com with SMTP id h16so11844027wrz.12
        for <linux-phy@lists.infradead.org>; Mon, 23 Jan 2023 11:42:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=p9ILq3+mwKrh0pefLGbJdcwDb8dIBE8u28kNBwVa/4E=;
        b=AW/XUguALAmXap9iIRkL9wPE1+78JgBdgei1kVXA1aDGHszAL3rWm2zWxD/+2L94qq
         Ai9QVNX5MqQMZf1tNfL/JAzFrqycZRpT2RTS9zNfk0k7t38aFLRSYuDrl1rOf+bKtOhL
         59HIDTTK3pLwO0ooeLDkGqAMCelObQvL82eCLD6p6hOucdd+k162dxnenZtS6XFghKAd
         HpYFMcHO9dgsGMv/PoIRv/phrA051NZUVN1eZ1QsFXFI6RmUyrlqHccHBepyQTMlrztR
         6z/GMXcviz4lZr9ICzPpx621xgV6B/strzNrsuKr6Btq+0OSucGLSsIzHGf9fY1IEe8K
         CmeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p9ILq3+mwKrh0pefLGbJdcwDb8dIBE8u28kNBwVa/4E=;
        b=0CkxGHVLIABa9ccN1KsOBMyZ3hW7FkzL/iNrcQdJe43+vliNkfbn9evDIib8xLr5nA
         81wSuEvmbXRyBN26BuGR7Tos8WBcVqqwxFqLKmieZ/jXrmfIAAdl0EhjhXnVGwEJ6WzG
         z/90MNbCnTJeAq1UrWLjfOIr6qY8J9WOtO5hF7VPwFsLrnTv/LlAwtkUtfAiiNh57zlj
         0U8sufHhA4r1BqZyDhsGZRIo9zUU6urXKINSRpLnm6gQ8dnFl+x+FzGXWYOvgTaC/Jgu
         Sp0UdYyAKJN6Oko3u3JPPk661SiZ4GWfr8pSKaiLqck+q+//M2qnc4tjtUWgSbdEElUO
         tzFg==
X-Gm-Message-State: AFqh2kqQpr+rHrVOzczaNrsf09+d9eWa6182+oINI6pm+ufNZKs76SCt
	WAxDuj5XJB7Pr0nm1HFxbPia6g==
X-Google-Smtp-Source: AMrXdXsnN/1Z1mhC5MXnr3/Vlg9iTHyDxGzqM1a2JSKGN6e1eHCKTGhbtkzJtZchpKSCwnfztvDLQQ==
X-Received: by 2002:adf:f805:0:b0:2be:2b5:ae87 with SMTP id s5-20020adff805000000b002be02b5ae87mr22137380wrp.24.1674502945664;
        Mon, 23 Jan 2023 11:42:25 -0800 (PST)
Received: from linaro.org ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id y15-20020a5d470f000000b002bc8130cca7sm175808wrq.23.2023.01.23.11.42.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 11:42:25 -0800 (PST)
Date: Mon, 23 Jan 2023 21:42:22 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Johan Hovold <johan@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: Re: [PATCH v4 08/12] phy: qcom-qmp-pcie: Add support for SM8550 g3x2
 and g4x2 PCIEs
Message-ID: <Y87jHlzAaoGbs0Pu@linaro.org>
References: <20230119140453.3942340-1-abel.vesa@linaro.org>
 <20230119140453.3942340-9-abel.vesa@linaro.org>
 <Y86h1FDuHFu3mImq@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y86h1FDuHFu3mImq@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_114229_603794_4145D792 
X-CRM114-Status: GOOD (  30.07  )
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

On 23-01-23 16:03:48, Johan Hovold wrote:
> On Thu, Jan 19, 2023 at 04:04:49PM +0200, Abel Vesa wrote:
> > Add the SM8550 both g4 and g3 configurations. In addition, there is a
> > new "lane shared" table that needs to be configured for g4, along with
> > the No-CSR list of resets.
> > 
> > Co-developed-by: Neil Armstrong <neil.armstrong@linaro.org>
> > Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> > 
> > This patchset relies on the following patchset:
> > https://lore.kernel.org/all/20230117224148.1914627-1-abel.vesa@linaro.org/
> > 
> > The v3 of this patchset is:
> > https://lore.kernel.org/all/20230118005328.2378792-1-abel.vesa@linaro.org/
> > 
> > Changes since v3:
> >  * added Dmitry's R-b tag
> > 
> > Changes since v2:
> >  * none
> > 
> > Changes since v1:
> >  * split all the offsets into separate patches, like Vinod suggested
> > 
> > 
> >  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 365 +++++++++++++++++++++++
> >  1 file changed, 365 insertions(+)
> > 
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > index bffb9e138715..48d179d8d8d6 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c

[...]

> > @@ -2370,6 +2704,14 @@ static int qmp_pcie_power_on(struct phy *phy)
> >  	if (ret)
> >  		return ret;
> >  
> > +	if (qmp->nocsr_resets) {
> > +		ret = reset_control_bulk_deassert(cfg->num_nocsr_resets, qmp->nocsr_resets);
> > +		if (ret) {
> > +			dev_err(qmp->dev, "no-csr reset deassert failed\n");
> > +			goto err_disable_pipe_clk;
> > +		}
> > +	}
> 
> Is this the documented reset sequence? To keep the nocsr reset asserted
> from init() to power_on() and during programming of the PHY registers?
> 
> What if power_on() is never called, etc? (I know we always call
> power_on() after init() currently, but that may change.)
> 
> Could you explain a bit how this reset is supposed work and be used?
> 

The documentation says that the no-CSR reset should be kept asserted until
the clock (PLL) is stable and during configuration. It also says the
no-CSR can be used to reset the PHY without losing the configuration.
It also says pciephy_reset needs to be deasserted before configuration.

So I guess what we need to do here is: deassert the pciephy_reset,
configure the CSR register, then deassert the no-CSR reset.

If power on never gets called, PHY remains in reset, but configured.

> > +
> >  	/* Pull PHY out of reset state */
> >  	qphy_clrbits(pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
> >  
> > @@ -2503,6 +2845,21 @@ static int qmp_pcie_reset_init(struct qmp_pcie *qmp)
> >  	if (ret)
> >  		return dev_err_probe(dev, ret, "failed to get resets\n");
> >  
> > +	if (cfg->nocsr_reset_list) {
> > +		qmp->nocsr_resets = devm_kcalloc(dev, cfg->num_nocsr_resets,
> > +				   sizeof(*qmp->nocsr_resets), GFP_KERNEL);
> > +		if (!qmp->nocsr_resets)
> > +			return -ENOMEM;
> > +
> > +		for (i = 0; i < cfg->num_nocsr_resets; i++)
> > +			qmp->nocsr_resets[i].id = cfg->nocsr_reset_list[i];
> > +
> > +		ret = devm_reset_control_bulk_get_exclusive(dev, cfg->num_nocsr_resets,
> > +								qmp->nocsr_resets);
> > +		if (ret)
> > +			return dev_err_probe(dev, ret, "failed to get no CSR resets\n");

[...]

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
