Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90233C05027
	for <linux-phy@archiver.kernel.org>; Mon,  6 Feb 2023 14:05:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xvhXQO00TPkRct9eo89cIBOoyEUj5hSZ37bpPHl97ig=; b=ByvgIZpTEGzNSi
	s8uJSIMhqL//ExKUxrno7X9NZLT8qtxhJCR5BbWQxwSPpnnjZSABhUmAn9rzQIxy8m01OQQyc5+6r
	vQhflpYbBB5EhtOG+Y7GzAFnV5EzjRbtP0z28R/ti/4NsC5xFVBdfc70RDeYywPgEFelR6G+SKFpP
	tqr2J0fbhEy0OfLHlqv2BY2pw6t3XFaABzmS8UqCQ4Jtkwda5GPGdCYVjtw5zmMBku2mnNyKfKTym
	YN+QEa46MJzynJVh6PEPaOUz5YgMW/U/zgU8oShyV/k+v4oCpgl4++4jzAtYloQwjvOd2eTQeHBVd
	uAY2FBP2/QxfGU9T1WTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pP27L-008iV3-Uo; Mon, 06 Feb 2023 14:05:11 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pP27I-008iS4-DD
	for linux-phy@lists.infradead.org; Mon, 06 Feb 2023 14:05:10 +0000
Received: by mail-wm1-x330.google.com with SMTP id bg26so8776068wmb.0
        for <linux-phy@lists.infradead.org>; Mon, 06 Feb 2023 06:05:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=l1sBDHSdASz4ecLzalMdlfELS8RCcYMZ2sk1AegZ7C4=;
        b=gUDkn0Nk6osoDg6kBIqb4HgThjeRoU3B4yStY9UPgtkSB4y1icRX/nUz/3C0iAIpEm
         MEDJnt9vnKjADTSJTi/kI8xh0D1PAvXE7gH5tvVQcf8lgVPHzvsc5HnaQOH1XCzK8HqA
         iLF14vnXPg2R+rqK6qe3qmaCI98vVcpebABOShNnLKS3xsvXq448T7tqXjuyVVxuKx9g
         yMS5bniysbumzLDbyVXjr/7YPXLCHBoUeOW+P4N/JovSFBu+zje1qoxWataFiEkxgOE+
         ofZGWBbvJfP+qu1nMsNHPX/6rHYDCqnit3Br9d1aFXvJkdUEMDG8tGXoizjtkjstYorr
         zWKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l1sBDHSdASz4ecLzalMdlfELS8RCcYMZ2sk1AegZ7C4=;
        b=Ny/mvd7I1ES1HxF9KvdQJkJ/jBCwgsMmNhNI1TkdEe64KIUWu0oEunsC6dY7jeAMos
         5Bt0igC8KrchPp2dLRvL7juXzQPQ8pJo1QwqIR5F2ysQ1S2kC36Wui2idELjjymCWnd+
         Ooa4ZyiiOcoq6JdZB7z1mgKT4+MPJSwg6kfqNBL6ho1uxBZj6xER8D5MRa20COAdRR9G
         s71Q63ubZLA0ykcvNc2FzGjPP5CR5OCxxtK+fI0PGAnoHoxtAGyabd/bbJDNyFhPfF/v
         7pjuNNSuUz6kghy1buTut7Ei3VNe3Gu8pMULoa/chSa0GOgX9KnnaY4qYpWgPPQ4n53c
         ETQg==
X-Gm-Message-State: AO0yUKX9r1m5GAM8RL5j09YJy3qiFl7YVHc9SH3kjo3yuBCtIG8bM1rb
	I0bvpDNxNbsgvkqd+f6Uu8gzfw==
X-Google-Smtp-Source: AK7set8CdDqbiahcj1npFpmbebayGsvVRXrv4P1LiTprnhax7cXuxebkMZ+iX0ubTVrxQMT9rjIupw==
X-Received: by 2002:a05:600c:3849:b0:3d5:365b:773e with SMTP id s9-20020a05600c384900b003d5365b773emr20826426wmr.39.1675692304690;
        Mon, 06 Feb 2023 06:05:04 -0800 (PST)
Received: from linaro.org ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id q9-20020a1ce909000000b003dc34edacf8sm15917337wmc.31.2023.02.06.06.05.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Feb 2023 06:05:04 -0800 (PST)
Date: Mon, 6 Feb 2023 16:05:02 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Johan Hovold <johan@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: Re: [PATCH v7 08/12] phy: qcom-qmp-pcie: Add support for SM8550 g3x2
 and g4x2 PCIEs
Message-ID: <Y+EJDofgt6I/abyp@linaro.org>
References: <20230203081807.2248625-1-abel.vesa@linaro.org>
 <20230203081807.2248625-9-abel.vesa@linaro.org>
 <Y9zU2jBdSD72W28F@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y9zU2jBdSD72W28F@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230206_060508_477793_F14FB5E7 
X-CRM114-Status: GOOD (  36.76  )
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

On 23-02-03 10:33:14, Johan Hovold wrote:
> On Fri, Feb 03, 2023 at 10:18:03AM +0200, Abel Vesa wrote:
> > Add the SM8550 both g4 and g3 configurations. In addition, there is a
> > new "lane shared" table that needs to be configured for g4, along with
> > the No-CSR list of resets.
> 
> Could you add a comment about the new nocsr reset and how it is used
> here?
>  
> > Co-developed-by: Neil Armstrong <neil.armstrong@linaro.org>
> > Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> > 
> > This patchset relies on the following patchset:
> > https://lore.kernel.org/all/20230117224148.1914627-1-abel.vesa@linaro.org/
> > 
> > The v6 of this patch is:
> > https://lore.kernel.org/all/20230202123902.3831491-9-abel.vesa@linaro.org/
> > 
> > Changes since v6:
> >  * none
> > 
> > Changes since v5:
> >  * renmaed the no-CSR reset to "phy_nocsr" as discussed off-list with
> >    Bjorn and Johan
> > 
> > Changes since v4:
> >  * dropped _serdes infix from ln_shrd table name and from every ln_shrd
> >    variable name
> >  * added hyphen between "no CSR" in both places
> >  * dropped has_ln_shrd_serdes_tbl
> >  * reordered qmp_pcie_offsets_v6_20 by struct members
> >  * added rollback for no-CSR reset in qmp_pcie_init fail path
> >  * moved ln_shrd offset calculation after port_b
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
> >  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 367 ++++++++++++++++++++++-
> >  1 file changed, 365 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > index 907f3f236f05..ff6c0b526fde 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > @@ -1506,6 +1506,234 @@ static const struct qmp_phy_init_tbl sm8450_qmp_gen4x2_pcie_ep_pcs_misc_tbl[] =
> >  	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_PCIE_OSC_DTCT_MODE2_CONFIG5, 0x08),
> >  };
> 
[...]
> 
> >  
> > @@ -2214,6 +2469,68 @@ static const struct qmp_phy_cfg sm8450_qmp_gen4x2_pciephy_cfg = {
> >  	.phy_status		= PHYSTATUS_4_20,
> >  };
> >  
> > +static const struct qmp_phy_cfg sm8550_qmp_gen3x2_pciephy_cfg = {
> > +	.lanes = 2,
> > +
> > +	.offsets		= &qmp_pcie_offsets_v5,
> 
> Did you really intend to use the v5 offsets here? It seems you use v6.20
> defines in the tables below. This may work but it looks a little strange
> and does not match how we name and use these resources for the other
> SoCs (e.g. reusing structures and defines from older IP revisions is
> fine, but not necessarily the other way round).

So here is what is happening here. The actual IP block version is 6 for
the g3x2. The offsets of the tables are the same as on v5, but the
actual offsets of some of the registers within those tables are
entirely different. Now, if you compare the PCS PCIe offsets (v5 vs v6)
you'll notice that all v6 registers currently added are the same as v5
(both names and values). With that in mind, we still need to keep the v6
offsets for the case when a new register, that might not be in v5, might
be added later on. As for the table offsets, since they look the same we
should probably not add a dedicated v6 one.
> 
> I assume this means that the gen3 PHY is really is really v5 and using
> a subset of the v6.20 defines happens to works as they are in fact
> identical with respect to that subset?
> 
> As you have dedicated gen3x2 tables, perhaps those should use the v5
> defines?
> 
> And at least add a comment about this in the commit message.
> 
> > +
> > +	.tbls = {
> > +		.serdes		= sm8550_qmp_gen3x2_pcie_serdes_tbl,
> > +		.serdes_num	= ARRAY_SIZE(sm8550_qmp_gen3x2_pcie_serdes_tbl),
> > +		.tx		= sm8550_qmp_gen3x2_pcie_tx_tbl,
> > +		.tx_num		= ARRAY_SIZE(sm8550_qmp_gen3x2_pcie_tx_tbl),
> > +		.rx		= sm8550_qmp_gen3x2_pcie_rx_tbl,
> > +		.rx_num		= ARRAY_SIZE(sm8550_qmp_gen3x2_pcie_rx_tbl),
> > +		.pcs		= sm8550_qmp_gen3x2_pcie_pcs_tbl,
> > +		.pcs_num	= ARRAY_SIZE(sm8550_qmp_gen3x2_pcie_pcs_tbl),
> > +		.pcs_misc	= sm8550_qmp_gen3x2_pcie_pcs_misc_tbl,
> > +		.pcs_misc_num	= ARRAY_SIZE(sm8550_qmp_gen3x2_pcie_pcs_misc_tbl),
> > +	},
> > +	.clk_list		= sc8280xp_pciephy_clk_l,
> > +	.num_clks		= ARRAY_SIZE(sc8280xp_pciephy_clk_l),
> > +	.reset_list		= sdm845_pciephy_reset_l,
> > +	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
> > +	.vreg_list		= qmp_phy_vreg_l,
> > +	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
> > +	.regs			= pciephy_v5_regs_layout,
> > +
> > +	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
> > +	.phy_status		= PHYSTATUS,
> > +};
> > +

[...]

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
